import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessagePopup extends StatelessWidget {
  final String? title;
  final String? message;
  final Function()? okCallback;
  final Function()? cancelCallback;

  MessagePopup({
    super.key,
    required this.title,
    required this.message,
    required this.okCallback,
    this.cancelCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Container(
              
              color: Colors.white,
              width: Get.width * 0.7,
              padding: const EdgeInsets.all(20),
              child: Column(
              
                children: [
                  Text(
                    title!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    message!,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: okCallback,
                        child:const Text('확인'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: cancelCallback,
                        child:const Text('취소'),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
