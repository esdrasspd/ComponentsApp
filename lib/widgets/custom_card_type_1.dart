
import 'package:components/fonts/fonts.dart';
import 'package:components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
      children: [
        ListTile(
          leading: const Icon(Icons.photo_album_outlined, color: AppTheme.primary),
          title: Text('Soy un título', style: FontSize.sizeTitles),
          subtitle: Text('Laborum adipisicing voluptate eu consequat sit aliqua aute nostrud excepteur excepteur eu ullamco.', style: FontSize.sizeSubTitltes),
        ),

        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Cancel', style: FontSize.sizeSubTitltes),
                ),
              TextButton(
                onPressed: () {}, 
                child: Text('Ok', style: FontSize.sizeSubTitltes,),
              ),
            ],
          ),
        )
      ],
      ),
    );
  }
}