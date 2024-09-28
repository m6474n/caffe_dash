class Item {
  String? itemName;
  String? image;
  String? description;
  double? price;
  List<Attributes>? attributes;

  Item({this.itemName, this.description, this.price, this.attributes});

  Item.fromJson(Map<String, dynamic> json) {
    itemName = json['item_name'];
    image = json['image'];
    description = json['description'];
    price = json['price'];
    if (json['attributes'] != null) {
      attributes = <Attributes>[];
      json['attributes'].forEach((v) {
        attributes!.add(new Attributes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['item_name'] = this.itemName;
    data['image'] = this.image;
    data['description'] = this.description;
    data['price'] = this.price;
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Attributes {
  String? atrName;
  String? atrType;
  List<AtrChilds>? atrChilds;

  Attributes({this.atrName,this.atrType, this.atrChilds});

  Attributes.fromJson(Map<String, dynamic> json) {
    atrName = json['atr_name'];
    atrType = json['atr_type'];
    if (json['atr_childs'] != null) {
      atrChilds = <AtrChilds>[];
      json['atr_childs'].forEach((v) {
        atrChilds!.add(new AtrChilds.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['atr_name'] = this.atrName;
    data['atr_type'] = this.atrType;
    if (this.atrChilds != null) {
      data['atr_childs'] = this.atrChilds!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AtrChilds {
  String? childName;
  String? value;
  bool? isSelected;

  AtrChilds({this.childName, this.value, this.isSelected});

  AtrChilds.fromJson(Map<String, dynamic> json) {
    childName = json['child_name'];
    value = json['value'];
    isSelected = json['isSelected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['child_name'] = this.childName;
    data['value'] = this.value;
    data['isSelected'] = this.isSelected;
    return data;
  }
}