import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/d_notification.dart';
import 'package:fast_app_base/screen/notification/notifications_dummy.dart';
import 'package:fast_app_base/screen/notification/w_notification_item.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen(
      {super.key}); // NotificationScreen 위젯 생성, StatefulWidget으로 선언

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
  // NotificationScreen의 상태(State)를 관리하는 클래스 생성
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    // UI를 빌드하는 메서드
    return Scaffold(
      // 화면의 기본 구조를 제공하는 Scaffold 위젯
      body: CustomScrollView(
        // 스크롤 가능한 영역을 만들기 위한 CustomScrollView
        slivers: [
          // Sliver는 "scrollable 영역을 조각으로 나눌 수 있는 위젯"입니다.
          // Slivers를 사용하면 스크롤 가능한 UI를 유연하고 효율적으로 구성할 수 있습니다.
          SliverAppBar(
            // 스크롤 가능한 AppBar를 제공하는 SliverAppBar
            title: Text("알림"),
            // AppBar의 제목을 "알림"으로 설정
          ),
          SliverList(
            // 스크롤 가능한 리스트를 생성하는 SliverList
            delegate: SliverChildBuilderDelegate(
              // 리스트 항목을 동적으로 생성하기 위한 빌더
              (context, index) => NotificationItemWidget(
                // 개별 알림 항목을 표시하는 NotificationItemWidget 생성
                notification: notificationsDummies[index],
                // 더미 데이터에서 알림 항목을 가져와 전달
                onTap: () {
                  // 알림 항목 클릭 시 동작 정의
                  NotificationDialog(
                          [notificationsDummies[0], notificationsDummies[1]])
                      .show();
                  // 두 개의 더미 알림 데이터를 포함한 NotificationDialog 표시
                },
              ),
              childCount: notificationsDummies.length,
              // 리스트 항목의 개수를 더미 데이터 개수만큼 설정
            ),
          ),
        ],
        // SliverAppBar와 SliverList는 각각 스크롤 가능하며 CustomScrollView의 일부로 동작
      ),
    );
  }
}

// Sliver의 개념
// Sliver는 Flutter에서 스크롤 가능한 영역을 구성하는 조각 단위의 위젯입니다.
// CustomScrollView와 함께 사용되며, 다양한 형태의 스크롤 가능한 콘텐츠를 효율적으로 만들 수 있습니다.
// Slivers는 스크롤 위치에 따라 크기나 형태가 동적으로 변경될 수 있어, 유연한 레이아웃 구현에 적합합니다.

// 이 코드에서 사용된 Sliver 종류
// SliverAppBar
// 스크롤 가능한 AppBar를 생성합니다.
// 스크롤하면서 고정되거나, 크기가 줄어드는(AppBar 축소) 애니메이션 효과를 줄 수 있습니다.
// 이 코드에서는 제목만 표시하는 간단한 AppBar로 사용됩니다.
// SliverList
// 스크롤 가능한 리스트를 생성합니다.
// 많은 양의 데이터를 표시해야 할 때, SliverList는 화면에 필요한 항목만 로드하여 성능을 최적화합니다.
// SliverChildBuilderDelegate를 사용하여 동적으로 리스트 항목을 생성하며, 이 델리게이트는 항목의 개수와 각 항목의 빌더를 정의합니다.

// Sliver의 주요 장점
// 효율성: 필요한 부분만 렌더링하여 성능을 최적화.
// 유연성: AppBar, 리스트, 그리드, 헤더 등 다양한 UI 요소를 커스터마이징 가능.
// 스크롤 효과: 스크롤 시 다양한 애니메이션과 동작을 쉽게 구현.

// CustomScrollView와 Slivers의 조합
// CustomScrollView는 여러 개의 Sliver를 조합하여 하나의 스크롤 가능한 영역을 만듭니다.
// 위의 코드는 다음과 같은 조합을 보여줍니다:
// 상단에 SliverAppBar로 제목을 표시.
// 그 아래에 SliverList로 알림 리스트를 스크롤 가능하게 표시.