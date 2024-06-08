import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pcq_flutter_app/pages/event/widgets/checkbox_item.dart';

import 'index.dart';

class EventPage extends GetView<EventController> {
  const EventPage({Key? key}) : super(key: key);

  final bool value = true;

  // 主视图
  Widget _buildView() {
    void onChanged(bool? flag) {
      if (flag as bool) {
        flag = !flag;
      }
    }

    return Column(
      children: [Checkbox(value: value, onChanged: onChanged)],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EventController>(
      init: EventController(),
      id: "event",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("event")),
          body: const SafeArea(
              child: Row(
            children: [
              CheckboxItem(label: "复选框1号"),
              SizedBox(width: 20),
              CheckboxItem(label: "复选框2号"),
            ],
          )
              // child: _buildView(),
              ),
        );
      },
    );
  }
}
