import 'package:get/get.dart';

class SportsListController extends GetxController{
  var selectedList = List<String>.empty(growable: true).obs;

 // get selectedList() => null;
  //var selectedList = List<String>.empty(growable: true).obs;
   getSelectedList() => selectedList;
   setSelectedList(List<String> list) => selectedList.value = list;
}