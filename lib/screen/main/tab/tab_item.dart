import 'package:fast_app_base/common/common.dart'; // 공통적인 기능과 상수를 담고 있는 프로젝트 내 공통 모듈 import
import 'package:fast_app_base/screen/main/tab/all/f_all.dart';
import 'package:fast_app_base/screen/main/tab/benefit/f_benefit.dart';
import 'package:fast_app_base/screen/main/tab/home/f_home.dart'; // 홈 탭에서 사용하는 화면(HomeFragment) import
import 'package:fast_app_base/screen/main/tab/stock/f_stock.dart';
import 'package:fast_app_base/screen/main/tab/ttosspay/f_ttosspay.dart';
import 'package:flutter/material.dart'; // Flutter의 기본적인 UI 요소와 기능 사용을 위한 import

/// 앱의 하단 탭(Tab)을 정의하는 `TabItem` 열거형(enum)
enum TabItem {
  // 홈 탭: 활성화된 아이콘, 이름, 연결된 첫 페이지 위젯(HomeFragment)을 정의
  home(Icons.home, '홈', HomeFragment()),

  // 혜택 탭: 활성화된 아이콘, 이름, 연결된 첫 페이지 위젯(HomeFragment)을 정의
  benefit(Icons.star, '혜택', BenefitFragment()),

  // 토스페이 탭: 활성화된 아이콘, 이름, 연결된 첫 페이지 위젯(HomeFragment)을 정의
  ttosspay(Icons.payment, '토스페이', TtosspayFragment()),

  // 주식 탭: 활성화된 아이콘, 이름, 연결된 첫 페이지 위젯(HomeFragment)을 정의
  stock(Icons.candlestick_chart, '주식', StockFragment()),

  // 전체 탭: 활성화된 아이콘(메뉴), 이름, 연결된 첫 페이지 위젯(FavoriteFragment)을 정의
  // `FavoriteFragment`는 뒤로 가기 버튼이 비활성화된 설정으로 초기화
  all(Icons.menu, '전체', AllFragment());

  // **변수 정의**
  final IconData activeIcon; // 활성화된 상태의 아이콘 데이터
  final IconData inActiveIcon; // 비활성화된 상태의 아이콘 데이터 (선택적)
  final String tabName; // 탭의 이름 (하단 네비게이션바에 표시될 텍스트)
  final Widget firstPage; // 각 탭에서 처음으로 표시될 화면 위젯

  /// **생성자**
  /// [activeIcon]은 필수적으로 설정
  /// [tabName]은 탭의 이름
  /// [firstPage]는 탭의 첫 번째 화면
  /// [inActiveIcon]은 선택적이며, 기본값은 [activeIcon]과 동일
  const TabItem(this.activeIcon, this.tabName, this.firstPage,
      {IconData? inActiveIcon})
      : inActiveIcon =
            inActiveIcon ?? activeIcon; // 비활성화 아이콘이 주어지지 않으면 활성화 아이콘을 기본값으로 설정

  /// **탭을 `BottomNavigationBarItem` 객체로 변환하는 메서드**
  /// [context]: 앱의 컨텍스트 (테마 색상 정보에 접근하기 위해 사용)
  /// [isActivated]: 해당 탭이 활성화 상태인지 여부
  BottomNavigationBarItem toNavigationBarItem(BuildContext context,
      {required bool isActivated}) {
    return BottomNavigationBarItem(
        // 아이콘: 활성화 여부에 따라 다른 아이콘을 표시
        icon: Icon(
          key: ValueKey(tabName), // 아이콘에 고유한 키를 부여 (재빌드 최적화 목적)
          isActivated ? activeIcon : inActiveIcon, // 활성화 상태에 따라 아이콘 설정
          color: isActivated
              ? context.appColors.iconButton // 활성화 상태의 색상
              : context.appColors.iconButtonInactivate, // 비활성화 상태의 색상
        ),
        label: tabName); // 아이템 이름 (탭에 표시될 텍스트)
  }
}
