import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:transparent_image/transparent_image.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imageList = [
    'https://cdn-icons-png.flaticon.com/512/4671/4671171.png',
    'https://cdn-icons-png.flaticon.com/512/4671/4671171.png',
    'https://cdn-icons-png.flaticon.com/512/4671/4671171.png',
    'https://cdn-icons-png.flaticon.com/512/4671/4671171.png',
    'https://cdn-icons-png.flaticon.com/512/4671/4671171.png',
    'https://cdn-icons-png.flaticon.com/512/4671/4671171.png',
    'https://cdn-icons-png.flaticon.com/512/4671/4671171.png',
    'https://cdn-icons-png.flaticon.com/512/4671/4671171.png',
    'https://cdn-icons-png.flaticon.com/512/4671/4671171.png',
    'https://cdn-icons-png.flaticon.com/512/4671/4671171.png',
    'https://cdn-icons-png.flaticon.com/512/4671/4671171.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white24,
        appBar: AppBar(
          title: Text("Explore"),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Container(
          margin: EdgeInsets.all(12),
          child:  staggridview(imageList: imageList),
        ),
      ),
    );
  }
}

class staggridview extends StatelessWidget {
  const staggridview({
    Key? key,
    required this.imageList,
  }) : super(key: key);

  final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 12,
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(
                    Radius.circular(15))
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                  Radius.circular(15)),
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: imageList[index],fit: BoxFit.cover,),
            ),
          );
        },
        staggeredTileBuilder: (index) {
          return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
        });
  }
}