import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
final iconImagePath;
final String categoryName;

CategoriesCard({required this.iconImagePath,required this.categoryName});
  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.only(left: 25),child:
      Container(
      padding: EdgeInsets.all(20),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.deepPurple[100],
      ),
      child: Row(
          children:[
            Image.asset(iconImagePath,height: 30,),
            SizedBox(width: 10,),
            Text(categoryName,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ]),
      ), );
  }
}
