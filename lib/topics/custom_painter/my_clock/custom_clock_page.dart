import 'package:flutter/material.dart';
import 'package:flutter_in_focus/topics/custom_painter/my_clock/widgets/custom_clock.dart';

class CustomClockPageProvider extends StatelessWidget {
  const CustomClockPageProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: const Color(0xFF2D2F41),
        child: const CustomClockPage(),
      ),
    );
  }
}


class CustomClockPage extends StatefulWidget {
  const CustomClockPage({super.key});

  @override
  State<CustomClockPage> createState() => _CustomClockPageState();
}

class _CustomClockPageState extends State<CustomClockPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: const Color(0xFF2D2F41),
        height: size.height,
        width: size.width ,
        child: CustomPaint(
          painter: CustomClock(),
        )
      )
    );
  }
}
