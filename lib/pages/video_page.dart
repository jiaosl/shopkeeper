import 'package:fezs_shopkeeper/mixin/toast_mixin.dart';
import 'package:fezs_shopkeeper/routes/routes.dart';
import 'package:fezs_shopkeeper/utils/navigator_utils.dart';
import 'package:fezs_shopkeeper/values/styles.dart';
import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  VideoPage({Key key}) : super(key: key);

  @override
  _PicturePageState createState() => _PicturePageState();
}

class _PicturePageState extends State<VideoPage> with ToastMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '视频',
          ),
          centerTitle: true,
        ),
        body: Container(
          // child: Text("视频页面"),
          child: GestureDetector(
            onTap: () {
              NavigatorUtil.navigateToHomeRemoveAll(context);
            },
            child: Center(
              child: Text("回到首页", style: TvStyle.style_777777_72),
            ),
          ),
        ));
  }
}
