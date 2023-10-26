// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  FeedPage({super.key});
  final images = [
    'https://picsum.photos/400',
    'https://picsum.photos/400',
    'https://picsum.photos/400',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('フィード')),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network('https://picsum.photos/200'),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Instagram',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('日本'),
                    ],
                  ),
                ],
              ),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                primary: false,
                crossAxisCount: 1,
                children: images.map((imageUrl) {
                  return InstagramPostItem(imageUrl: imageUrl);
                }).toList(),
              ),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.favorite_border),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.chat_bubble_outline),
                    onPressed: () {},
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.bookmark_border),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('いいね！ 1,234件',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('testpost',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ));
  }
}

class InstagramPostItem extends StatelessWidget {
  const InstagramPostItem({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
    );
  }
}
