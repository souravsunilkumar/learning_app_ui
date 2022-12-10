import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_online_learning_app/explorer%20tab/appstyles.dart';
import 'package:flutter_online_learning_app/explorer%20tab/sizeconfig.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class explorer extends StatefulWidget {
  const explorer({Key? key}) : super(key: key);

  @override
  State<explorer> createState() => _explorerState();
}

class _explorerState extends State<explorer> {
  List<String> categories = [
    "All Items",
    "Dress",
    "Hat",
    "Watch",
  ];

  List<String> icons = [
    'all_items_icon',
    'dress_icon',
    'hat_icon',
    'watch_icon',
  ];

  List<String> images = [
    'image-01.png',
    'image-02.png',
    'image-03.png',
    'image-04.png',
    'image-05.jpg',
    'image-06.jpg',
    'image-07.jpg',
    'image-08.jpg',
  ];

  List<String> imageList = [
    'https://cdn.pixabay.com/photo/2019/03/15/09/49/girl-4056684_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/15/16/25/clock-5834193__340.jpg',
    'https://cdn.pixabay.com/photo/2020/09/18/19/31/laptop-5582775_960_720.jpg',
    'https://media.istockphoto.com/photos/woman-kayaking-in-fjord-in-norway-picture-id1059380230?b=1&k=6&m=1059380230&s=170667a&w=0&h=kA_A_XrhZJjw2bo5jIJ7089-VktFK0h0I4OWDqaac0c=',
    'https://cdn.pixabay.com/photo/2019/11/05/00/53/cellular-4602489_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/02/12/10/29/christmas-2059698_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/01/29/17/09/snowboard-4803050_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/02/06/20/01/university-library-4825366_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/11/22/17/28/cat-5767334_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/13/16/22/snow-5828736_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/09/09/27/women-5816861_960_720.jpg',
  ];


  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:
       SafeArea(child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8,left: 10),
                    child: Text("Hello,Welcome",style: kEncodeSansRagular.copyWith(
                      color: kDarkBrown,fontSize: 13
                    ) ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text("Dr.Strange",style: kEncodeSansBold.copyWith(
                      color: kDarkBrown,fontSize: 14
                    ) ),
                  ),
                ],),
                CircleAvatar(
                  radius: 26,
                  backgroundColor: kGrey,
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1596727147705-61a532a659bd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
                )
              ],
            ),
          ),

          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: kEncodeSansRagular.copyWith(
                      color:kDarkGrey,
                    fontSize:10
                    ),
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 13,
                      ),
                      prefixIcon: IconTheme(
                        data: IconThemeData(color:kDarkGrey,
                         ),
                        child: Icon(Icons.search)),
                        hintText: "Search courses",
                         border: kInputBorder,
                         errorBorder: kInputBorder,
                       disabledBorder: kInputBorder,
                        focusedBorder: kInputBorder,
                         focusedErrorBorder: kInputBorder,
                         enabledBorder: kInputBorder,
                        hintStyle: kEncodeSansRagular.copyWith(
                          color: Colors.grey,
                          fontSize: 14
                        )


                    ),
                    
                  ),
                ),
             Container(
              padding: EdgeInsets.all(12),
              height: 49,
              width: 49,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                
                
              ),
              
              child: Image(image: NetworkImage("https://cdn-icons-png.flaticon.com/512/7094/7094575.png")),
             ),

             

              ],
            ),

          ),
          

          SizedBox(
            height: 24,
          ),


    cards(name: "Rahuk",
    subtitle: "Intern at XYZ company",
    date: "2 Hrs",
    desc: "Finally",
    url: "https://images.unsplash.com/photo-1614796067785-93f746b74cce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
    ),
    cards(name: "Ajay",
    subtitle: "Software Developer at ABC",
    date: "5 Hrs",
    desc: "Accepted into Burbuon Coollege",
    url: "https://images.unsplash.com/photo-1614796067785-93f746b74cce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
    ),
    
         


          
          

        ],
       ))
    );
  }
}

class cards extends StatelessWidget {
  const cards({
    Key? key, required this.name, this.subtitle, this.date, this.desc, this.url
  }) : super(key: key);
  final name;
  final subtitle;
  final date ; 
  final desc ; 
  final url ; 

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 239, 239, 239),
        border: Border.all(color: Colors.blueAccent.withOpacity(0.5))
      ),
      margin: EdgeInsets.all(12),
     child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [Text(name,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    Text(subtitle,style: TextStyle(fontSize: 14,color: Colors.blueGrey),)],
                  ),
                )
              ],
            ),
            Container(
              child: Text(date),
            )
          ],
        ),
        
        // Description
        Container(
          
          child: Text(desc,),
        ),
        
        SizedBox(height: 6,),
        // Image
        Container(
          child: Image(image: NetworkImage(url)),
        ),
        
        SizedBox(
          height: 10,
        ),
        // buttons
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Icon(Icons.comment,color: Colors.green,),
            SizedBox(width: 5,),
            Icon(Icons.thumb_up_sharp, color: Colors.green,),
            SizedBox(width: 5,),
            Icon(Icons.save,color: Colors.green,),
          ],
        )
      ],
     ),
    );
  }
}