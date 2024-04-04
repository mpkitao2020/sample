import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'components/bottom_nav_bar_items.dart';
import 'utils/theme.dart';
import 'utils/constants.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late final WebViewController controller;
  int _selectedIndex = 0;
  bool showBottomNavigationBar = true;
  bool showNotificationBadge = true;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(Uri.parse(webBaseUrl))
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..addJavaScriptChannel('flutterWebView01', onMessageReceived: (message) {
        setState(() {
          showBottomNavigationBar = !showBottomNavigationBar;
        });
      })
      ..addJavaScriptChannel('flutterWebView02', onMessageReceived: (message) {
        setState(() {
          showNotificationBadge = !showNotificationBadge;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: WebViewWidget(
            controller: controller,
          ),
          bottomNavigationBar: showBottomNavigationBar
              ? BottomNavigationBar(
                  items: buildBottomNavBarItems(showNotificationBadge),
                  currentIndex: _selectedIndex,
                  onTap: (int index) {
                    controller
                        .runJavaScriptReturningResult('fromFlutter(${index})');
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  iconSize: AppIconSizes.navigationBar,
                  selectedLabelStyle: TextStyle(
                      fontSize: AppTextSizes.navigationBar,
                      fontWeight: FontWeight.bold),
                  unselectedLabelStyle: TextStyle(
                      fontSize: AppTextSizes.navigationBar,
                      fontWeight: FontWeight.bold),
                )
              : null,
        ),
      ),
    );
  }
}
