import 'package:flutter/material.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  static final Widget title = Text('Simple Clean Architecture Demo');

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Overview Screen"),
      ),
    );
  }
}
