import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class PageProvider extends ChangeNotifier {
  PageController scrollController = PageController();

  final List<String> _pages = [
    'home',
    'about',
    'location',
    'contact',
    'pricing',
  ];

  crateScrollController(String routeName) {
    final index = getPageIndex(routeName);
    html.document.title = _pages[getPageIndex(routeName)];
    scrollController = PageController(initialPage: index);
  }

  int getPageIndex(String routeName) {
    return (!_pages.contains(routeName)) ? 0 : _pages.indexOf(routeName);
  }

  goTo(int index) {
    final routeName = _pages[index];
    html.document.title = _pages[index];
    html.window.history.pushState(null, routeName, '#/$routeName');
    scrollController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
