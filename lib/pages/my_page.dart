import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);
  final images = [
    'https://static.xx.fbcdn.net/rsrc.php/v3/y_/r/2wPYyq9Ejn4.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvoSuexQoraIJ3Xc8Qde7Y_A-7v7vfwWxveA&usqp=CAU',
    'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg',
    'https://news.value-press.com/wp-content/uploads/interview_top_image_pakutaso.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('マイページ')),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Image.network(
                  'https://static.xx.fbcdn.net/rsrc.php/v3/y_/r/2wPYyq9Ejn4.png',
                  width: 60,
                  height: 60,
                ),
              ),
              const Spacer(),
              const Column(
                children: [
                  Text(
                    '7,041',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text('投稿'),
                ],
              ),
              const SizedBox(width: 16),
              const Column(
                children: [
                  Text(
                    '4.6億',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text('フォロワー'),
                ],
              ),
              const SizedBox(width: 16),
              const Column(
                children: [
                  Text(
                    '99',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text('フォロー'),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Instagram',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18),
                child: Text(
                  '#Flutter',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                primary: false,
                crossAxisCount: 3,
                children: images.map((imageUrl) {
                  return InstagramPostItem(imageUrl: imageUrl);
                }).toList(),
              ),
            ],
          )
        ]),
      ),
    );
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
