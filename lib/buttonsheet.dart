import 'package:flutter/material.dart';
//import 'package:islam/MY%20Provide.dart';
import 'package:news/screens/MYPROVIDER.dart';
import 'package:provider/provider.dart';

class Button extends StatelessWidget {
  const Button({super.key});
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return  Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              pro.changeLanguage("ar");
            },
            child:
            Padding(padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Text("Arabic"),
                  Spacer(),
                  Icon(Icons.done)
                ],
              ),
            ),),
          Divider(
            height: 2,
            color: Theme.of(context).primaryColor,
            endIndent: 50,
            indent: 50,
          ),
          InkWell(onTap: (){
            pro.changeLanguage("en");
          },
            child: Padding(padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Text("English"),
                  Spacer(),
                  Icon(Icons.done)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
