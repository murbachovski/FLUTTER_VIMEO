import 'package:flutter/material.dart';
import 'package:vimeo_player_flutter/vimeo_player_flutter.dart';
import 'package:transition/transition.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Video extends StatelessWidget {
  String video_Id = '';
  Video({ Key? key, required String this.video_Id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton( onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.close)),
        
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
                  color: Colors.black,
                  height: 250,
                  child: VimeoPlayer(
                  videoId: video_Id,
),
),
      ),
);
},
);
}
}