import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:loja_lala_for_kids/models/user_manager.dart';
import 'package:loja_lala_for_kids/screens/base/base_screen.dart';
import 'package:provider/provider.dart';




void main() async {
  runApp(MyApp());

  QuerySnapshot snapshot = await Firestore.instance.collection('pedidos').getDocuments();

  for(DocumentSnapshot document in snapshot.documents){ print(document.data);}
  
}


class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserManager(),
          child: MaterialApp(
        title: 'Lalá for kids',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        
          primaryColor: const 
          Color.fromARGB(255, 200, 125, 141),
          scaffoldBackgroundColor: Color.fromARGB(255, 4, 125, 141),
          
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home:BaseScreen(),
      ),
    );
  }
}

