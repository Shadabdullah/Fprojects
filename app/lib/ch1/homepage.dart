import 'package:flutter/material.dart';

class HomePageCh1 extends StatefulWidget {
  const HomePageCh1({super.key});

  @override
  State<HomePageCh1> createState() => _HomePageCh1State();
}

class _HomePageCh1State extends State<HomePageCh1> {
  String image1 =
      'https://www.crocs.com.my/media/catalog/product/cache/3f354f4955006fba9bb013076742094d/1/0/10010046-1.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green[200],
        title: Text(
          'IMAGE FLIP',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              image1,
              width: 200,
              height: 200,
            ),
            ElevatedButton(onPressed: _changeImage, child: Text('ChangeImage'))
          ],
        ),
      ),
    );
  }

  void _changeImage() {
    setState(() {
      if (image1 ==
          'https://www.crocs.com.my/media/catalog/product/cache/3f354f4955006fba9bb013076742094d/1/0/10010046-1.jpg') {
        image1 =
            'https://static.wikia.nocookie.net/pokemonpets/images/3/34/5-Charmeleon.png/revision/latest?cb=20160920164109';
      } else {
        image1 =
            'https://www.crocs.com.my/media/catalog/product/cache/3f354f4955006fba9bb013076742094d/1/0/10010046-1.jpg';
      }
    });
  }
}
