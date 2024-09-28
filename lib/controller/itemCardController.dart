import 'package:get/get.dart';
import 'package:pos/models/itemModel.dart';

class ItemCardController extends GetxController{
ItemCardController({required this.item});
  Item item;



  expandContainer(isExpanded){
    isExpanded = !isExpanded;
    update();
  }
  List<Attributes> attributeList = [];
  List<AtrChilds> atrChildList = [];

getItemAttributeChilds(){
  for(var attribute in item.attributes??[]){
    atrChildList = attribute.atrChilds??[];
    update();
  }
  return atrChildList;
}

@override
  void onInit() {
    // TODO: implement onInit
  getItemAttributeChilds()
;    super.onInit();
  
  }

}