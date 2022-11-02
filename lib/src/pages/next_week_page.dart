import 'package:dinner_table/src/components/dropdown_button.dart';
import 'package:dinner_table/src/controller/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

class NextWeekPage extends StatefulWidget {
  NextWeekPage({super.key});

  @override
  State<NextWeekPage> createState() => _NextWeekPageState();
}

class _NextWeekPageState extends State<NextWeekPage> {
  final dateList = ['월', '화', '수', '목', '금', '토', '일'];
  final MenuController menuController = MenuController();
  final TextEditingController _addMenuController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  var date = DateTime.now();

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 35),
            const Text(
              '다음주 식단표',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 5),
            const Text(
              'JMT 먹조합을 완성해보자',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 5),
            Text(
              DateFormat('dd MMM, yyy').format(date),
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 8),
            const Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }

  addMenuDialog(MenuController menuController, String title, String menu,
      String id) async {
    if (menu.isNotEmpty) {
      _addMenuController.text = menu;
    }
    Get.defaultDialog(
      content: Form(
        key: _formKey,
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  TextFormField(
                    controller: _addMenuController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Cannot be empty';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        hintText: '메뉴를 입력하세요.',
                        hintStyle: TextStyle(color: Colors.grey)),
                  )
                ],
              ),
            ),
            const SizedBox(width: 20),
            const DropDownButtonWidget(),
          ],
        ),
      ),
      title: title,
      textCancel: '취소',
      textConfirm: '확인',
      onConfirm: () async {
        if (_addMenuController.text.trim() != '') {
          await MenuController().addMenu(_addMenuController.text.trim(), id);
          _addMenuController.clear();
          Get.back();
        }
      },
      barrierDismissible: false,
      radius: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MenuController>(
        init: MenuController(),
        initState: (_) {},
        builder: (menuController) {
          menuController.getData();

          return Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  _header(),
                  const SizedBox(height: 20),
                  Center(
                    child: menuController.isLoading
                        ? const SizedBox(
                            child: CircularProgressIndicator(),
                          )
                        : ListView.builder(
                            shrinkWrap: true,
                            itemCount: menuController.menuList.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: Text(dateList[index].toString()),
                                title:
                                    Text(menuController.menuList[index].menu),
                                trailing: SizedBox(
                                  width: 100,
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () => addMenuDialog(
                                          menuController,
                                          'Update Menu',
                                          menuController.menuList[index].menu,
                                          menuController.menuList[index].id,
                                        ),
                                        icon: const Icon(Icons.edit),
                                      ),
                                      IconButton(
                                        onPressed: () => menuController
                                            .deleteMenu(menuController
                                                .menuList[index].id),
                                        icon: const Icon(
                                          Icons.delete,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                await addMenuDialog(menuController, '뭐 드실?', '', '');
              },
              child: const Icon(Icons.add),
            ),
          );
        });
  }
}
