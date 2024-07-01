import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/main_page/main_page.dart';
import 'package:multi_sensory_enhancement_program/app/view/main_page/category_page.dart';
import 'package:multi_sensory_enhancement_program/app/view/main_page/category_search_page.dart';
import 'package:multi_sensory_enhancement_program/app/view/child/contents_page.dart';
import 'package:multi_sensory_enhancement_program/app/view/child/preview_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // build메소드는 구현한 UI위젯들을 화면에 출력될 수 있도록 리턴해준다.
  @override
  // 여기서 context는 이 MyApp을 부르는 부모 위젯의 위치 정보를 담고 있다.
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '다감각 향상 프로그램',
        debugShowCheckedModeBanner: false,
        // initialRoute는 멀티 페이지 이동을 할때, 화면에 제일 처음 출력되는 라우트를 불러오는 역할을 한다.
        initialRoute: '/main',
        routes: {
          '/main': (context) => const MainPage(),
          '/preview': (context) {
            final routeSettings = ModalRoute.of(context)!.settings;
            final args = routeSettings.arguments as Map<String, int>? ?? {};
            return PreviewPage(
              level: args['level'] ?? 1, // 기본값을 제공
              category: args['category'] ?? 1, // 기본값을 제공
            );
          },
          '/contents': (context) {
            final routeSettings = ModalRoute.of(context)!.settings;
            final args = routeSettings.arguments as Map<String, int>? ?? {};
            return ContentsPage(
              level: args['level'] ?? 1, // 기본값을 제공
              category: args['category'] ?? 1, // 기본값을 제공
            );
          },
          '/category': (context) {
            final routeSettings = ModalRoute.of(context)!.settings;
            final args = routeSettings.arguments as Map<String, int>? ?? {};
            return CategoryPage(
              level: args['level'] ?? 1, // 기본값을 제공
            );
          },
          '/category_search': (context) {
            final routeSettings = ModalRoute.of(context)!.settings;
            final args = routeSettings.arguments as Map<String, String>? ?? {};
            return CategorySearchPage(
              searchText: args['searchText'] ?? "", // 기본값을 제공
            );
          },
        }
    );
  }
}
