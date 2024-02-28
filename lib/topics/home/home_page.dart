import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/clipper');
                      },
                      child: const Text('Go to CustomClipper')),
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/painter');
                      },
                      child: const Text('Go to CustomPainter')),
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/container');
                      },
                      child: const Text('Go to CustomContainer')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
