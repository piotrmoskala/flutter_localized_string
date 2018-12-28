import 'package:flutter/material.dart';
import 'package:flutter_localized_string/flutter_localized_string.dart';

class LocalizedWidget extends StatefulWidget {
  final Widget widget;

  LocalizedWidget({this.widget});

  @override
  State<StatefulWidget> createState() {
    return _LocalizedWidget(wrappedWidget: widget);
  }
}

class _LocalizedWidget extends State<LocalizedWidget> {
  Widget wrappedWidget;

  _LocalizedWidget({this.wrappedWidget});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
            child: new Center(
                // Use future builder to load the local JSON file
                child: new FutureBuilder(
                    future: LocalizedString.preloadLocalizedStrings(context),
                    builder: (context, snapshot) {
                      //workaround - snapshot data is null when app is building widget tree
                      if(snapshot.data == null) return Container();
                      return wrappedWidget;
                    }
                )
            )
        )
    );
  }
}
