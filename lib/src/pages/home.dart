import 'package:flutter/material.dart';
import 'package:instagram/src/components/avatar_widget.dart';
import 'package:instagram/src/components/image_data.dart';
import 'package:instagram/src/components/post_widget.dart';

import '../app.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget _myStory() {
    return Stack(
      children: [
        AvartarWidget(
          thumbPath:
              'https://thumbs.dreamstime.com/b/instagram-logo-minimal-simple-design-template-copy-space-d-188227632.jpg',
          type: AvatarType.TYPE2,
          size: 70,
        ),
        Positioned(
          right: 5,
          bottom: 0,
          child: Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
            child: const Center(
              child: Text(
                '+',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.1,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _storyBoardList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        const SizedBox(
          width: 20,
        ),
        _myStory(),
        const SizedBox(
          width: 5,
        ),
        ...List.generate(
          100,
          (index) => AvartarWidget(
            thumbPath:
                'https://img.freepik.com/free-vector/gradient-quill-pen-design-template_23-2149837194.jpg',
            type: AvatarType.TYPE1,
          ),
        ),
      ]),
    );
  }

  Widget _postList() {
    return Column(
      children: List.generate(50, (index) => const PostWidget()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: ImageData(IconsPath.logo, width: 270),
        actions: [
          GestureDetector(
              onTap: () {},
              child: ImageData(
                IconsPath.directMessage,
                width: 50,
              ))
        ],
      ),
      body: ListView(
        children: [
          _storyBoardList(),
          _postList(),
        ],
      ),
    );
  }
}
