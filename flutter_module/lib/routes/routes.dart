import 'package:flutter/cupertino.dart';
import 'package:flutter_boost/flutter_boost.dart';
import '../pages/common/debug_main_page.dart';
import '../pages/common/not_found_page.dart';
import '../pages/sing_page.dart';
import '../pages/dance_page.dart';
import '../pages/rap_page.dart';
import '../pages/basketball_page.dart';

Route<dynamic>? routeFactory(RouteSettings settings, String? uniqueId) {
  FlutterBoostRouteFactory? func = _routerMap[settings.name] ?? _routerMap[DYRoute.notFound];
  if (func == null) {
    return null;
  }
  return func(settings, uniqueId);
}

class DYRoute {
  static const String notFound = "niganma://notFound";
  static const String sing = "niganma://sing";
  static const String dance = "niganma://dance";
  static const String rap = "niganma://rap";
  static const String basketball = "niganma://basketball";
}

// 使用高阶函数来简化 _routerMap 的定义
Map<String, FlutterBoostRouteFactory> _routerMap = {
  '/': _getNoArgumentsPage(const DebugMainPage()),
  DYRoute.notFound: _getNoArgumentsPage(const NotFoundPage()),
  DYRoute.sing: _getNoArgumentsPage(const SingPage()),
  DYRoute.dance: _getNoArgumentsPage(const DancePage()),
  DYRoute.rap: _getNoArgumentsPage(const RapPage()),
  DYRoute.basketball: _basketballPage,
};

// 定义一个高阶函数，接收一个 Widget 对象，返回一个 FlutterBoostRouteFactory 函数
FlutterBoostRouteFactory _getNoArgumentsPage(Widget widgetPage) {
  // 返回一个匿名函数，接收 settings 和 uniqueId 参数，返回一个 CupertinoPageRoute 对象
  return (settings, uniqueId) {
    return CupertinoPageRoute(
      settings: settings,
      builder: (_) {
        return widgetPage;
      },
    );
  };
}

Route<dynamic>? _basketballPage(RouteSettings settings, String? uniqueId) {
  return CupertinoPageRoute(
    settings: settings,
    builder: (_) {
      Map<String, Object>? map = settings.arguments as Map<String, Object>?;
      String parameter = (map?['text'] as String?) ?? "";
      return BasketballPage(parameter: parameter);
    },
  );
}
