//앱 내 사용할 값들을 저장하는 공간
abstract class AppValues {
  // static const double screenPadding = 20;
  // static const double margin = 16;
  //
  // static const double buttonRadius = 8;
  // static const double buttonHeight = 50;
  //
  // static const double iconDefaultSize = 24;
  // static const double floatButtonSize = 72;
  // static const double listBottomEmptySpace = 200;
  //
  // static const int loggerLineLength = 120;
  // static const int loggerErrorMethodCount = 8;
  // static const int loggerMethodCount = 2;
  //
  // static const int defaultPageSize = 10;
  // static const int defaultPageNumber = 1;
  // static const int defaultDebounceTimeInMilliSeconds = 1000;
  // static const int defaultThrottleTimeInMilliSeconds = 500;
  static const  Map<String, dynamic> fileData = {
    "pictograms": ['train', 'home', 'instrument', 'HomeAppliance', 'dinosaur', 'Bug', 'car', "seaAnimals", "landmark", "zoo", "job", "furniture"],
    "levelTitle": ["Level 1", "Level 1+", "Level 2", "Level 2+", "Level 3", "Level 3+"],

    "level": ["lv1", "lv1+", "lv2", "lv2+", "lv3", "lv3+"],
    "category": ["기차", "집", "악기", "가전제품", "공룡", "곤충", "바퀴 달린 자동차", "바다 동물", "랜드마크", "동물원", "직업과 알맞은 물건", "가구"],
    "content": [
      [
        {
          "imageNumber": 4,
          "hints": [],
          "name": "꼬마 기차"
        },
        {
          "imageNumber": 4,
          "hints": [],
          "name": "기차"
        },
        {
          "imageNumber": 6,
          "hints": ["st3_h1.png", "st4_h1.png"],
          "name": "증기 기차"
        },
        {
          "imageNumber": 9,
          "hints": [],
          "name": "화물 기차"
        },
        {
          "imageNumber": 10,
          "hints": ["st4_h1.png"],
          "name": "깃발이 달린 기차"
        },
        {
          "imageNumber": 9,
          "hints": [],
          "name": "여객 기차"
        }
      ],[
        {
          "imageNumber": 2,
          "hints": [],
          "name": "집 1"
        },
        {
          "imageNumber": 5,
          "hints": [],
          "name": "집 1+"
        },
        {
          "imageNumber": 6,
          "hints": ["st6_h1.png"],
          "name": "집 2"
        },
        {
          "imageNumber": 7,
          "hints": ["st2_h1.png", "st4_h1.png"],
          "name": "집 2+"
        },
        {
          "imageNumber": 7,
          "hints": ["st2_h1.png", "st6_h1.png", "st6_h2.png"],
          "name": "집 3"
        },
        {
          "imageNumber": 10,
          "hints": ["st7_h1.png", "st10_h1.png"],
          "name": "집 3+"
        }
      ],[
        {
          "imageNumber": 4,
          "hints": [],
          "name": "피리"
        },
        {
          "imageNumber": 6,
          "hints": [],
          "name": "핸드벨"
        },
        {
          "imageNumber": 6,
          "hints": [],
          "name": "나팔"
        },
        {
          "imageNumber": 7,
          "hints": ["st6_h1.png", "st6_h2.png", "st7_h1.png"],
          "name": "기타"
        },
        {
          "imageNumber": 10,
          "hints": ["st6_h1.png", "st6_h2.png"],
          "name": "튜바"
        },
        {
          "imageNumber": 12,
          "hints": ["st4_h1.png"],
          "name": "피아노"
        }
      ],[
        {
          "imageNumber": 4,
          "hints": [],
          "name": "TV와 리모컨"
        },
        {
          "imageNumber": 3,
          "hints": [],
          "name": "선풍기"
        },
        {
          "imageNumber": 5,
          "hints": ["st5_h1.png", "st5_h2.png"],
          "name": "청소기"
        },
        {
          "imageNumber": 10,
          "hints": ["st1_h1.png", "st2_h1.png", "st5_h1.png", "st8_h1.png"],
          "name": "믹서기"
        },
        {
          "imageNumber": 6,
          "hints": ["st2_h1.png", "st3_h1.png", "st5_h1.png"],
          "name": "헤어 드라이어"
        },
        {
          "imageNumber": 9,
          "hints": ["st7_h1.png"],
          "name": "다리미"
        }
      ],[
        {
          "imageNumber": 4,
          "hints": [],
          "name": "공룡 알"
        },
        {
          "imageNumber": 5,
          "hints": [],
          "name": "아기 공룡"
        },
        {
          "imageNumber": 7,
          "hints": ["st7_h1.png"],
          "name": "브라키오사우루스"
        },
        {
          "imageNumber": 11,
          "hints": [],
          "name": "크로노사우루스"
        },
        {
          "imageNumber": 12,
          "hints": ["st7_h1.png", "st7_h2.png", "st8_h1.png","st9_h1.png"],
          "name": "트리케라톱스"
        },
        {
          "imageNumber": 11,
          "hints": ["st4_h1.png", "st8_h1.png", "st11_h1.png", "st11_h2.png","st11_h3.png"],
          "name": "프테라노돈"
        }
      ],[
        {
          "imageNumber": 4,
          "hints": [],
          "name": "번데기"
        },
        {
          "imageNumber": 5,
          "hints": [],
          "name": "애벌레"
        },
        {
          "imageNumber": 7,
          "hints": ["st5_h1.png"],
          "name": "매미"
        },
        {
          "imageNumber": 9,
          "hints": ["st8_h1.png", "st9_h1.png"],
          "name": "잠자리"
        },
        {
          "imageNumber": 13,
          "hints": ["st8_h1.png", "st9_h1.png"],
          "name": "사마귀"
        },
        {
          "imageNumber": 13,
          "hints": ["st6_h1.png", "st6_h2.png", "st6_h3.png", "st9_h1.png"],
          "name": "사슴벌레"
        }
      ],[
        {
          "imageNumber": 4,
          "hints": [],
          "name": "캠핑카"
        },
        {
          "imageNumber": 7,
          "hints": ["st3_h1.png"],
          "name": "경찰차"
        },
        {
          "imageNumber": 12,
          "hints": ["st2_h1.png", "st9_h1.png"],
          "name": "2층 버스"
        },
        {
          "imageNumber": 13,
          "hints": ["st11_h1.png"],
          "name": "지게차"
        },
        {
          "imageNumber": 16,
          "hints": [],
          "name": "굴착기"
        },
        {
          "imageNumber": 15,
          "hints": ["st3_h1.png", "st6_h1.png", "st7_h1.png", "st7_h2.png", "st11_h1.png", "st11_h2.png"],
          "name": "덤프트럭"
        }
      ], [
        {
          "imageNumber": 3,
          "hints": [],
          "name": "해마"
        },
        {
          "imageNumber": 6,
          "hints": [],
          "name": "날치"
        },
        {
          "imageNumber": 8,
          "hints": [],
          "name": "거북이"
        },
        {
          "imageNumber": 9,
          "hints": ["st3_h1.png", "st4_h1.png", "st7_h1.png"],
          "name": "가오리"
        },
        {
          "imageNumber": 14,
          "hints": ["st7_h1.png", "st8_h1.png", "st9_h1.png", "st13_h1.png", "st14_h1.png"],
          "name": "초롱아귀"
        },
        {
          "imageNumber": 15,
          "hints": ["st5_h1.png", "st8_h1.png"],
          "name": "문어"
        }
      ], [
        {
          "imageNumber": 4,
          "hints": [],
          "name": "빅벤"
        },
        {
          "imageNumber": 5,
          "hints": [],
          "name": "마리나베이"
        },
        {
          "imageNumber": 7,
          "hints": ["st5_h1.png", "st5_h2.png", "st5_h3.png", "st8_h1.png"],
          "name": "숭례문"
        },
        {
          "imageNumber": 8,
          "hints": ["st5_h1.png", "st5_h2.png", "st5_h3.png", "st8_h1.png"],
          "name": "에펠탑"
        },
        {
          "imageNumber": 10,
          "hints": ["st3_h1.png", "st6_h1.png", "st8_h1.png"],
          "name": "스핑크스"
        },
        {
          "imageNumber": 14,
          "hints": ["st11_h1.png"],
          "name": "금문교"
        }
      ], [
        {
          "imageNumber": 3,
          "hints": [],
          "name": "두더지"
        },
        {
          "imageNumber": 6,
          "hints": ["st6_h1.png"],
          "name": "토끼"
        },
        {
          "imageNumber": 7,
          "hints": ["st3_h1.png"],
          "name": "플라밍고"
        },
        {
          "imageNumber": 8,
          "hints": ["st1_h1.png", "st2_h1.png", "st4_h1.png", "st5_h1.png"],
          "name": "코브라"
        },
        {
          "imageNumber": 10,
          "hints": ["st6_h1.png"],
          "name": "코끼리"
        },
        {
          "imageNumber": 13,
          "hints": [],
          "name": "캥거루"
        }
      ], [
        {
          "imageNumber": 5,
          "hints": [],
          "name": "망치"
        },
        {
          "imageNumber": 5,
          "hints": [],
          "name": "주사기"
        },
        {
          "imageNumber": 6,
          "hints": ["st3_h1.png"],
          "name": "칼"
        },
        {
          "imageNumber": 6,
          "hints": [],
          "name": "삽"
        },
        {
          "imageNumber": 8,
          "hints": ["st3_h1.png", "st4_h1.png"],
          "name": "총"
        },
        {
          "imageNumber": 11,
          "hints": ["st1_h1.png", "st6_h1.png"],
          "name": "캥거루"
        }
      ], [
        {
          "imageNumber": 4,
          "hints": [],
          "name": "시계"
        },
        {
          "imageNumber": 5,
          "hints": [],
          "name": "옷걸이"
        },
        {
          "imageNumber": 7,
          "hints": [],
          "name": "우주선"
        },
        {
          "imageNumber": 11,
          "hints": ["st6_h1.png"],
          "name": "액자"
        },
        {
          "imageNumber": 9,
          "hints": [],
          "name": "책걸상"
        },
        {
          "imageNumber": 12,
          "hints": ["st4_h1.png", "st7_h1.png"],
          "name": "2층침대"
        }
      ]
    ]
  };
}
