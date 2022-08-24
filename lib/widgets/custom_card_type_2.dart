import 'package:components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String? name;

  const CustomCardType2({Key? key, required this.imageUrl, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, //redondear la tarjeta
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18) //redondeo forzado
        ),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.4),
      child: Column(
        children: [
            FadeInImage(
            image: NetworkImage(imageUrl), 
            placeholder: const AssetImage('assets/img/jar-loading.gif'),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 250),
            ),

            if(name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10), //separation
              child: Text(name?? 'No name'),
              )
      ]
      ),
    );
  }
}