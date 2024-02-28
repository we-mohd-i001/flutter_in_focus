import 'package:flutter/material.dart';
import 'package:flutter_in_focus/topics/custom_clipper/widgets/container_clipper.dart';

class MyCustomContainer extends StatelessWidget {
  const MyCustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Custom Container'),
      ),
      body: SafeArea(
        child: Center(
          child: ClipPath(
            clipper: ContainerClipper(),
            child: Container(
              height: size.height*0.6,
              width: size.width*0.8,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Colors.deepOrange, Colors.orange
                  ]
                )
              ),
            ),
          ),

        ),
      ),
    );
  }
}
