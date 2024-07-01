import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_level_button.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_img_button.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_text_field.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_string.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_values.dart';
import 'package:flutter_switch/flutter_switch.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isSwitched = false;
  // late 키워드는 나중에 초기화 됨을 나타냅니다.
  // 앱을 켰을때 레벨쪽으로 토글한뒤 그때의 화면을 컨트롤 하는데 사용되는 객체.
  late ScrollController levelScrollController;
  // 앱을 처음 켰을때 테마쪽 페이지에서 화면을 컨트롤 하는데 사용되는 객체.
  late ScrollController imgScrollController;
  // 위젯의 텍스트 값을 제어하고 추적하는데 사용되는 객체.
  late TextEditingController textEditingController;
  List<int> categoryIdxs = [for (int i = 0; i < AppValues.fileData["category"].length; i++) i];
  String searchText = "";
  bool status = false;

  // 스위치가 토글될때 호출되는 메서드이다.
  void toggleSwitch(bool value) {
    setState(() {
      isSwitched = value;
    });
    // 스크롤 가능한 위젯 (GridView)의 스크롤 동작을 제어.
    // jumpTo()는 스크롤 위치를 즉시 특정 위치로 이동시키는 역할을 한다.
    if (levelScrollController.hasClients) {
      // 스크롤 위치를 맨 위로 이동시킨다.
      levelScrollController.jumpTo(0);
    }
    if (imgScrollController.hasClients) {
      imgScrollController.jumpTo(0);
    }
    // 검색 텍스트 초기화.
    searchText = "";
    // 카테고리 인덱스 초기화.
    categoryIdxs = [for (int i = 0; i < AppValues.fileData["category"].length; i++) i];
  }



  @override
  // 위젯이 처음 생성 될때 한번 호출된다.
  void initState() {
    super.initState();
    levelScrollController = ScrollController();
    imgScrollController = ScrollController();
    textEditingController = TextEditingController();
  }

  @override
  // 위젯이 삭제될때 호출되어 메모리 누수를 방지한다.
  void dispose() {
    levelScrollController.dispose();
    imgScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Background.png'), // Change to your background image path
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 제스처를 감지하고 처리하는 위젯, onTop 콜백을 사용하여 탭 제스처를 처리합니다.
                  GestureDetector(child: Image.asset('images/Button/button_manual.png',  width: 50, height: 50), onTap: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                      // 하단에 일시적으로 메세지를 표시하는 위젯이다.
                      SnackBar(
                        content: Text("개발 중입니다."),
                        duration: Duration(seconds: 2), // 메시지 표시 시간 설정
                      ),
                    );
                  }),
                  Image.asset('images/creamo_logo.png',height: 30, fit:BoxFit.fitHeight),
                  // 여백.
                  SizedBox(width: 50)
                ]
            ),
            const SizedBox(height: 20),
            Image.asset(
              'images/CommonUse/common_title.png', // 두 번째 이미지 파일 경로
              height: 80,
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(height: 10),
            // theme view면 search box display.
            if (!isSwitched) ...[
              // 여백.
              const SizedBox(height: 10),
              // Use Row for horizontal arrangement

              CRMTextField(
                  iconName: Icons.search,
                  // search box 에 placeholder 설정.
                  hintText: AppString.str_themeSearch,
                  // 텍스트 입력 후 키보드의 제출 버튼을 눌렀을 때 호출될 콜백 함수 지정.
                  keyboardSubmit: _handleSearchText,
                  controller: textEditingController
              ),

            ],
            // level view 면 search box hide.
            if (isSwitched)
              // search box 없으니 여백 크게 준다.
              SizedBox(height: 60),
            // 여백.
            const SizedBox(height: 5),
            Expanded(
              child: Stack(
                children: [
                  // buildLevelButtonPage() 또는 buildImgButtonPage()
                  Padding(
                    padding: EdgeInsets.only(top: 45), // Switch의 높이만큼 여백을 추가
                    child: isSwitched ? buildLevelButtonPage() : buildImgButtonPage(),
                  ),
                  // CupertinoSwitch를 오른쪽 상단에 배치
                  Positioned(
                    top: 0,
                    right: 0,
                    child: FlutterSwitch(
                      width: 70.0,
                      height: 30.0,
                      valueFontSize: 15.0,
                      toggleSize: 25.0,
                      value: status,
                      borderRadius: 15.0,
                      padding: 4.0,
                      showOnOff: true,
                      onToggle: (val) {
                        setState(() {
                          status = val;
                          isSwitched = val; // Update isSwitched when the switch is toggled
                          toggleSwitch(val); // Call your existing toggleSwitch method
                        });
                      },
                      activeText: '레벨',
                      inactiveText: '테마',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLevelButtonPage() {
    // Level 페이지 구성
    return SizedBox(
      height: 800,
      width: 800,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 1,
        ),
        itemCount: AppValues.fileData["level"].length,
        itemBuilder: (context, index) {
          int newIndex = index ~/ 3 == 0? index * 2 : (index % 3) * 2 + 1;
          return createLevelButtonData(newIndex);
        },
        controller: levelScrollController, // 전달받은 컨트롤러 사용
      ),
    );
  }


  Widget createLevelButtonData(index) {
    return CRMLevelButton(
      imagePath: 'images/Button_Level/Button_${AppValues.fileData["level"][index].toString()}.png',
      level: index
    );
  }

  Widget buildImgButtonPage() {
    // Image 페이지 구성
    return SizedBox(
      height: 800,
      width: 800,
      // 그리드 형태로 아이템들을 동적으로 생성하고 배치하는 위젯.
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 1,
        ),
        // 그리드의 아이템 갯수를 설정한다, 여기서는 categoryIdxs리스트의 길이를 사용한다.
        itemCount: categoryIdxs.length,
        itemBuilder: (context, index) {
          return createImgButtonData(index);
        },
        controller: imgScrollController, // 전달받은 컨트롤러 사용
      ),
    );
  }

  Widget createImgButtonData(index) {
    return CRMImgButton(
      title: AppValues.fileData["category"][categoryIdxs[index]].toString() + ' 만들기',
      imagePath: 'images/pictograms/Picto_${AppValues.fileData["pictograms"][categoryIdxs[index]].toString()}.png',
      imageIdx: categoryIdxs[index],
    );
  }

  void _handleSearchText(String text) {
    Navigator.pushNamed(
      context,
      '/category_search',
      arguments: {'searchText': text},
    );
  }
}
