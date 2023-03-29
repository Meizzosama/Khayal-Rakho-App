import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImagePath;
  final String rating;
  final String docName;
  final String docProfession;

  DoctorCard({required this.doctorImagePath,required this.rating,required this.docName,required this.docProfession});

  @override
  Widget build(BuildContext context) {
    return   
      Padding(padding: EdgeInsets.only(left: 25,bottom: 10),child:
      Container(
        height: 10,
        padding: EdgeInsets.only(bottom: 20,left: 25,right: 25,top: 10),
   decoration: BoxDecoration(
     color: Colors.deepPurple[100],
     borderRadius: BorderRadius.circular(10),
   ),
      child:
      Center(child:
      Column(
        children: [
         ClipRRect(
           borderRadius: BorderRadius.circular(50),
           child: Image.asset(doctorImagePath,height: 100,),),
         SizedBox(
           height: 10,
         ),
          Row(
              children: [
                Icon(Icons.star,color: Colors.yellow[500],),
                SizedBox(width: 5,),
                Text(rating,style: TextStyle(fontWeight: FontWeight.bold),),]),
          SizedBox(height: 3,),

          Text(docName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
          SizedBox(height: 3,),
          Text(docProfession,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13)),

        ],
      ),
      ),

      ),

      );

  }
}
