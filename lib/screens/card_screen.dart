import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20.0),
          CustomCardType2(
              name: 'un hermoso paisa',
              imageUrl:
                  'https://iso.500px.com/wp-content/uploads/2014/06/W4A2827-1.jpg'),
          SizedBox(height: 20.0),
          CustomCardType2(
              imageUrl:
                  'https://cdn3.dpmag.com/2021/07/Landscape-Tips-Mike-Mezeul-II.jpg'),
          SizedBox(height: 20.0),
          CustomCardType2(
              name: 'a beautiful place',
              imageUrl:
                  'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg'),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
