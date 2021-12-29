import 'package:flutter/material.dart';
import 'package:filter_list/filter_list.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:the_social/screens/selected_list_controller.dart';
import 'package:the_social/screens/development_list_controller.dart';
import 'package:the_social/screens/sports_list_controller.dart';
import 'package:the_social/screens/hacking_list_contoller.dart';

List<String> defaultList = [
  "Java",
  "C++",
  "Python",
  "Kotlin",
  "Dart",
  "PHP",
  "C",
  "HTML",
  "C#",
  "Assembly languagues",
];
List<String> defaultList1 = [
  "Android(Java)",
  "Web",
  "Unity",
  "Flutter",
  "Android(kotlin)",
  "React",
  "Cross Platform",
  "AR",
  "VR",
  "ML",
  "IOT",
  "FULL stack",
  "Cloud",
  "Databases",
  "Graphic Design",
  "UI Design",
  "Animations",
];
List<String> defaultList2 = [
  "Football",
  "Basketball",
  "Table Tennis",
  "Cricket",
  " VolleyBall",
  "Badminton",
  "Chess",
  "Lawn Tennis",
];
List<String> defaultList3 = [
  "Linux",
  "Ubuntu",
  "Kali",
];

class FilterPage extends StatelessWidget {
  @override
 // Widget build(BuildContext context) {
    // TODO: implement build
   // throw UnimplementedError();
 // }
var controller = Get.put(SelectedListController());

  //static var Get;
  void openFilterDialog(context) async {
    await FilterListDialog.display<String>(context,
        listData: defaultList,
        selectedListData: controller.selectedList,
        headlineText: "Your Skill",
        closeIconColor: Colors.grey,
        applyButtonTextStyle: TextStyle(fontSize: 20),
        searchFieldHintText: 'Search here',
        choiceChipLabel: (item) => item,
        validateSelectedItem: (list, val) => list!.contains(val),
        onItemSearch: (list, text) {
          if (list!.any((element) =>
              element.toLowerCase().contains(text.toLowerCase()))) {
            return list
                .where((element) =>
                    element.toLowerCase().contains(text.toLowerCase()))
                .toList();
          } else {
            return [];
          }
        },
        // choiceChipLabel: choiceChipLabel,
        // validateSelectedItem: validateSelectedItem,
        // onItemSearch: onItemSearch,
        onApplyButtonClick: (list) {
          controller.selectedList.value = (List<String>.from(list!));
          Navigator.of(context).pop();
        });
  }

