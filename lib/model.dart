import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class Welcome {
  @JsonKey(name: "expand")
  final String? expand;
  @JsonKey(name: "startAt")
  final int? startAt;
  @JsonKey(name: "maxResults")
  final int? maxResults;
  @JsonKey(name: "total")
  final int? total;
  @JsonKey(name: "issues")
  final List<Issue>? issues;

  Welcome({
    this.expand,
    this.startAt,
    this.maxResults,
    this.total,
    this.issues,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) =>
      _$WelcomeFromJson(json);

  Map<String, dynamic> toJson() => _$WelcomeToJson(this);
}

@JsonSerializable()
class Issue {
  @JsonKey(name: "expand")
  final String? expand;
  @JsonKey(name: "id")
  final String? id;
  @JsonKey(name: "self")
  final String? self;
  @JsonKey(name: "key")
  final String? key;
  @JsonKey(name: "fields")
  final Fields fields;

  Issue({
    this.expand,
    this.id,
    this.self,
    this.key,
    required this.fields,
  });

  factory Issue.fromJson(Map<String, dynamic> json) => _$IssueFromJson(json);

  Map<String, dynamic> toJson() => _$IssueToJson(this);
}

@JsonSerializable()
class Fields {
  @JsonKey(name: "summary")
  final String? summary;
  @JsonKey(name: "created")
  final String? created;
  @JsonKey(name: "duedate")
  final DateTime? duedate;
  @JsonKey(name: "comment")
  final FieldsComment comment;
  @JsonKey(name: "assignee")
  final Assignee? assignee;
  @JsonKey(name: "worklog")
  final FieldsWorklog worklog;
  @JsonKey(name: "priority")
  final Priority? priority;
  @JsonKey(name: "updated")
  final String? updated;
  @JsonKey(name: "status")
  final Status? status;
  @JsonKey(name: "timetracking")
  final Timetracking timetracking;

  Fields({
    this.summary,
    this.created,
    this.duedate,
    required this.comment,
    this.assignee,
    required this.worklog,
    this.priority,
    this.updated,
    this.status,
    required this.timetracking,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => _$FieldsFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsToJson(this);
}

@JsonSerializable()
class Assignee {
  @JsonKey(name: "self")
  final String? self;
  @JsonKey(name: "accountId")
  final String? accountId;
  @JsonKey(name: "avatarUrls")
  final AvatarUrls? avatarUrls;
  @JsonKey(name: "displayName")
  final String displayName;
  @JsonKey(name: "active")
  final bool? active;
  @JsonKey(name: "timeZone")
  final String? timeZone;
  @JsonKey(name: "accountType")
  final String? accountType;
  @JsonKey(name: "emailAddress")
  final String? emailAddress;

  Assignee({
    this.self,
    this.accountId,
    this.avatarUrls,
    this.displayName = '',
    this.active,
    this.timeZone,
    this.accountType,
    this.emailAddress,
  });

  factory Assignee.fromJson(Map<String, dynamic> json) =>
      _$AssigneeFromJson(json);

  Map<String, dynamic> toJson() => _$AssigneeToJson(this);
}

@JsonSerializable()
class AvatarUrls {
  @JsonKey(name: "48x48")
  final String? the48X48;
  @JsonKey(name: "24x24")
  final String? the24X24;
  @JsonKey(name: "16x16")
  final String? the16X16;
  @JsonKey(name: "32x32")
  final String? the32X32;

  AvatarUrls({
    this.the48X48,
    this.the24X24,
    this.the16X16,
    this.the32X32,
  });

  factory AvatarUrls.fromJson(Map<String, dynamic> json) =>
      _$AvatarUrlsFromJson(json);

  Map<String, dynamic> toJson() => _$AvatarUrlsToJson(this);
}

@JsonSerializable()
class FieldsComment {
  @JsonKey(name: "comments")
  final List<CommentElement> comments;
  @JsonKey(name: "self")
  final String? self;
  @JsonKey(name: "maxResults")
  final int? maxResults;
  @JsonKey(name: "total")
  final int? total;
  @JsonKey(name: "startAt")
  final int? startAt;

  FieldsComment({
    this.comments = const [],
    this.self,
    this.maxResults,
    this.total,
    this.startAt,
  });

  factory FieldsComment.fromJson(Map<String, dynamic> json) =>
      _$FieldsCommentFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsCommentToJson(this);
}

@JsonSerializable()
class CommentElement {
  @JsonKey(name: "self")
  final String? self;
  @JsonKey(name: "id")
  final String? id;
  @JsonKey(name: "author")
  final Assignee author;
  @JsonKey(name: "body")
  final Body? body;
  @JsonKey(name: "updateAuthor")
  final Assignee? updateAuthor;
  @JsonKey(name: "created")
  final String? created;
  @JsonKey(name: "updated")
  final String updated;
  @JsonKey(name: "jsdPublic")
  final bool? jsdPublic;

  CommentElement({
    this.self,
    this.id,
    required this.author,
    this.body,
    this.updateAuthor,
    this.created,
    this.updated = '',
    this.jsdPublic,
  });

  factory CommentElement.fromJson(Map<String, dynamic> json) =>
      _$CommentElementFromJson(json);

  Map<String, dynamic> toJson() => _$CommentElementToJson(this);
}

@JsonSerializable()
class Body {
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "version")
  final int? version;
  @JsonKey(name: "content")
  final List<BodyContent>? content;

  Body({
    this.type,
    this.version,
    this.content,
  });

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);

  Map<String, dynamic> toJson() => _$BodyToJson(this);
}

@JsonSerializable()
class BodyContent {
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "content")
  final List<PurpleContent>? content;
  @JsonKey(name: "attrs")
  final PurpleAttrs? attrs;

  BodyContent({
    this.type,
    this.content,
    this.attrs,
  });

  factory BodyContent.fromJson(Map<String, dynamic> json) =>
      _$BodyContentFromJson(json);

  Map<String, dynamic> toJson() => _$BodyContentToJson(this);
}

