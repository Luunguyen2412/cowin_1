import 'dart:io';

import 'package:cowin_1/common/config/texts_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhysicallyDetail extends StatefulWidget {
  final int id;
  const PhysicallyDetail(this.id, {Key? key}) : super(key: key);

  @override
  State<PhysicallyDetail> createState() => _PhysicallyDetailState();
}

class _PhysicallyDetailState extends State<PhysicallyDetail> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Hero(
        tag: "physically_detail${widget.id}",
        child: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    ClipPath(
                      clipper: MyCustomClipper(),
                      child: Container(
                        height: 280.h,
                        width: double.infinity,
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Image.asset("assets/images/py.jpg"),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            "6 motion exercises at bed for Covid-19 patients",
                            style: kText30Bold_3,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            child: Text(
                              """Exercise, listen to music, read a book, watch a movie, or learn a new musical instrument to reduce stress while isolating at home, experts suggest.

Doctor Nguyen Viet Chung, Department of Mental Health, Hospital E, said that the Covid-19 epidemic was long and complicated, greatly affecting people's lives and changing many people's habits. In which, the F0 and F1 groups isolated at home are more likely to experience stressful expressions such as feeling scared, worried about getting sick or sad or disappointed when they are the source of infection for their family. This group can vary in appetite, desires and preferences; Difficulty sleeping, stress.

The pandemic has also had a strong impact on some businesses, causing them to struggle to manage their economy.

Chung advised that in order to control stress, people need to learn how to adapt, accept "living together safely" with the epidemic, and implement isolation on time with a comfortable mentality, without putting pressure on themselves. body, don't think too much.

Regularly communicate with family members, friends and colleagues by phone, text message, video call every day. During the time of social distancing, if you are isolated with your family, spend more time taking care of them to reduce negative thoughts.

When isolated at home, you should maintain a healthy diet, in which you should pay attention to foods with easily absorbed protein such as shrimp, crab, fish... especially protein of plant origin. like soybeans. These foods are rich in zinc, B vitamins, selenium, fatty acids, amino acids, and tryptophan. Add fruits, vegetables, tubers such as: raspberries, potatoes, bananas, avocados, oranges, tangerines, kiwis. These fruits are rich in vitamin C, vitamin B, potassium, amino acids... to help calm the nervous system.

Take time to exercise at home, help reduce the body's stress hormones, live a healthier and more active life. Listen to music, read a book, meditate or watch an entertaining movie.

If you still have to work during quarantine, you should arrange your time and schedule accordingly. Do not sit for too long in front of the computer, sometimes get up and walk to relax your mind.

Select positive information to read, reduce news about the Covid-19 situation. Avoid stimulants like alcohol, caffeine, and nicotine before bed. Get enough sleep 7-8 hours a day.

Fully stocked with some necessary medicines such as antipyretic, vitamin C, diarrhea, stomach, mineral spray, mask, ... to be proactive in all cases.

In children, prolonged absence from school, limited outdoor play, parents should limit children playing phones and computers, leading to myopia, game addiction, and distraction from studying. Families need to arrange time to play with their children, teach them to play musical instruments or other games to prevent boredom.

The elderly and people with underlying medical conditions need to take medicine regularly, practice nutrition and report their health status every day to medical staff, to avoid anxiety when isolated alone.
     """,
                              style: kText16Normal_3,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50.h,
                      width: 50.h,
                      margin: EdgeInsets.only(top: 10.h, right: 10.w),
                      child: Icon(
                        Icons.cancel_outlined,
                        color: Colors.white,
                        size: 45.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height - 80, size.width, size.height);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
