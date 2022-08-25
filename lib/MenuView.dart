import 'package:flutter/material.dart';
import 'package:game_project/main.dart';
import 'package:game_project/ViewCategory.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    final title = 'Grid List';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body:MainMenuBody(),
    );
  }
}

class MainMenuBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final List<MenuData> menu = [
      MenuData(Icons.settings, 'Setting 1'),
      MenuData(Icons.info_sharp, 'Infos 2'),
      MenuData(Icons.video_call, 'Tutorial 3'),
      MenuData(Icons.bar_chart_sharp, 'Level Of Difficulties 9'),
    ];

    return Container(

      padding: EdgeInsets.symmetric(horizontal: 10.0),

      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            itemCount: menu.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1,
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0),


            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 0.2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        menu[index].icon,
                        size: 30,
                      ),
                      SizedBox(height: 20),
                      Text(
                        menu[index].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.black87),
                      )

                    ],
                  ),

                ),

              );

            },
          ),

        ],
      ),

    );
  }
}

class MenuData {
  MenuData(this.icon, this.title);
  final IconData icon;
  final String title;
}