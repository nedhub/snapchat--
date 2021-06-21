import 'package:flutter/material.dart';

class Body2 extends StatefulWidget {
  Body2({Key? key}) : super(key: key);

  @override
  _Body2State createState() => _Body2State();
}

class _Body2State extends State<Body2> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height,
              child: ClipRRect(),
            ),
            Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0)
              ], end: Alignment.topCenter, begin: Alignment.bottomCenter)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, bottom: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 40),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.arrow_upward, color: Colors.white, size: 28),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 12, right: 12, bottom: 8, top: 8),
                            child: Text("View More Episodes",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        width: 35,
                        height: 36,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black.withOpacity(0.2),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                        child: Center(
                          child: Icon(Icons.location_on,
                              size: 20, color: Colors.white),
                        ))
                  ]),
            )
          ],
        ));
  }
}
