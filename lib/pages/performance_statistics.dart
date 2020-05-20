
import 'package:fezs_shopkeeper/redux/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class PerformanceStatistics extends StatefulWidget {
  @override
  _PerformanceStatisticsState createState() => _PerformanceStatisticsState();
}

class _PerformanceStatisticsState extends State<PerformanceStatistics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("业绩统计"),
        centerTitle: true,
      ),
      body: StoreProvider(
        store: store,
        child: StreamBuilder(
            stream: null,
            builder: (context, snapdate) {
              return Text("业绩统计");
            }),
      ),
    );
  }
}