import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_app/utils/categories_card.dart';
import 'package:medical_app/utils/doctor_card.dart';

class HomePage extends StatefulWidget {
const HomePage ({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState  extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
      backgroundColor: Colors.cyan,
      body:
      SafeArea(
        maintainBottomViewPadding: true,
        child:
      Column(
        children: [ 
           Padding(padding: EdgeInsets.symmetric(horizontal: 25.0,)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
          Text("\tHello,",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          ),
            SizedBox(height: 5,),
            Text("\t\t\t Welcome to",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
            ),),
              SizedBox(height: 5,),
              Text("\t \t \t \t \t \tKhayal Rakho App",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),),
            ],
          ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.teal[100],
                borderRadius: BorderRadius.circular(12)
              ),
              child: Image.network("https://cdn-icons-png.flaticon.com/512/3774/3774299.png",height: 40,),
            ),],
      ),
           SizedBox(height: 25,),
           Padding(padding: EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            padding:  EdgeInsets.all(20),
            decoration: BoxDecoration(color: Colors.pink[100],
            borderRadius: BorderRadius.circular(15)),

            child: Row(

children: [
  Container(height: 100,width: 100,child: Lottie.network("https://assets1.lottiefiles.com/packages/lf20_tutvdkg0.json"),),
   SizedBox(width: 20,),
  Expanded(child:
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
       Text("How do you feel?",style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16
      ),),
       SizedBox(height: 12,),
       Text("Fill out your medical card right now",style: TextStyle(
          fontSize: 14,
      ),),
       SizedBox(height: 12,),
      Container(
        padding:  EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.deepPurple[300],
          borderRadius: BorderRadius.circular(12)
        ),
        child:  Center(
        child: Text("Get Started",style: TextStyle(
          color: Colors.white
        ),
        ),
      ),
      ),
    ],
  )
  ),],
          ),),),
            SizedBox(height: 15,),
           Padding(padding:  EdgeInsets.symmetric(horizontal: 25,),
               child:
          Container(
            padding:  EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.deepPurple[100],
              borderRadius: BorderRadius.circular(12),

            ),
            child:   TextField
              (
              decoration: InputDecoration(
              prefixIcon: Icon(Icons.search_outlined,color: Colors.deepPurple,),
            border: InputBorder.none,
              hintText: "How can we help you?"
          ),),
          ),
           ),
          SizedBox(height: 15,),
          SingleChildScrollView(child:
          Container(height: 80,
            child: ListView(
              physics:  BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                CategoriesCard(
                  categoryName: "Dentist" ,
                  iconImagePath: 'lib/icons/tooth.png',
                ),
                CategoriesCard(
                  categoryName: "Surgeon",
                  iconImagePath: 'lib/icons/surgeon.png',
                ),
                CategoriesCard(
                  categoryName: "Pharmacist",
                  iconImagePath:'lib/icons/medicine.png' ,
                ),
                CategoriesCard(
                  categoryName: "Emergency",
                  iconImagePath:'lib/icons/emergency.png' ,
                ),
                CategoriesCard(
                  categoryName: "Heart",
                  iconImagePath:'lib/icons/heart.png' ,
                ),
                CategoriesCard(
                  categoryName: "Lungs",
                  iconImagePath:'lib/icons/lungs.png' ,
                ),

            ],),),),
          SizedBox(height: 15,),
         Padding(padding: EdgeInsets.symmetric(horizontal: 15),child:
SingleChildScrollView(child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Doctors List",style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.bold,
            ),),
            SizedBox(width: 5,),
            Text("See All",style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
          ],)
         ),),

          SizedBox(height: 15 ,),

          Expanded(

            child:
          ListView(
            scrollDirection: Axis.horizontal,

            physics: BouncingScrollPhysics(),
            children: [
              DoctorCard(doctorImagePath: 'lib/images/doc1.png',
              docName: "Dr. Zameer Hussain",
              docProfession: "General Physician, \n\t22 years exp", rating: '4.8',),
              DoctorCard(doctorImagePath: 'lib/images/doc2.png',
                docName: "Dr. Aneeqa Ahmed",
                docProfession: "General Physician, \n\t1 year exp.", rating: '4.1',),
              DoctorCard(doctorImagePath: 'lib/images/doc3.png',
                docName: "Dr. Dania Amir",
                docProfession: "Family Physician, \n\t11 year exp.", rating: '4.6',),
              DoctorCard(doctorImagePath: 'lib/images/doc4.png',
                docName: "Dr Attaullah Mahar",
                docProfession: " Laparoscopic Surgeon, \n\t10 year exp.", rating: '4.5',),
            ],
          ),

          ),
        ],
      ),
      ),
      );
  }
}