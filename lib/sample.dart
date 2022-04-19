// import 'package:flutter/material.dart';
// import 'package:vimeo_player_flutter/vimeo_player_flutter.dart'; //Vimeo 비디오 플레이
// import 'package:transition/transition.dart'; //FADE
// import 'video_page.dart'; //비디오 페이지
// import 'package:flutter_screenutil/flutter_screenutil.dart'; //화면 반응형
// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
    
//     return MaterialApp(
//       title: 'SeoGamDo',
//        debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: const HomePage(),
//     );
//   }
// }
// class HomePage extends StatelessWidget {
//   const HomePage({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         _pageOfTop(),
//         _pageOfMiddle(),
//         _pageOfBottom(),
//       ],
//     );
//   }
// }

// Widget _pageOfTop() {
//   return ListView(
//       scrollDirection: Axis.vertical,
//       children: <Widget>[
//         Padding(
//           padding: EdgeInsets.fromLTRB(0, 400, 0, 0)),
//         ListTile(
//           leading: Icon(Icons.slow_motion_video),
//           title: Text('Orientation'),
//           onTap: (){  //696776348
//             print('');
//             Navigator.push(
//                   context,
//                   Transition(
//                   child: Video(video_Id: '696776348',), transitionEffect: TransitionEffect.FADE));
//           },
//         ),
//         ListTile(
//           leading: Icon(Icons.slow_motion_video),
//           title: Text('1강 문장읽기'),
//           onTap: (){   //https://vimeo.com/693844826
//              Navigator.push(
//                   context,
//                   Transition(
//                   child: Video(video_Id: '693844826',), transitionEffect: TransitionEffect.FADE));
//           },
//         ),
//         ListTile(
//           leading: Icon(Icons.slow_motion_video),
//           title: Text('2강 문장박사'),
//           onTap: (){    //693856980 
//             print('cliked');
//                Navigator.push(
//                   context,
//                   Transition(
//                   child: Video(video_Id: '693856980',), transitionEffect: TransitionEffect.FADE));
//               },
//             )
            
//       ]
      
//       );
      
      
//   }


// Widget _pageOfMiddle() {
//   return Text('pageOfTop');
// }

// Widget _pageOfBottom() {
//   return Text('pageOfTop');
// }