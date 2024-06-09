/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-09 16:55:35
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-09 18:24:29
 * @FilePath: /pcq_flutter_app/lib/pages/form/form_index.dart
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormIndex extends StatefulWidget {
  const FormIndex({super.key});

  @override
  State<FormIndex> createState() => _FormIndexState();
}

class _FormIndexState extends State<FormIndex> {
  final _formKey = GlobalKey<FormState>();

  final myController = TextEditingController();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Layout Demo")),
      body: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: myController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text("按下"),
              ),
            ],
          )).paddingAll(20),
      // body: Column(
      //   children: [
      //     TextField(
      //       controller: myController,
      //       decoration: const InputDecoration(
      //         border: OutlineInputBorder(),
      //         hintText: 'Enter a search term',
      //       ),
      //     ),
      //     ElevatedButton(
      //       onPressed: () {
      //         print(myController.text);
      //       },
      //       child: const Text("按下"),
      //     )
      //   ],
      // ).paddingAll(30),
    );
  }
}