@JsonSerializable()
class PurpleAttrs {
  @JsonKey(name: "layout")
  final String? layout;
  @JsonKey(name: "order")
  final int? order;
  @JsonKey(name: "width")
  final double? width;
  @JsonKey(name: "isNumberColumnEnabled")
  final bool? isNumberColumnEnabled;
  @JsonKey(name: "localId")
  final String? localId;
  @JsonKey(name: "level")
  final int? level;

  PurpleAttrs({
    this.layout,
    this.order,
    this.width,
    this.isNumberColumnEnabled,
    this.localId,
    this.level,
  });

  factory PurpleAttrs.fromJson(Map<String, dynamic> json) =>
      _$PurpleAttrsFromJson(json);

  Map<String, dynamic> toJson() => _$PurpleAttrsToJson(this);
}

@JsonSerializable()
class PurpleContent {
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "attrs")
  final FluffyAttrs? attrs;
  @JsonKey(name: "text")
  final String? text;
  @JsonKey(name: "marks")
  final List<FluffyMark>? marks;
  @JsonKey(name: "content")
  final List<FluffyContent>? content;

  PurpleContent({
    this.type,
    this.attrs,
    this.text,
    this.marks,
    this.content,
  });

  factory PurpleContent.fromJson(Map<String, dynamic> json) =>
      _$PurpleContentFromJson(json);

  Map<String, dynamic> toJson() => _$PurpleContentToJson(this);
}

@JsonSerializable()
class FluffyAttrs {
  @JsonKey(name: "id")
  final String? id;
  @JsonKey(name: "text")
  final String? text;
  @JsonKey(name: "accessLevel")
  final String? accessLevel;
  @JsonKey(name: "localId")
  final String? localId;
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "alt")
  final String? alt;
  @JsonKey(name: "collection")
  final String? collection;
  @JsonKey(name: "height")
  final int? height;
  @JsonKey(name: "width")
  final int? width;
  @JsonKey(name: "url")
  final String? url;
  @JsonKey(name: "shortName")
  final String? shortName;
  @JsonKey(name: "order")
  final int? order;

  FluffyAttrs({
    this.id,
    this.text,
    this.accessLevel,
    this.localId,
    this.type,
    this.alt,
    this.collection,
    this.height,
    this.width,
    this.url,
    this.shortName,
    this.order,
  });

  factory FluffyAttrs.fromJson(Map<String, dynamic> json) =>
      _$FluffyAttrsFromJson(json);

  Map<String, dynamic> toJson() => _$FluffyAttrsToJson(this);
}

