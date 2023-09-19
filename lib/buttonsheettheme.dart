import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:news/screens/MYPROVIDER.dart';
import 'package:provider/provider.dart';

//import 'MY Provide.dart';

class ButtonSheetTheme extends StatelessWidget {
  const ButtonSheetTheme({super.key});
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return  Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              pro.changeTheme(ThemeMode.light);
            },
            child:
            Padding(padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Text("light"),
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
            pro.changeTheme(ThemeMode.dark);
          },
            child: Padding(padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Text("Dark"),
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
