/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-08 22:08:55
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-09 15:20:58
 * @FilePath: /pcq_flutter_app/lib/pages/home_demo/home_demo.dart
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeDemo extends StatelessWidget {
  const HomeDemo({super.key});

  Widget _buildView() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageSection(imagePath: "assets/lake.jpg"),
        TitleSection(
          name: "Oeschinen Lake Campground",
          location: "Kandersteg, Switzerland",
        ),
        ButtonSection(),
        TextSection(description: "哈哈哈哈哈哈"),
        CheckBoxSection(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Layout Demo")),
      body: SafeArea(
        child: _buildView(),
      ),
    );
  }
}

class CheckBoxSection extends StatefulWidget {
  const CheckBoxSection({super.key});

  @override
  State<CheckBoxSection> createState() => _CheckBoxSectionState();
}

class _CheckBoxSectionState extends State<CheckBoxSection> {
  bool _value = false;

  void onChanged(newValue) {
    setState(() {
      _value = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: _value, onChanged: onChanged),
        GestureDetector(
          child: const Text("复选框"),
          onTap: () {
            onChanged(!_value);
            print("hahah");
          },
        ),
      ],
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection(
      {super.key, required this.imagePath, this.boxFit = BoxFit.cover});

  final String imagePath;

  final BoxFit boxFit;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      width: double.infinity,
      height: 200,
      imagePath,
      fit: boxFit,
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, this.name, this.location});

  final String? name;
  final String? location;

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Oeschinen Lake Campground"),
              Text("Kandersteg, Switzerland"),
            ],
          ),
        ),
        FavoriteWidget()
      ],
    ).paddingAll(30);
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          _isFavorited = !_isFavorited;
          _isFavorited ? _favoriteCount++ : _favoriteCount--;
          setState(() {});
        },
        child: Row(
          children: [
            Icon(_isFavorited ? Icons.star : Icons.star_border,
                color: Colors.red),
            Text("$_favoriteCount"),
          ],
        ));
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Icon(Icons.phone, color: Colors.purple),
            Text("CALL", style: TextStyle(color: Colors.purple))
          ],
        ),
        Column(
          children: [
            Icon(Icons.phone, color: Colors.purple),
            Text("CALL", style: TextStyle(color: Colors.purple))
          ],
        ),
        Column(
          children: [
            Icon(Icons.phone, color: Colors.purple),
            Text("CALL", style: TextStyle(color: Colors.purple))
          ],
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      overflow: TextOverflow.ellipsis,
      maxLines: 10,
      textAlign: TextAlign.justify,
    ).paddingAll(30);
  }
}
