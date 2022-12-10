import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class trialfeed extends StatelessWidget {
  const trialfeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          feedcard()
        ],
        
      ),
    );
  }
}

class feedcard extends StatelessWidget {
  const feedcard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("hello"),
    );
  }
}