@JsonSerializable()
class FluffyContent {
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "text")
  final String? text;
  @JsonKey(name: "content")
  final List<TentacledContent>? content;
  @JsonKey(name: "attrs")
  final TentacledAttrs? attrs;
  @JsonKey(name: "marks")
  final List<PurpleMark>? marks;

  FluffyContent({
    this.type,
    this.text,
    this.content,
    this.attrs,
    this.marks,
  });

  factory FluffyContent.fromJson(Map<String, dynamic> json) =>
      _$FluffyContentFromJson(json);

  Map<String, dynamic> toJson() => _$FluffyContentToJson(this);
}

@JsonSerializable()
class TentacledAttrs {
  @JsonKey(name: "colwidth")
  final List<int>? colwidth;
  @JsonKey(name: "colspan")
  final int? colspan;
  @JsonKey(name: "layout")
  final String? layout;
  @JsonKey(name: "order")
  final int? order;

  TentacledAttrs({
    this.colwidth,
    this.colspan,
    this.layout,
    this.order,
  });

  factory TentacledAttrs.fromJson(Map<String, dynamic> json) =>
      _$TentacledAttrsFromJson(json);

  Map<String, dynamic> toJson() => _$TentacledAttrsToJson(this);
}

@JsonSerializable()
class TentacledContent {
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "text")
  final String? text;
  @JsonKey(name: "content")
  final List<StickyContent>? content;
  @JsonKey(name: "attrs")
  final StickyAttrs? attrs;
  @JsonKey(name: "marks")
  final List<FluffyMark>? marks;

  TentacledContent({
    this.type,
    this.text,
    this.content,
    this.attrs,
    this.marks,
  });

  factory TentacledContent.fromJson(Map<String, dynamic> json) =>
      _$TentacledContentFromJson(json);

  Map<String, dynamic> toJson() => _$TentacledContentToJson(this);
}

@JsonSerializable()
class StickyAttrs {
  @JsonKey(name: "layout")
  final String? layout;
  @JsonKey(name: "url")
  final String? url;
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "id")
  final String? id;
  @JsonKey(name: "alt")
  final String? alt;
  @JsonKey(name: "collection")
  final String? collection;
  @JsonKey(name: "height")
  final int? height;
  @JsonKey(name: "width")
  final int? width;
  @JsonKey(name: "order")
  final int? order;

  StickyAttrs({
    this.layout,
    this.url,
    this.type,
    this.id,
    this.alt,
    this.collection,
    this.height,
    this.width,
    this.order,
  });

  factory StickyAttrs.fromJson(Map<String, dynamic> json) =>
      _$StickyAttrsFromJson(json);

  Map<String, dynamic> toJson() => _$StickyAttrsToJson(this);
}

@JsonSerializable()
class StickyContent {
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "text")
  final String? text;
  @JsonKey(name: "attrs")
  final StickyAttrs? attrs;
  @JsonKey(name: "marks")
  final List<PurpleMark>? marks;
  @JsonKey(name: "content")
  final List<IndigoContent>? content;

  StickyContent({
    this.type,
    this.text,
    this.attrs,
    this.marks,
    this.content,
  });

  factory StickyContent.fromJson(Map<String, dynamic> json) =>
      _$StickyContentFromJson(json);

  Map<String, dynamic> toJson() => _$StickyContentToJson(this);
}

