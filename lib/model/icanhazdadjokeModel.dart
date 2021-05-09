class IcanhazdadjokeModel {
  IcanhazdadjokeModel({
    this.attachments,
    this.responseType,
    this.username,
  });

  List<Attachment> attachments;
  String responseType;
  String username;

  factory IcanhazdadjokeModel.fromJson(json) => IcanhazdadjokeModel(
    attachments: List<Attachment>.from(json["attachments"].map((x) => Attachment.fromJson(x))),
    responseType: json["response_type"],
    username: json["username"],
  );

  Map<String, dynamic> toJson() => {
    "attachments": List<dynamic>.from(attachments.map((x) => x.toJson())),
    "response_type": responseType,
    "username": username,
  };
}

class Attachment {
  Attachment({
    this.fallback,
    this.footer,
    this.text,
  });

  String fallback;
  String footer;
  String text;

  factory Attachment.fromJson(Map<String, dynamic> json) => Attachment(
    fallback: json["fallback"],
    footer: json["footer"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "fallback": fallback,
    "footer": footer,
    "text": text,
  };
}
