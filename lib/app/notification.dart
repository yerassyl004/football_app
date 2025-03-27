// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class NotificationService {
//   static final FlutterLocalNotificationsPlugin _notificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   static Future<void> init() async {
//     const AndroidInitializationSettings androidSettings =
//         AndroidInitializationSettings('@mipmap/ic_launcher');

//     const DarwinInitializationSettings iosSettings =
//         DarwinInitializationSettings();

//     const InitializationSettings settings =
//         InitializationSettings(android: androidSettings, iOS: iosSettings);

//     await _notificationsPlugin.initialize(settings);
//   }

//   static Future<void> showNotification(
//       {required int id, required String title, required String body}) async {
//     const AndroidNotificationDetails androidDetails =
//         AndroidNotificationDetails(
//       'channel_id', 'channel_name',
//       importance: Importance.high,
//       priority: Priority.high,
//     );

//     const NotificationDetails details =
//         NotificationDetails(android: androidDetails);

//     await _notificationsPlugin.show(id, title, body, details);
//   }
// }
