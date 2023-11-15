import 'package:flutter/material.dart';
import 'package:flutter_3d_project/models/animation.dart';
import 'package:flutter_3d_project/widgets/animation_object_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String animation;
  late bool cameraControls;
  late bool autoRotate;
  late bool autoPlay;

  Key widgetKey = UniqueKey();

  void recreateWidget() {
    setState(() {
      widgetKey = UniqueKey(); // Cria uma nova chave única
    });
  }

  @override
  void initState() {
    animation = "SK_Huggy|A_Huggy_Walk_SK_Huggy";
    cameraControls = false;
    autoRotate = false;
    autoPlay = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: AnimationObjectWidget(
                key: widgetKey,
                animationName: animation,
                cameraControls: cameraControls,
                autoRotate: autoRotate,
                autoPlay: autoPlay,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Switch(
                                  value: autoPlay,
                                  onChanged: (bool value) {
                                    setState(() {
                                      autoPlay = value;
                                      recreateWidget();
                                    });
                                  },
                                ),
                                const Text("Auto Play"),
                              ],
                            ),
                            Row(
                              children: [
                                Switch(
                                  value: autoRotate,
                                  onChanged: (bool value) {
                                    setState(() {
                                      autoRotate = value;
                                      recreateWidget();
                                    });
                                  },
                                ),
                                const Text("Auto Rotate"),
                              ],
                            ),
                            Row(
                              children: [
                                Switch(
                                  value: cameraControls,
                                  onChanged: (bool value) {
                                    setState(() {
                                      cameraControls = value;
                                      recreateWidget();
                                    });
                                  },
                                ),
                                const Text("Camera Control"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("Animations list"),
                      ),
                      Container(
                        width: 300,
                        height: 350,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: animationsData.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(animationsData[index].name),
                              onTap: () {
                                animation =
                                    animationsData[index].key.toString();
                                recreateWidget();
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
