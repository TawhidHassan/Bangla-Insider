import 'package:flutter/material.dart';

class CustomTabView extends StatelessWidget {
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
              children: [
                Container(
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(8),
                    child: Text('প্রচ্ছদddddddddd',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black,fontSize: 20))
                ), Container(
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(8),
                    child: Text('প্রচ্ছদ',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black,fontSize: 20))
                ), Container(
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(8),
                    child: Text('প্রচ্ছদddddddddd',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black,fontSize: 20))
                ), Container(
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(8),
                    child: Text('প্রচ্ছদ',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black,fontSize: 20))
                ), Container(
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(8),
                    child: Text('প্রচ্ছদ',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black,fontSize: 20))
                ), Container(
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(8),
                    child: Text('প্রচ্ছদddddddddd',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black,fontSize: 20))
                ), Container(
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(8),
                    child: Text('প্রচ্ছদddddffffffddddd',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black,fontSize: 20))
                ),
              ],
            )

          ],
        )
    );
  }
}
