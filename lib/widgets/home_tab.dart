import 'package:flutter/material.dart';
import 'package:project_managment/models/projects_model.dart';

// This class was to build differnt arcs but takes me times
// class _CirclePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     var paint1 = Paint();
//     paint1.color = Colors.yellow;
//     paint1.style = PaintingStyle.fill;
//     paint1.strokeWidth = 3.1;
//     // canvas.drawCircle(Offset(100, 100), 25.0, paint1);
//     canvas.drawArc(
//         // const Offset(41, 20) & const Size(30, 32), 0, 3, false, paint1);
//         const Rect.fromLTRB(5, 5, 5, 0),
//         0,
//         3,
//         false,
//         paint1);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     // ignore: todo
//     // TODO: implement shouldRepaint
//     throw UnimplementedError();
//   }
// }

class MyProjectHome extends StatefulWidget {
  const MyProjectHome({super.key});

  @override
  State<MyProjectHome> createState() => _MyProjectHomeState();
}

class _MyProjectHomeState extends State<MyProjectHome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              'My Project',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            TextButton(
              // ignore: prefer_const_constructors
              child: Text(
                "See all",
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
            ),
          ],
        ),
        Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 25),
            height: 130.0,
            // color: Colors.blue,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: projects.length,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 320,
                        height: 120,
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.black,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 15, 70, 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                projects[index].name,
                                style: const TextStyle(
                                  fontSize: 15,
                                  letterSpacing: 0.9,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                projects[index].startEndTimes[0],
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                height: 18,
                              ),
                              SizedBox(
                                width: 180,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  child: LinearProgressIndicator(
                                    minHeight: 6.0,
                                    backgroundColor: Colors.white,
                                    // ignore: prefer_const_constructors
                                    valueColor:
                                        const AlwaysStoppedAnimation<Color>(
                                            Color.fromARGB(255, 97, 177, 100)),
                                    value: projects[index].progress / 100,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 180,
                                child: Row(
                                  // ignore: prefer_const_constructors
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      '%${projects[index].progress}',
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      projects[index].status,
                                      style:
                                          const TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ))
      ],
    );
  }
}
