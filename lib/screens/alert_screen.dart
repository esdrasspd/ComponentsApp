import 'dart:io';

import 'package:components/themes/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  void displayDialogIOS( BuildContext context){
    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Titutlo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 40,),
              FlutterLogo(size: 100),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
            child: const Text('Cancelar', style: TextStyle(color: Colors.red)),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), 
            child: const Text('Ok'),
            ),
          ],
          
        );
       }
      );
  }

  void displayDialogAndroid(BuildContext context){
    
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: ( context ) {

        return AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Abel Díaz, sigueme en GitHub: esdrasspd'),
              SizedBox(height: 40,),
              FlutterLogo(size: 100),
            ],
          ),

          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
            child: const Text('Cancelar', style: TextStyle(color: Colors.red)),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), 
            child: const Text('Ok'),
            )
          ],
        );
      }
      );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: AppTheme.primary,
            shape: const StadiumBorder(),
            elevation: 0,
          ),
          child: const Padding(
            padding: EdgeInsets.all(20),
            child: Text('Mandar alerta', style: TextStyle(fontSize: 20)),
          ),
          onPressed: () => Platform.isAndroid 
          ? displayDialogAndroid(context)
          : displayDialogIOS(context)
          ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.primary,
        child: const Icon( Icons.close ),
        onPressed: () => Navigator.pop(context),
        
      
      ),
    );
  }
}