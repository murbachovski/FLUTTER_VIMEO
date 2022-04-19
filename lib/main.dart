import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vimeo_player_flutter/vimeo_player_flutter.dart'; //Vimeo 비디오 플레이
import 'package:transition/transition.dart'; //FADE
import 'video_page.dart'; //비디오 페이지
import 'package:flutter_screenutil/flutter_screenutil.dart'; //화면 반응형
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'SeoGamDo',
       debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SingleDay-Regular',
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //  강의
  List <dynamic> mainList = [
    ['Oreintation','','10분', '693856980'], //https://vimeo.com/693856980
    ['1강.', '서감문해란', '10분', '693844826'], //https://vimeo.com/693844826
    ['2강.', '문장박사', '10분', '696776348'], //https://vimeo.com/696776348
    ['3강.', '문맥의박사', '10분', '699337992'], //https://vimeo.com/699337992
    ['4강.', '문맥의박사', '10분',],
    ['5강.', '문맥의박사', '10분',],
    ['6강.', '문맥의박사', '10분',],
    ['7강.', '문맥의박사', '10분',],
    ['8강.', '문맥의박사', '10분',],
    ['9강.', '문맥의박사', '10분',],
    ['10강.', '문맥의박사', '10분',],
    ['11강.', '문맥의박사', '10분',],
    ['12강.', '문맥의박사', '10분',],
    ['13강.', '문맥의박사', '10분',],
    ['15강.', '문맥의박사', '10분',],
    ['16강.', '문맥의박사', '10분',],
    ['17강.', '문맥의박사', '10분',],
    ['18강.', '문맥의박사', '10분',],
    ['19강.', '문맥의박사', '10분',],
    ['20강.', '문맥의박사', '10분',],

  ];

  var isSelected = false;


  @override
  Widget build(BuildContext context) {
double sheight = MediaQuery.of(context).size.height;
double swidth = MediaQuery.of(context).size.width; 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('문맥읽기의 짜릿함',style: TextStyle(fontFamily: 'ShadowsIntoLight-Regular', color: Colors.black54),
        ),
        // actions: <Widget>[
        //   IconButton(
        //     icon: const Icon(
        //       Icons.menu,
        //       color: Colors.white,
        //     ),
        //     onPressed: (){},
        //   ),
        // ],
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
                  children:[
                    SizedBox(
                      width: swidth,
                      height: sheight * 0.3,
                      child: Image.asset('assets/images/seogamimage.png',
                      fit: BoxFit.cover,
                      ),
                      ),
                  const SizedBox(
                  height: 0,
                    ),
                    ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                      itemCount: mainList.length,
                      itemBuilder: (BuildContext context, int idex){
                        return Center(
                          child: Container(
                            color: Color.fromARGB(255, 255, 255, 255),
                            alignment: Alignment.topCenter,
                            height: 66,
                            child: Card(
                              shadowColor: Color.fromARGB(255, 0, 0, 0),
                                    shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),   
                                  //Card배경색
                                  color: Color.fromARGB(255, 250, 253, 255),
                                  elevation: 2,
                                    child: ListTile(
                                      textColor: Colors.black54,
                                      title: Padding(
                                        padding: const EdgeInsets.only(left: 16),
                                        child: Row(
                                          children:[ Text(
                                            mainList[idex][0],
                                            textAlign: TextAlign.left, style: const TextStyle(fontWeight: FontWeight.w900),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                            Text(
                                            mainList[idex][1],
                                            textAlign: TextAlign.end, style: const TextStyle(fontWeight: FontWeight.w700),
                                          ),
                                          const SizedBox(
                                            width: 24,
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsets.only(right: 16),
                                              child: Text(
                                                
                                                mainList[idex][2],
                                                textAlign: TextAlign.end, style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.black45),
                                              ),
                                            ),
                                          ),
                                          ],
                                      ),
                                      ),
                                      onTap: (){
                                        // Ink(
                                        // color: isSelected ? Colors.blue : Colors.transparent,
                                        // child: const ListTile(title: Text('')),
                                        // );
                                           Navigator.push(
                                             context,
                                            Transition(
                                            child: Video(video_Id:        mainList[idex][3]),       transitionEffect:       TransitionEffect.FADE));
                                      }
                                                            ),
                            ),
                          ),
                        );
                      },
                    ),
                    ],
                ),
        ),
      ),
      );
  }
}