  //
  var controller1 = Get.put(DevelopmentListController());
  void openFilterDialog1(context) async {
    await FilterListDialog.display<String>(context,
        listData: defaultList1,
        selectedListData: controller1.selectedList,
        headlineText: "Your Skill",
        closeIconColor: Colors.grey,
        applyButtonTextStyle: TextStyle(fontSize: 20),
        searchFieldHintText: 'Search here',
        choiceChipLabel: (item) => item,
        validateSelectedItem: (list, val) => list!.contains(val),
        onItemSearch: (list, text) {
          if (list!.any((element) =>
              element.toLowerCase().contains(text.toLowerCase()))) {
            return list
                .where((element) =>
                    element.toLowerCase().contains(text.toLowerCase()))
                .toList();
          } else {
            return [];
          }
        },
        // choiceChipLabel: choiceChipLabel,
        // validateSelectedItem: validateSelectedItem,
        // onItemSearch: onItemSearch,
        onApplyButtonClick: (list) {
          controller1.selectedList.value = (List<String>.from(list!));
          Navigator.of(context).pop();
        });
  }
  //
   var controller2 = Get.put(SportsListController());
  void openFilterDialog2(context) async {
    await FilterListDialog.display<String>(context,
        listData: defaultList2,
        selectedListData: controller2.selectedList,
        headlineText: "Your Skill",
        closeIconColor: Colors.grey,
        applyButtonTextStyle: TextStyle(fontSize: 20),
        searchFieldHintText: 'Search here',
        choiceChipLabel: (item) => item,
        validateSelectedItem: (list, val) => list!.contains(val),
        onItemSearch: (list, text) {
          if (list!.any((element) =>
              element.toLowerCase().contains(text.toLowerCase()))) {
            return list
                .where((element) =>
                    element.toLowerCase().contains(text.toLowerCase()))
                .toList();
          } else {
            return [];
          }
        },
        // choiceChipLabel: choiceChipLabel,
        // validateSelectedItem: validateSelectedItem,
        // onItemSearch: onItemSearch,
        onApplyButtonClick: (list) {
          controller2.selectedList.value = (List<String>.from(list!));
          Navigator.of(context).pop();
        });
  }
  //
  var controller3 = Get.put(HackingListController());
  void openFilterDialog3(context) async {
    await FilterListDialog.display<String>(context,
        listData: defaultList3,
        selectedListData: controller3.selectedList,
        headlineText: "Your Skill",
        closeIconColor: Colors.grey,
        applyButtonTextStyle: TextStyle(fontSize: 20),
        searchFieldHintText: 'Search here',
        choiceChipLabel: (item) => item,
        validateSelectedItem: (list, val) => list!.contains(val),
        onItemSearch: (list, text) {
          if (list!.any((element) =>
              element.toLowerCase().contains(text.toLowerCase()))) {
            return list
                .where((element) =>
                    element.toLowerCase().contains(text.toLowerCase()))
                .toList();
          } else {
            return [];
          }
        },
        // choiceChipLabel: choiceChipLabel,
        // validateSelectedItem: validateSelectedItem,
        // onItemSearch: onItemSearch,
        onApplyButtonClick: (list) {
          controller3.selectedList.value = (List<String>.from(list!));
          Navigator.of(context).pop();
        });
  }

//
  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    // throw UnimplementedError();
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('The Social', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Column(
          //<Widget>
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Languages",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        // height: 80.0,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.blue,
                          ),
                          onPressed: () {
                            openFilterDialog(context);
                          },
                          child: Text('+ ADD'),
                        ),
                      ),
                    ],
                  )
                  // child: _titleContainer("Languages"),

                  ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Obx(() => controller.selectedList.length == 0
                    ? Text("No Selected")
                    : Wrap(
                        children: controller.selectedList
                            .map((String e) => Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Chip(
                                    label: Text(e),
                                  ),
                                ))
                            .toList(),
                      )),
              ),
            ),
            //
            Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Development",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        // height: 80.0,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.blue,
                          ),
                          onPressed: () {
                            openFilterDialog1(context);
                          },
                          child: Text('+ ADD'),
                        ),
                      ),
                    ],
                  )
                  // child: _titleContainer("Languages"),

                  ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Obx(() => controller1.selectedList.length == 0
                    ? Text("No Selected")
                    : Wrap(
                        children: controller1.selectedList
                            .map((String e) => Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Chip(
                                    label: Text(e),
                                  ),
                                ))
                            .toList(),
                      )),
              ),
            ),
            //
             Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Sports",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        // height: 80.0,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.blue,
                          ),
                          onPressed: () {
                            openFilterDialog2(context);
                          },
                          child: Text('+ ADD'),
                        ),
                      ),
                    ],
                  )
                  // child: _titleContainer("Languages"),

                  ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Obx(() => controller2.selectedList.length == 0
                    ? Text("No Selected")
                    : Wrap(
                        children: controller2.selectedList
                            .map((String e) => Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Chip(
                                    label: Text(e),
                                  ),
                                ))
                            .toList(),
                      )),
              ),
            ),
            //
                Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Hacking",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        // height: 80.0,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.blue,
                          ),
                          onPressed: () {
                            openFilterDialog3(context);
                          },
                          child: Text('+ ADD'),
                        ),
                      ),
                    ],
                  )
                  // child: _titleContainer("Languages"),

                  ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Obx(() => controller3.selectedList.length == 0
                    ? Text("No Selected")
                    : Wrap(
                        children: controller3.selectedList
                            .map((String e) => Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Chip(
                                    label: Text(e),
                                  ),
                                ))
                            .toList(),
                      )),
              ),
            ),
            //),
          ],
        ),
      ),
    ));
  }
}


