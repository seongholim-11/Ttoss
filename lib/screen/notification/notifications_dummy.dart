import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/vo/notification_type.dart';

import 'vo/vo_notification.dart';

final notificationsDummies = <TtossNotification>[
  TtossNotification(NotificationType.tossPay, '이번주에 영화 한 편 어때요? CGV 할인 쿠폰이 도착!',
      DateTime.now().subtract(27.minutes)),
  TtossNotification(NotificationType.stock, '인적분할에 대해 알려드려요.',
      DateTime.now().subtract(1.hours)),
  TtossNotification(NotificationType.walk, '1000걸음 이상 걸었다면 포인트 받으세요!',
      DateTime.now().subtract(1.hours),
      isRead: true),
  TtossNotification(
      NotificationType.moneyTip,
      '유럽 식품 물가가 치솟고 잇어요. \n남반석님, 유럽여행에 관심이 있다면 확인해보세요',
      DateTime.now().subtract(8.hours)),
  TtossNotification(NotificationType.walk, '오늘 1000걸음을 넘겼어요. 포인트를 받아가세요 !',
      DateTime.now().subtract(57.minutes)),
  TtossNotification(NotificationType.walk, '1000걸음 이상 걸었다면 포인트 받으세요!',
      DateTime.now().subtract(5.hours)),
  TtossNotification(NotificationType.walk, '오늘 1000걸음을 넘겼어요. 포인트를 받아가세요 !',
      DateTime.now().subtract(3.days)),
  TtossNotification(NotificationType.stock, '인적분할에 대해 알려드려요.',
      DateTime.now().subtract(5.days)),
];
