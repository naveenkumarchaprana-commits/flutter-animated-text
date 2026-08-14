import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
void main() {
  runApp(const AnimatedTextWidget());
}

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("AnimatedText"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
            AnimatedTextKit(
              animatedTexts:[
                TypewriterAnimatedText('naveen Gurjar',textStyle: TextStyle(fontSize:30,
                fontWeight: FontWeight.bold),
                speed: Duration(milliseconds: 100))
              ],
              totalRepeatCount: 4,
              pause: Duration(milliseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText("hello",textStyle: TextStyle(fontSize:30,
                    fontWeight: FontWeight.w600,color: Colors.red),
                ),
                RotateAnimatedText("world",textStyle: TextStyle(fontSize:30,
                    fontWeight: FontWeight.bold),
                )
              ],
            ),
            AnimatedTextKit(animatedTexts: [
              WavyAnimatedText("i AM NAVEEEN",textStyle: TextStyle(fontSize:30,
                  fontWeight: FontWeight.w600,color: Colors.red),
              )

            ])
          ],),
        ),
      ),
    );
  }
}
