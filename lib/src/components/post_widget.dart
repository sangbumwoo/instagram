import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:instagram/src/components/avatar_widget.dart';
import 'package:instagram/src/components/image_data.dart';

import '../app.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AvartarWidget(
            thumbPath:
                'https://img.freepik.com/free-vector/gradient-quill-pen-design-template_23-2149837194.jpg',
            type: AvatarType.TYPE3,
            size: 40,
            nickname: '개발하는 남자',
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: ImageData(
                IconsPath.postMoreIcon,
                width: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _image() {
    return CachedNetworkImage(
        imageUrl:
            'https://img.freepik.com/premium-psd/logo-mockup-grey-wall_35913-2122.jpg');
  }

  Widget _infoCount() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ImageData(
                IconsPath.likeOffIcon,
                width: 65,
              ),
              const SizedBox(
                width: 15,
              ),
              ImageData(
                IconsPath.replyIcon,
                width: 60,
              ),
              const SizedBox(
                width: 15,
              ),
              ImageData(
                IconsPath.directMessage,
                width: 55,
              ),
            ],
          ),
          ImageData(
            IconsPath.bookMarkOffIcon,
            width: 55,
          ),
        ],
      ),
    );
  }

  Widget _infoDescription() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              '좋아요 150개 ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ExpandableText(
              'sample content\nsample content\nsample content\nsample content\nsample content\n',
              prefixText: '개발하는 남자',
              onPrefixTap: () {
                print('onPrefixTap');
              },
              prefixStyle: TextStyle(fontWeight: FontWeight.bold),
              expandText: '더보기',
              collapseText: '젋기',
              maxLines: 3,
              collapseOnTextTap: true,
              expandOnTextTap: true,
              linkColor: Colors.grey,
            ),
          ],
        ));
  }

  Widget _replyTextBtn() {
    return GestureDetector(
      onTap: () {},
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text('댓글 199개 모두보기', style: TextStyle(color: Colors.grey)),
      ),
    );
  }

  Widget _dateAgo() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        '1일전',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      // height: 100,
      // color: Colors.red,
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        _header(),
        const SizedBox(height: 15),
        _image(),
        const SizedBox(height: 15),
        _infoCount(),
        const SizedBox(height: 5),
        _infoDescription(),
        const SizedBox(height: 5),
        _replyTextBtn(),
        const SizedBox(height: 5),
        _dateAgo(),
      ]),
    );
  }
}
