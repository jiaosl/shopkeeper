import 'package:fezs_shopkeeper/application.dart';
import 'package:fezs_shopkeeper/utils/js_send_manager.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:webview_flutter/webview_flutter.dart';

import 'dart:convert' as convert;

class WebViewPage extends StatefulWidget {
  String title = "webView";
  String url =
      "https://fedev.feng1.com/static/manager/pages/components/getAndroidData/getAndroidData.html";

  @override
  State<StatefulWidget> createState() => _WebViewPageState();

  WebViewPage(this.url);
}

class _WebViewPageState extends State<WebViewPage> {
  WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.title}',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: Application.getInstance().screenUtil.setHeight(1080),
              width: Application.getInstance().screenUtil.setWidth(1080),
              child: WebView(
                initialUrl: widget.url,
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (controller) {
                  _controller = controller;
                },
                javascriptChannels: <JavascriptChannel>[
                  JavascriptChannel(
                      name: "fezs",
                      onMessageReceived: (JavascriptMessage message) {
                        setState(() {
                          // message.message;
                        });
                      }),
                ].toSet(),
              ),
            )
          ],
        ),
      ),
    );
  }

  void sendMsgToJs() {
    var list = [
      "https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3437217665,1564280326&fm=26&gp=0.jpg",
      "https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3922344982,423380743&fm=26&gp=0.jpg",
      "https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2462146637,4274174245&fm=26&gp=0.jpg",
      "https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=4142587453,3986655608&fm=26&gp=0.jpg"
    ];

    String jsonStringA = convert.jsonEncode(list);
    _controller.evaluateJavascript("showToast('$jsonStringA','list')");
  }

  void send3001() {
    var list = [
      "https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3437217665,1564280326&fm=26&gp=0.jpg",
      "https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3922344982,423380743&fm=26&gp=0.jpg",
      "https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2462146637,4274174245&fm=26&gp=0.jpg",
      "https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=4142587453,3986655608&fm=26&gp=0.jpg"
    ];

    JsSendManager.getInstance().send3001(list, (json) {
      String imgJson = json;
      _controller.evaluateJavascript("showToast('$imgJson','list')");
    });
  }
}
