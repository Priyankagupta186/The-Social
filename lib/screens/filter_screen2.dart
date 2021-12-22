import 'package:flutter/material.dart';
import 'package:filter_list/filter_list.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:the_social/screens/selected_list_controller.dart';

List<String> defaultList = [
  "Java",
  "C++",
  "Python",
  "Kotlin",
  "Dart",
  "PHP",
  "Android",
  "Flutter",
  "React",
  "React Native",
];

class FilterPage extends StatelessWidget {
  var controller = Get.put(SelectedListController());

  void openFilterDialog(context) async {
    await FilterListDialog.display<String>(context,
        listData: defaultList,
        selectedListData: controller.getSelectedList(),
        headlineText: "Your Interest",
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
          } else
            return [];
        },
        // choiceChipLabel: choiceChipLabel,
        // validateSelectedItem: validateSelectedItem,
        // onItemSearch: onItemSearch,
        onApplyButtonClick: (list) {
          controller.setSelectedList(List<String>.from(list!));
          Navigator.of(context).pop();
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => openFilterDialog(context),
        child: Icon(Icons.add),
      ),
    ));
  }
}