@JsonSerializable()
class IndigoContent {
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "text")
  final String? text;
  @JsonKey(name: "marks")
  final List<PurpleMark>? marks;
  @JsonKey(name: "content")
  final List<IndecentContent>? content;
  @JsonKey(name: "attrs")
  final IndigoAttrs? attrs;

  IndigoContent({
    this.type,
    this.text,
    this.marks,
    this.content,
    this.attrs,
  });

  factory IndigoContent.fromJson(Map<String, dynamic> json) =>
      _$IndigoContentFromJson(json);

  Map<String, dynamic> toJson() => _$IndigoContentToJson(this);
}

@JsonSerializable()
class IndigoAttrs {
  @JsonKey(name: "url")
  final String? url;

  IndigoAttrs({
    this.url,
  });

  factory IndigoAttrs.fromJson(Map<String, dynamic> json) =>
      _$IndigoAttrsFromJson(json);

  Map<String, dynamic> toJson() => _$IndigoAttrsToJson(this);
}

@JsonSerializable()
class IndecentContent {
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "content")
  final List<HilariousContent>? content;

  IndecentContent({
    this.type,
    this.content,
  });

  factory IndecentContent.fromJson(Map<String, dynamic> json) =>
      _$IndecentContentFromJson(json);

  Map<String, dynamic> toJson() => _$IndecentContentToJson(this);
}

@JsonSerializable()
class HilariousContent {
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "text")
  final String? text;
  @JsonKey(name: "marks")
  final List<PurpleMark>? marks;

  HilariousContent({
    this.type,
    this.text,
    this.marks,
  });

  factory HilariousContent.fromJson(Map<String, dynamic> json) =>
      _$HilariousContentFromJson(json);

  Map<String, dynamic> toJson() => _$HilariousContentToJson(this);
}

@JsonSerializable()
class PurpleMark {
  @JsonKey(name: "type")
  final String? type;

  PurpleMark({
    this.type,
  });

  factory PurpleMark.fromJson(Map<String, dynamic> json) =>
      _$PurpleMarkFromJson(json);

  Map<String, dynamic> toJson() => _$PurpleMarkToJson(this);
}

@JsonSerializable()
class FluffyMark {
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "attrs")
  final MarkAttrs? attrs;

  FluffyMark({
    this.type,
    this.attrs,
  });

  factory FluffyMark.fromJson(Map<String, dynamic> json) =>
      _$FluffyMarkFromJson(json);

  Map<String, dynamic> toJson() => _$FluffyMarkToJson(this);
}

@JsonSerializable()
class MarkAttrs {
  @JsonKey(name: "href")
  final String? href;

  MarkAttrs({
    this.href,
  });

  factory MarkAttrs.fromJson(Map<String, dynamic> json) =>
      _$MarkAttrsFromJson(json);

  Map<String, dynamic> toJson() => _$MarkAttrsToJson(this);
}

@JsonSerializable()
class Priority {
  @JsonKey(name: "self")
  final String? self;
  @JsonKey(name: "iconUrl")
  final String? iconUrl;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "id")
  final String? id;

  Priority({
    this.self,
    this.iconUrl,
    this.name,
    this.id,
  });

  factory Priority.fromJson(Map<String, dynamic> json) =>
      _$PriorityFromJson(json);

  Map<String, dynamic> toJson() => _$PriorityToJson(this);
}

@JsonSerializable()
class Status {
  @JsonKey(name: "self")
  final String? self;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "iconUrl")
  final String? iconUrl;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "id")
  final String? id;
  @JsonKey(name: "statusCategory")
  final StatusCategory? statusCategory;

  Status({
    this.self,
    this.description,
    this.iconUrl,
    this.name,
    this.id,
    this.statusCategory,
  });

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  Map<String, dynamic> toJson() => _$StatusToJson(this);
}

@JsonSerializable()
class StatusCategory {
  @JsonKey(name: "self")
  final String? self;
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "key")
  final String? key;
  @JsonKey(name: "colorName")
  final String? colorName;
  @JsonKey(name: "name")
  final String? name;

  StatusCategory({
    this.self,
    this.id,
    this.key,
    this.colorName,
    this.name,
  });

  factory StatusCategory.fromJson(Map<String, dynamic> json) =>
      _$StatusCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$StatusCategoryToJson(this);
}

