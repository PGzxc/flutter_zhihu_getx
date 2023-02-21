import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:remixicon/remixicon.dart';

/// 日期：2023-02-15
/// 描述：主页-中间+号-弹出页面
/// 说明：

class Sheet extends StatelessWidget {
  Sheet({Key? key}) : super(key: key);

  final icons = [
    {
      "i": Remix.bookmark_2_line,
      "t": "Orders",
      "s": "5 pending orders",
      "c": Colors.indigo,
    },
    {
      "i": Remix.bank_card_2_line,
      "t": "Payments",
      "s": "No pending payments",
      "c": Colors.purple,
    },
    {
      "i": Remix.map_pin_line,
      "t": "Addresses",
      "s": "No pending payments",
      "c": Colors.green,
    },
    {
      "i": Remix.heart_2_line,
      "t": "Wishlist",
      "s": "No pending payments",
      "c": Colors.red,
    },
    {
      "i": Remix.refund_line,
      "t": "Buy again",
      "s": "No pending payments",
      "c": Colors.cyan,
    },
  ];

  final icons2 = [
    {
      "i": Remix.settings_5_line,
      "t": "Settings",
      "s": "Theme, color, etc.",
      "c": Colors.blueGrey,
    },
    {
      "i": Remix.question_answer_line,
      "t": "Help & Support",
      "s": "Chat with us",
      "c": Colors.deepOrange,
    },
    {
      "i": Remix.information_line,
      "t": "About",
      "s": "Know more about us",
      "c": Colors.indigo,
    },
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    QuillController _controller = QuillController.basic();
    return DraggableScrollableSheet(
      builder: (context, controller) {
        return Material(
          //color: theme.backgroundColor,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          child: Column(
            children: [
              Container(
                color: Colors.brown,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                            alignment: Alignment.topLeft,
                            child: const Icon(Remix.reply_line))),
                    Expanded(
                        child: Container(
                      height: 8,
                      width: 30,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    )),
                    Expanded(
                        child: Container(
                            alignment: Alignment.topRight,
                            child: GFButton(onPressed: () => {}, text: '发布')))
                  ],
                ),
              ),
              Expanded(
                  child: Column(
                children: [
                  QuillToolbar.basic(controller: _controller),
                  Expanded(
                    child: Container(
                      child: QuillEditor.basic(
                        controller: _controller,
                        readOnly: false, // true for view only mode
                      ),
                    ),
                  )
                ],
              )),
            ],
          ),
        );
      },
      minChildSize: 0.5,
      initialChildSize: 0.75,
    );
  }
}
