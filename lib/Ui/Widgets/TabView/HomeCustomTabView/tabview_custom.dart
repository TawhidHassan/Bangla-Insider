import 'package:banglainsider/Data/Menus/Menu.dart';
import 'package:flutter/material.dart';

class CustomTabView extends StatelessWidget {
  final List<Menu>? menus;

  const CustomTabView({Key? key, this.menus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black)
        ),
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          children: [
            Flex(direction: Axis.horizontal,
              children: menus!.map((menu) =>
                  Container(
                      padding: EdgeInsets.all(2),
                      margin: EdgeInsets.all(8),
                      child: Text(menu.name.toString(),style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black,fontSize: 20))
                  ),

              ).toList()

            )

          ],
        )
    );
  }
}
