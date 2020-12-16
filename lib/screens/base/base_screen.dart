import 'package:flutter/material.dart';
import 'package:loja_lala_for_kids/common/custom_drawer/custom_drawer.dart';
import 'package:loja_lala_for_kids/models/page_manager.dart';
import 'package:loja_lala_for_kids/screens/base/login/login_screen.dart';
import'package:provider/provider.dart';


class BaseScreen extends StatelessWidget {
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_)=>PageManager(pageController),
          child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          
          LoginScreen(),
          Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: const Text('Lalá for kids 2'),            
            ),
          ),
          Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: const Text('Lalá for kids 3'),            
            ),
          ),
          Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: const Text('Lalá for kids 4'),            
            ),
          ),
          Container(color:Colors.red,),       
          Container(color:Colors.yellow,),
          Container(color:Colors.green,),
        ],
        
      ),
    );
  }
}