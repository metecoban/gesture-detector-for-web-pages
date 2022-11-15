import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:gesture_detector_for_web_pages_app/views/web_page_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
            // It does not work; only for showing.
            behavior: HitTestBehavior.translucent,
            onHorizontalDragStart: (_) =>
                debugPrint('Horizontal for Flutter Web Browser'),
            onTapUp: (_) => debugPrint('Ontap for Flutter Web Browser'),
          ),
          Center(
            child: Wrap(
              spacing: 20,
              direction: Axis.vertical,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    openBrowserTab();
                  },
                  child: const Text('Flutter Web Browser (Does not work)'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WebPageView()),
                    );
                  },
                  child: const Text('Web View'),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) => const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: WebPageView(),
                            ));
                  },
                  child: const Text('Web View with showDialog'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

openBrowserTab() async {
  await FlutterWebBrowser.openWebPage(
    url: 'https://www.google.com',
  );
}
