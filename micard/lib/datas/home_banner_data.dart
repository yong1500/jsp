class BannerItemData {
  String? desc;
  num? id;
  String? imagePath;
  num? isVisible;
  num? order;
  String? title;
  num? type;
  String? url;

  BannerItemData({
    this.desc,
    this.id,
    this.imagePath,
    this.isVisible,
    this.order,
    this.title,
    this.type,
    this.url,
  });

  BannerItemData copyWith({
    String? desc,
    num? id,
    String? imagePath,
    num? isVisible,
    num? order,
    String? title,
    num? type,
    String? url,
  }) => BannerItemData(
    desc: desc ?? this.desc,
    id: id ?? this.id,
    imagePath: imagePath ?? this.imagePath,
    isVisible: isVisible ?? this.isVisible,
    order: order ?? this.order,
    title: title ?? this.title,
    type: type ?? this.type,
    url: url ?? this.url,
  );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map["desc"] = desc;
    map["id"] = id;
    map["imagePath"] = imagePath;
    map["isVisible"] = isVisible;
    map["order"] = order;
    map["title"] = title;
    map["type"] = type;
    map["url"] = url;
    return map;
  }

  BannerItemData.fromJson(dynamic json) {
    desc = json["desc"];
    id = json["id"];
    imagePath = json["imagePath"];
    isVisible = json["isVisible"];
    order = json["order"];
    title = json["title"];
    type = json["type"];
    url = json["url"];
  }
}

class HomeBannerData {
  List<BannerItemData>? dataList;
  num? errorCode;
  String? errorMsg;

  HomeBannerData({this.dataList, this.errorCode, this.errorMsg});

  HomeBannerData copyWith({
    List<BannerItemData>? dataList,
    num? errorCode,
    String? errorMsg,
  }) => HomeBannerData(
    dataList: dataList ?? this.dataList,
    errorCode: errorCode ?? this.errorCode,
    errorMsg: errorMsg ?? this.errorMsg,
  );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (dataList != null) {
      map["data"] = dataList?.map((v) => v.toJson()).toList();
    }
    map["errorCode"] = errorCode;
    map["errorMsg"] = errorMsg;
    return map;
  }

  HomeBannerData.fromJson(dynamic json) {
    if (json["data"] != null) {
      dataList = [];
      json["data"].forEach((v) {
        dataList?.add(BannerItemData.fromJson(v));
      });
    }
    errorCode = json["errorCode"];
    errorMsg = json["errorMsg"];
  }
}
