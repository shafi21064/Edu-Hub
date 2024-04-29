import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:torganic/src/common/styles/spacing_style.dart';
import 'package:torganic/src/common/widgets/appbar/custom_app_bar.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import 'package:torganic/src/utils/constants/sizes.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';

import '../../../common/layouts/layout_with_back_button/layout_with_back_button.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<types.Message> _messages = [];
  final _user = const types.User(
    id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
  );

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: const CustomAppBar(
          showBackArrow: true,
          title: Text('Chat'),
          centerTitle: true,
        ),
        body: Chat(

          messages: _messages,
          onSendPressed: _handleSendPressed,
          user: _user,
          theme: DefaultChatTheme(
            attachmentButtonIcon: const Icon(Icons.link),
            attachmentButtonMargin: const EdgeInsets.all(10),

            backgroundColor: isDark ? AppColors.dark : AppColors.white,
            inputBackgroundColor:
                isDark ? AppColors.secondary : AppColors.secondary,
            inputPadding: const EdgeInsets.all(AppSizes.xl),
            inputTextDecoration: InputDecoration(
              contentPadding: const EdgeInsets.all(AppSizes.md),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: AppColors.lightContainer, width: 2),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ));
  }

  // For the testing purposes, you should probably use https://pub.dev/packages/uuid.
  String randomString() {
    final random = Random.secure();
    final values = List<int>.generate(16, (i) => random.nextInt(255));
    return base64UrlEncode(values);
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: randomString(),
      text: message.text,
    );

    _addMessage(textMessage);
  }
}
