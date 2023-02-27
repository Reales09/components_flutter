import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading:
                Icon(Icons.photo_album_outlined, color: AppTheme.eerieBlack),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Ullamco ad anim Lorem consectetur occaecat. Laborum ea ipsum exercitation esse ullamco qui. Ea qui et amet fugiat elit non nisi non proident ut consequat.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('OK'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
