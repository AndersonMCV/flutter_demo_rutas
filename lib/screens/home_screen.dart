import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Icon(Icons.home, size: 88, color: Colors.amber,),

            SizedBox(height: 30,),

            Text('Welcome', style: TextStyle(fontSize: 24),),

            ElevatedButton.icon(onPressed: (){
              Navigator.pushNamed(context, 'details');
            }, label: Text('Ir a detalles'), 
            icon: Icon(Icons.info),
            
            ), 

            SizedBox(height: 30,),

            ElevatedButton.icon(onPressed: (){
              //Navigator.pushNamed(context, 'settings');
              context.go('settings');
            }, label: Text('Configuracion'), 
            icon: Icon(Icons.settings),
            
            ),


          ],
        ),
      ),
    );
  }

}