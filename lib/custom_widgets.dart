/* consumer ile */
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class StyledAppTitle extends StatelessWidget {
  const StyledAppTitle({super.key});
  // final ttt = Provider.of<AppController>(context, listen: false).appTitle;
  // final xxx = (context.watch<AppController>().appTitle).toString()
  @override
  Widget build(BuildContext context) {
    // print(context.watch<AppController>().appTitle);
    // return Text(appTitle,
    return Consumer<AppController>(builder: (context, provider, child) {
      // return Text(provider.activeConvexTab.toString(),// bu haliyle calisti!
      return Text(provider.appTitle,
          style: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, .9),
              fontSize: 23.0,
              fontWeight: FontWeight.bold));
    });
  }
}
