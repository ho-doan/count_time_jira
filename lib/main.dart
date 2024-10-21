import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'model.dart';

// TODO(hodoan): md link, https://kdelmonte.github.io/json-to-markdown-table/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // TODO(hodoan): insert key
  final key = '';
  Future<List<Issue>> search([int index = 0]) async {
    print('index: $index');
    final lst = <Issue>[];

    final dio = Dio()
      ..options.baseUrl = 'https://sugi-pharmacy.atlassian.net/rest/api/3';
    var response = await dio.get<Map<String, dynamic>>(
      '/search',
      queryParameters: {
        'fields':
            'timetracking,summary,status,updated,created,priority,duedate,issuekey,worklog,comment,assignee',
        'jql':
            '(開発者="Ho Doan (Ominext)" OR 開発者=NULL) AND updated >= "2024-10-01"', //"To Do",  and assignee != NULL and status not in ("To Do（Pending）")
        'startAt': index,
      },
      options: Options(
        headers: {
          'Authorization': 'Basic $key',
        },
      ),
    );

    if (response.statusCode == 200) {
      if (response.data != null) {
        final w = Welcome.fromJson(response.data!);
        lst.addAll(w.issues ?? []);
        if (index < (w.total ?? 0)) {
          print('index: $index ${w.total}');
          lst.addAll(await search(index + 50));
        }
      }
    } else {
      print(response.statusMessage);
    }
    return lst;
  }

  List<Issue> _lst = [];
  List<Issue> _lstSort = [];

  @override
  void initState() {
    search().then((v) => setState(() {
          _lst = v;
          _lstSort = v;
        }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            if (_lstSort.length > 2)
              Text('total = ${[
                    for (final item in _lstSort)
                      item.fields.timetracking.timeSpentSeconds
                  ].reduce((a, b) => a + b) / (60 * 60)}h'),
            ElevatedButton(
              onPressed: () {
                final map = [
                  for (final item in _lstSort)
                    {
                      'key': item.key,
                      'name': item.fields.summary,
                      'status': item.fields.status?.name,
                      'priority': item.fields.priority?.name,
                      'startdate': '',
                      'duedate': item.fields.duedate.toString(),
                      'timetracking': item.fields.timetracking.timeSpent,
                    }
                ];
                Clipboard.setData(ClipboardData(text: jsonEncode(map)))
                    .then((_) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Copy success!'),
                      // action: SnackBarAction(
                      //   label: 'Undo',
                      //   onPressed: () {
                      //     // Some code to undo the change.
                      //   },
                      // ),
                    ),
                  );
                });
              },
              child: const Text('copy'),
            ),
            for (final item in _lstSort)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.key ?? '--none--'),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                        '${item.fields.summary}\n${item.fields.status?.name}\n${item.fields.priority?.name}\n${item.fields.duedate}\n${item.fields.timetracking.timeSpent}'),
                  ),
                ],
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final lst = _lst
              .where(
                (e) => e.fields.comment.comments.any(
                  (f) =>
                      (f.updated.contains('2024-10') &&
                          f.author.displayName.contains('Ho Doan (Ominext)')) ||
                      (e.fields.worklog.worklogs.any((e) =>
                          e.updated.contains('2024-10') &&
                          e.author.displayName.contains('Ho Doan (Ominext)'))),
                ),
              )
              .toList();
          setState(() {
            _lstSort = lst;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
