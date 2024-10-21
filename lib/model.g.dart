// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Welcome _$WelcomeFromJson(Map<String, dynamic> json) => Welcome(
      expand: json['expand'] as String?,
      startAt: (json['startAt'] as num?)?.toInt(),
      maxResults: (json['maxResults'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      issues: (json['issues'] as List<dynamic>?)
          ?.map((e) => Issue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WelcomeToJson(Welcome instance) => <String, dynamic>{
      'expand': instance.expand,
      'startAt': instance.startAt,
      'maxResults': instance.maxResults,
      'total': instance.total,
      'issues': instance.issues,
    };

Issue _$IssueFromJson(Map<String, dynamic> json) => Issue(
      expand: json['expand'] as String?,
      id: json['id'] as String?,
      self: json['self'] as String?,
      key: json['key'] as String?,
      fields: Fields.fromJson(json['fields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IssueToJson(Issue instance) => <String, dynamic>{
      'expand': instance.expand,
      'id': instance.id,
      'self': instance.self,
      'key': instance.key,
      'fields': instance.fields,
    };

Fields _$FieldsFromJson(Map<String, dynamic> json) => Fields(
      summary: json['summary'] as String?,
      created: json['created'] as String?,
      duedate: json['duedate'] == null
          ? null
          : DateTime.parse(json['duedate'] as String),
      comment: FieldsComment.fromJson(json['comment'] as Map<String, dynamic>),
      assignee: json['assignee'] == null
          ? null
          : Assignee.fromJson(json['assignee'] as Map<String, dynamic>),
      worklog: FieldsWorklog.fromJson(json['worklog'] as Map<String, dynamic>),
      priority: json['priority'] == null
          ? null
          : Priority.fromJson(json['priority'] as Map<String, dynamic>),
      updated: json['updated'] as String?,
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      timetracking:
          Timetracking.fromJson(json['timetracking'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FieldsToJson(Fields instance) => <String, dynamic>{
      'summary': instance.summary,
      'created': instance.created,
      'duedate': instance.duedate?.toIso8601String(),
      'comment': instance.comment,
      'assignee': instance.assignee,
      'worklog': instance.worklog,
      'priority': instance.priority,
      'updated': instance.updated,
      'status': instance.status,
      'timetracking': instance.timetracking,
    };

Assignee _$AssigneeFromJson(Map<String, dynamic> json) => Assignee(
      self: json['self'] as String?,
      accountId: json['accountId'] as String?,
      avatarUrls: json['avatarUrls'] == null
          ? null
          : AvatarUrls.fromJson(json['avatarUrls'] as Map<String, dynamic>),
      displayName: json['displayName'] as String? ?? '',
      active: json['active'] as bool?,
      timeZone: json['timeZone'] as String?,
      accountType: json['accountType'] as String?,
      emailAddress: json['emailAddress'] as String?,
    );

Map<String, dynamic> _$AssigneeToJson(Assignee instance) => <String, dynamic>{
      'self': instance.self,
      'accountId': instance.accountId,
      'avatarUrls': instance.avatarUrls,
      'displayName': instance.displayName,
      'active': instance.active,
      'timeZone': instance.timeZone,
      'accountType': instance.accountType,
      'emailAddress': instance.emailAddress,
    };

AvatarUrls _$AvatarUrlsFromJson(Map<String, dynamic> json) => AvatarUrls(
      the48X48: json['48x48'] as String?,
      the24X24: json['24x24'] as String?,
      the16X16: json['16x16'] as String?,
      the32X32: json['32x32'] as String?,
    );

Map<String, dynamic> _$AvatarUrlsToJson(AvatarUrls instance) =>
    <String, dynamic>{
      '48x48': instance.the48X48,
      '24x24': instance.the24X24,
      '16x16': instance.the16X16,
      '32x32': instance.the32X32,
    };

FieldsComment _$FieldsCommentFromJson(Map<String, dynamic> json) =>
    FieldsComment(
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => CommentElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      self: json['self'] as String?,
      maxResults: (json['maxResults'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      startAt: (json['startAt'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FieldsCommentToJson(FieldsComment instance) =>
    <String, dynamic>{
      'comments': instance.comments,
      'self': instance.self,
      'maxResults': instance.maxResults,
      'total': instance.total,
      'startAt': instance.startAt,
    };

CommentElement _$CommentElementFromJson(Map<String, dynamic> json) =>
    CommentElement(
      self: json['self'] as String?,
      id: json['id'] as String?,
      author: Assignee.fromJson(json['author'] as Map<String, dynamic>),
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
      updateAuthor: json['updateAuthor'] == null
          ? null
          : Assignee.fromJson(json['updateAuthor'] as Map<String, dynamic>),
      created: json['created'] as String?,
      updated: json['updated'] as String? ?? '',
      jsdPublic: json['jsdPublic'] as bool?,
    );

Map<String, dynamic> _$CommentElementToJson(CommentElement instance) =>
    <String, dynamic>{
      'self': instance.self,
      'id': instance.id,
      'author': instance.author,
      'body': instance.body,
      'updateAuthor': instance.updateAuthor,
      'created': instance.created,
      'updated': instance.updated,
      'jsdPublic': instance.jsdPublic,
    };

Body _$BodyFromJson(Map<String, dynamic> json) => Body(
      type: json['type'] as String?,
      version: (json['version'] as num?)?.toInt(),
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => BodyContent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BodyToJson(Body instance) => <String, dynamic>{
      'type': instance.type,
      'version': instance.version,
      'content': instance.content,
    };

BodyContent _$BodyContentFromJson(Map<String, dynamic> json) => BodyContent(
      type: json['type'] as String?,
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => PurpleContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      attrs: json['attrs'] == null
          ? null
          : PurpleAttrs.fromJson(json['attrs'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BodyContentToJson(BodyContent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'content': instance.content,
      'attrs': instance.attrs,
    };

PurpleAttrs _$PurpleAttrsFromJson(Map<String, dynamic> json) => PurpleAttrs(
      layout: json['layout'] as String?,
      order: (json['order'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toDouble(),
      isNumberColumnEnabled: json['isNumberColumnEnabled'] as bool?,
      localId: json['localId'] as String?,
      level: (json['level'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PurpleAttrsToJson(PurpleAttrs instance) =>
    <String, dynamic>{
      'layout': instance.layout,
      'order': instance.order,
      'width': instance.width,
      'isNumberColumnEnabled': instance.isNumberColumnEnabled,
      'localId': instance.localId,
      'level': instance.level,
    };

PurpleContent _$PurpleContentFromJson(Map<String, dynamic> json) =>
    PurpleContent(
      type: json['type'] as String?,
      attrs: json['attrs'] == null
          ? null
          : FluffyAttrs.fromJson(json['attrs'] as Map<String, dynamic>),
      text: json['text'] as String?,
      marks: (json['marks'] as List<dynamic>?)
          ?.map((e) => FluffyMark.fromJson(e as Map<String, dynamic>))
          .toList(),
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => FluffyContent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PurpleContentToJson(PurpleContent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'attrs': instance.attrs,
      'text': instance.text,
      'marks': instance.marks,
      'content': instance.content,
    };

FluffyAttrs _$FluffyAttrsFromJson(Map<String, dynamic> json) => FluffyAttrs(
      id: json['id'] as String?,
      text: json['text'] as String?,
      accessLevel: json['accessLevel'] as String?,
      localId: json['localId'] as String?,
      type: json['type'] as String?,
      alt: json['alt'] as String?,
      collection: json['collection'] as String?,
      height: (json['height'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
      url: json['url'] as String?,
      shortName: json['shortName'] as String?,
      order: (json['order'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FluffyAttrsToJson(FluffyAttrs instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'accessLevel': instance.accessLevel,
      'localId': instance.localId,
      'type': instance.type,
      'alt': instance.alt,
      'collection': instance.collection,
      'height': instance.height,
      'width': instance.width,
      'url': instance.url,
      'shortName': instance.shortName,
      'order': instance.order,
    };

FluffyContent _$FluffyContentFromJson(Map<String, dynamic> json) =>
    FluffyContent(
      type: json['type'] as String?,
      text: json['text'] as String?,
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => TentacledContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      attrs: json['attrs'] == null
          ? null
          : TentacledAttrs.fromJson(json['attrs'] as Map<String, dynamic>),
      marks: (json['marks'] as List<dynamic>?)
          ?.map((e) => PurpleMark.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FluffyContentToJson(FluffyContent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'content': instance.content,
      'attrs': instance.attrs,
      'marks': instance.marks,
    };

TentacledAttrs _$TentacledAttrsFromJson(Map<String, dynamic> json) =>
    TentacledAttrs(
      colwidth: (json['colwidth'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      colspan: (json['colspan'] as num?)?.toInt(),
      layout: json['layout'] as String?,
      order: (json['order'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TentacledAttrsToJson(TentacledAttrs instance) =>
    <String, dynamic>{
      'colwidth': instance.colwidth,
      'colspan': instance.colspan,
      'layout': instance.layout,
      'order': instance.order,
    };

TentacledContent _$TentacledContentFromJson(Map<String, dynamic> json) =>
    TentacledContent(
      type: json['type'] as String?,
      text: json['text'] as String?,
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => StickyContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      attrs: json['attrs'] == null
          ? null
          : StickyAttrs.fromJson(json['attrs'] as Map<String, dynamic>),
      marks: (json['marks'] as List<dynamic>?)
          ?.map((e) => FluffyMark.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TentacledContentToJson(TentacledContent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'content': instance.content,
      'attrs': instance.attrs,
      'marks': instance.marks,
    };

StickyAttrs _$StickyAttrsFromJson(Map<String, dynamic> json) => StickyAttrs(
      layout: json['layout'] as String?,
      url: json['url'] as String?,
      type: json['type'] as String?,
      id: json['id'] as String?,
      alt: json['alt'] as String?,
      collection: json['collection'] as String?,
      height: (json['height'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
      order: (json['order'] as num?)?.toInt(),
    );

Map<String, dynamic> _$StickyAttrsToJson(StickyAttrs instance) =>
    <String, dynamic>{
      'layout': instance.layout,
      'url': instance.url,
      'type': instance.type,
      'id': instance.id,
      'alt': instance.alt,
      'collection': instance.collection,
      'height': instance.height,
      'width': instance.width,
      'order': instance.order,
    };

StickyContent _$StickyContentFromJson(Map<String, dynamic> json) =>
    StickyContent(
      type: json['type'] as String?,
      text: json['text'] as String?,
      attrs: json['attrs'] == null
          ? null
          : StickyAttrs.fromJson(json['attrs'] as Map<String, dynamic>),
      marks: (json['marks'] as List<dynamic>?)
          ?.map((e) => PurpleMark.fromJson(e as Map<String, dynamic>))
          .toList(),
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => IndigoContent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StickyContentToJson(StickyContent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'attrs': instance.attrs,
      'marks': instance.marks,
      'content': instance.content,
    };

IndigoContent _$IndigoContentFromJson(Map<String, dynamic> json) =>
    IndigoContent(
      type: json['type'] as String?,
      text: json['text'] as String?,
      marks: (json['marks'] as List<dynamic>?)
          ?.map((e) => PurpleMark.fromJson(e as Map<String, dynamic>))
          .toList(),
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => IndecentContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      attrs: json['attrs'] == null
          ? null
          : IndigoAttrs.fromJson(json['attrs'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IndigoContentToJson(IndigoContent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'marks': instance.marks,
      'content': instance.content,
      'attrs': instance.attrs,
    };

IndigoAttrs _$IndigoAttrsFromJson(Map<String, dynamic> json) => IndigoAttrs(
      url: json['url'] as String?,
    );

Map<String, dynamic> _$IndigoAttrsToJson(IndigoAttrs instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

IndecentContent _$IndecentContentFromJson(Map<String, dynamic> json) =>
    IndecentContent(
      type: json['type'] as String?,
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => HilariousContent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IndecentContentToJson(IndecentContent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'content': instance.content,
    };

HilariousContent _$HilariousContentFromJson(Map<String, dynamic> json) =>
    HilariousContent(
      type: json['type'] as String?,
      text: json['text'] as String?,
      marks: (json['marks'] as List<dynamic>?)
          ?.map((e) => PurpleMark.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HilariousContentToJson(HilariousContent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'marks': instance.marks,
    };

PurpleMark _$PurpleMarkFromJson(Map<String, dynamic> json) => PurpleMark(
      type: json['type'] as String?,
    );

Map<String, dynamic> _$PurpleMarkToJson(PurpleMark instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

FluffyMark _$FluffyMarkFromJson(Map<String, dynamic> json) => FluffyMark(
      type: json['type'] as String?,
      attrs: json['attrs'] == null
          ? null
          : MarkAttrs.fromJson(json['attrs'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FluffyMarkToJson(FluffyMark instance) =>
    <String, dynamic>{
      'type': instance.type,
      'attrs': instance.attrs,
    };

MarkAttrs _$MarkAttrsFromJson(Map<String, dynamic> json) => MarkAttrs(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$MarkAttrsToJson(MarkAttrs instance) => <String, dynamic>{
      'href': instance.href,
    };

Priority _$PriorityFromJson(Map<String, dynamic> json) => Priority(
      self: json['self'] as String?,
      iconUrl: json['iconUrl'] as String?,
      name: json['name'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$PriorityToJson(Priority instance) => <String, dynamic>{
      'self': instance.self,
      'iconUrl': instance.iconUrl,
      'name': instance.name,
      'id': instance.id,
    };

Status _$StatusFromJson(Map<String, dynamic> json) => Status(
      self: json['self'] as String?,
      description: json['description'] as String?,
      iconUrl: json['iconUrl'] as String?,
      name: json['name'] as String?,
      id: json['id'] as String?,
      statusCategory: json['statusCategory'] == null
          ? null
          : StatusCategory.fromJson(
              json['statusCategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'self': instance.self,
      'description': instance.description,
      'iconUrl': instance.iconUrl,
      'name': instance.name,
      'id': instance.id,
      'statusCategory': instance.statusCategory,
    };

StatusCategory _$StatusCategoryFromJson(Map<String, dynamic> json) =>
    StatusCategory(
      self: json['self'] as String?,
      id: (json['id'] as num?)?.toInt(),
      key: json['key'] as String?,
      colorName: json['colorName'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$StatusCategoryToJson(StatusCategory instance) =>
    <String, dynamic>{
      'self': instance.self,
      'id': instance.id,
      'key': instance.key,
      'colorName': instance.colorName,
      'name': instance.name,
    };

Timetracking _$TimetrackingFromJson(Map<String, dynamic> json) => Timetracking(
      originalEstimate: json['originalEstimate'] as String?,
      remainingEstimate: json['remainingEstimate'] as String?,
      timeSpent: json['timeSpent'] as String?,
      originalEstimateSeconds:
          (json['originalEstimateSeconds'] as num?)?.toInt(),
      remainingEstimateSeconds:
          (json['remainingEstimateSeconds'] as num?)?.toInt(),
      timeSpentSeconds: (json['timeSpentSeconds'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$TimetrackingToJson(Timetracking instance) =>
    <String, dynamic>{
      'originalEstimate': instance.originalEstimate,
      'remainingEstimate': instance.remainingEstimate,
      'timeSpent': instance.timeSpent,
      'originalEstimateSeconds': instance.originalEstimateSeconds,
      'remainingEstimateSeconds': instance.remainingEstimateSeconds,
      'timeSpentSeconds': instance.timeSpentSeconds,
    };

FieldsWorklog _$FieldsWorklogFromJson(Map<String, dynamic> json) =>
    FieldsWorklog(
      startAt: (json['startAt'] as num?)?.toInt(),
      maxResults: (json['maxResults'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      worklogs: (json['worklogs'] as List<dynamic>?)
              ?.map((e) => WorklogElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FieldsWorklogToJson(FieldsWorklog instance) =>
    <String, dynamic>{
      'startAt': instance.startAt,
      'maxResults': instance.maxResults,
      'total': instance.total,
      'worklogs': instance.worklogs,
    };

WorklogElement _$WorklogElementFromJson(Map<String, dynamic> json) =>
    WorklogElement(
      self: json['self'] as String?,
      author: Assignee.fromJson(json['author'] as Map<String, dynamic>),
      updateAuthor: json['updateAuthor'] == null
          ? null
          : Assignee.fromJson(json['updateAuthor'] as Map<String, dynamic>),
      comment: json['comment'] == null
          ? null
          : WorklogComment.fromJson(json['comment'] as Map<String, dynamic>),
      created: json['created'] as String?,
      updated: json['updated'] as String? ?? '',
      started: json['started'] as String?,
      timeSpent: json['timeSpent'] as String?,
      timeSpentSeconds: (json['timeSpentSeconds'] as num?)?.toInt(),
      id: json['id'] as String?,
      issueId: json['issueId'] as String?,
    );

Map<String, dynamic> _$WorklogElementToJson(WorklogElement instance) =>
    <String, dynamic>{
      'self': instance.self,
      'author': instance.author,
      'updateAuthor': instance.updateAuthor,
      'comment': instance.comment,
      'created': instance.created,
      'updated': instance.updated,
      'started': instance.started,
      'timeSpent': instance.timeSpent,
      'timeSpentSeconds': instance.timeSpentSeconds,
      'id': instance.id,
      'issueId': instance.issueId,
    };

WorklogComment _$WorklogCommentFromJson(Map<String, dynamic> json) =>
    WorklogComment(
      type: json['type'] as String?,
      version: (json['version'] as num?)?.toInt(),
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => CommentContent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WorklogCommentToJson(WorklogComment instance) =>
    <String, dynamic>{
      'type': instance.type,
      'version': instance.version,
      'content': instance.content,
    };

CommentContent _$CommentContentFromJson(Map<String, dynamic> json) =>
    CommentContent(
      type: json['type'] as String?,
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => AmbitiousContent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CommentContentToJson(CommentContent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'content': instance.content,
    };

AmbitiousContent _$AmbitiousContentFromJson(Map<String, dynamic> json) =>
    AmbitiousContent(
      type: json['type'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$AmbitiousContentToJson(AmbitiousContent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
    };
