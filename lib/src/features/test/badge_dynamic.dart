// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_app_badger/flutter_app_badger.dart';
// import 'package:torganic/src/utils/theme/widget_themes/elevated_button_theme.dart';
//
//
// class NotificationBadge extends StatefulWidget {
//   const NotificationBadge({super.key});
//
//   @override
//   _NotificationBadgeState createState() => _NotificationBadgeState();
// }
//
// class _NotificationBadgeState extends State<NotificationBadge> {
//   String _appBadgeSupported = 'Unknown';
//
//   @override
//   initState() {
//     super.initState();
//     initPlatformState();
//   }
//
//   initPlatformState() async {
//     String appBadgeSupported;
//     try {
//       bool res = await FlutterAppBadger.isAppBadgeSupported();
//       if (res) {
//         appBadgeSupported = 'Supported';
//       } else {
//         appBadgeSupported = 'Not supported';
//       }
//     } on PlatformException {
//       appBadgeSupported = 'Failed to get badge support.';
//     }
//
//     // If the widget was removed from the tree while the asynchronous platform
//     // message was in flight, we want to discard the reply rather than calling
//     // setState to update our non-existent appearance.
//     if (!mounted) return;
//
//     setState(() {
//       _appBadgeSupported = appBadgeSupported;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Plugin example app'),
//         ),
//         body: SizedBox.expand(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Text('Badge supported: $_appBadgeSupported\n'),
//               InkWell(
//                 child: Text('Add badge'),
//                 onTap: () {
//                   _addBadge();
//                 },
//               ),
//               InkWell(
//                   child: Text('Remove badge'),
//                   onTap: () {
//                     _removeBadge();
//                   }),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   void _addBadge() {
//     FlutterAppBadger.updateBadgeCount(1);
//   }
//
//   void _removeBadge() {
//     FlutterAppBadger.removeBadge();
//   }
// }