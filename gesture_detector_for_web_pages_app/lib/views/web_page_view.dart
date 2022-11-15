import 'package:flutter/material.dart';
import 'package:gesture_detector_for_web_pages_app/core/themes/custom_theme_data.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPageView extends StatelessWidget {
  const WebPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height / 15),
            child: Container(
              alignment: Alignment.centerLeft,
              color: CustomTheme.customAppBarColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.arrow_back)),
              ),
            ),
          ),
          body: Stack(
            children: [
              const WebView(
                initialUrl: 'https://google.com',
                javascriptMode: JavascriptMode.unrestricted,
              ),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onHorizontalDragStart: (_) => debugPrint('Horizontal'),
                onTap: () => debugPrint('One Tap'),
                onDoubleTap: (() => debugPrint('Double Tap')),
                //child: Container(),
              ),
            ],
          )),
    );
  }
}
