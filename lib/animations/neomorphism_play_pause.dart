import 'package:flutter/material.dart';

class NeomorphismPlayPauseAnimation extends StatefulWidget {
  const NeomorphismPlayPauseAnimation({Key? key}) : super(key: key);

  @override
  State<NeomorphismPlayPauseAnimation> createState() =>
      _NeomorphismPlayPauseAnimationState();
}

class _NeomorphismPlayPauseAnimationState
    extends State<NeomorphismPlayPauseAnimation> with TickerProviderStateMixin {
  late AnimationController controller;

  bool isChanged = false;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
      reverseDuration: const Duration(milliseconds: 400),
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
          child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.width * 1.2,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(20),
          boxShadow: isChanged
              ? [
                  BoxShadow(
                    blurRadius: 70,
                    color: Colors.green.shade400,
                    offset: const Offset(4, 4),
                    spreadRadius: 1,
                  ),
                  BoxShadow(
                    blurRadius: 70,
                    offset: const Offset(-4, -4),
                    color: Colors.blue.shade400,
                    spreadRadius: 1,
                  ),
                ]
              : null,
        ),
        child: IconButton(
          onPressed: () {
            if (isChanged) {
              isChanged = !isChanged;
              controller.reverse();
              setState(() {});
            } else {
              isChanged = !isChanged;
              controller.forward();
              setState(() {});
            }
          },
          icon: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: controller,
          ),
        ),
      )),
    );
  }
}