@JsonSerializable()
class Timetracking {
  @JsonKey(name: "originalEstimate")
  final String? originalEstimate;
  @JsonKey(name: "remainingEstimate")
  final String? remainingEstimate;
  @JsonKey(name: "timeSpent")
  final String? timeSpent;
  @JsonKey(name: "originalEstimateSeconds")
  final int? originalEstimateSeconds;
  @JsonKey(name: "remainingEstimateSeconds")
  final int? remainingEstimateSeconds;
  @JsonKey(name: "timeSpentSeconds")
  final int timeSpentSeconds;

  Timetracking({
    this.originalEstimate,
    this.remainingEstimate,
    this.timeSpent,
    this.originalEstimateSeconds,
    this.remainingEstimateSeconds,
    this.timeSpentSeconds = 0,
  });

  factory Timetracking.fromJson(Map<String, dynamic> json) =>
      _$TimetrackingFromJson(json);

  Map<String, dynamic> toJson() => _$TimetrackingToJson(this);
}

@JsonSerializable()
class FieldsWorklog {
  @JsonKey(name: "startAt")
  final int? startAt;
  @JsonKey(name: "maxResults")
  final int? maxResults;
  @JsonKey(name: "total")
  final int? total;
  @JsonKey(name: "worklogs")
  final List<WorklogElement> worklogs;

  FieldsWorklog({
    this.startAt,
    this.maxResults,
    this.total,
    this.worklogs = const [],
  });

  factory FieldsWorklog.fromJson(Map<String, dynamic> json) =>
      _$FieldsWorklogFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsWorklogToJson(this);
}

@JsonSerializable()
class WorklogElement {
  @JsonKey(name: "self")
  final String? self;
  @JsonKey(name: "author")
  final Assignee author;
  @JsonKey(name: "updateAuthor")
  final Assignee? updateAuthor;
  @JsonKey(name: "comment")
  final WorklogComment? comment;
  @JsonKey(name: "created")
  final String? created;
  @JsonKey(name: "updated")
  final String updated;
  @JsonKey(name: "started")
  final String? started;
  @JsonKey(name: "timeSpent")
  final String? timeSpent;
  @JsonKey(name: "timeSpentSeconds")
  final int? timeSpentSeconds;
  @JsonKey(name: "id")
  final String? id;
  @JsonKey(name: "issueId")
  final String? issueId;

  WorklogElement({
    this.self,
    required this.author,
    this.updateAuthor,
    this.comment,
    this.created,
    this.updated = '',
    this.started,
    this.timeSpent,
    this.timeSpentSeconds,
    this.id,
    this.issueId,
  });

  factory WorklogElement.fromJson(Map<String, dynamic> json) =>
      _$WorklogElementFromJson(json);

  Map<String, dynamic> toJson() => _$WorklogElementToJson(this);
}

@JsonSerializable()
class WorklogComment {
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "version")
  final int? version;
  @JsonKey(name: "content")
  final List<CommentContent>? content;

  WorklogComment({
    this.type,
    this.version,
    this.content,
  });

  factory WorklogComment.fromJson(Map<String, dynamic> json) =>
      _$WorklogCommentFromJson(json);

  Map<String, dynamic> toJson() => _$WorklogCommentToJson(this);
}

@JsonSerializable()
class CommentContent {
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "content")
  final List<AmbitiousContent>? content;

  CommentContent({
    this.type,
    this.content,
  });

  factory CommentContent.fromJson(Map<String, dynamic> json) =>
      _$CommentContentFromJson(json);

  Map<String, dynamic> toJson() => _$CommentContentToJson(this);
}

@JsonSerializable()
class AmbitiousContent {
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "text")
  final String? text;

  AmbitiousContent({
    this.type,
    this.text,
  });

  factory AmbitiousContent.fromJson(Map<String, dynamic> json) =>
      _$AmbitiousContentFromJson(json);

  Map<String, dynamic> toJson() => _$AmbitiousContentToJson(this);
}
