import 'package:flutter/material.dart';

class recentRecipientsListview extends StatelessWidget {
  const recentRecipientsListview({
    super.key,
    required this.device,
    required this.images,
  });

  final Size device;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: device.height * 0.1,
      width: device.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: device.width * 0.05),
            child: CircleAvatar(
              backgroundImage: AssetImage(images[index]),
            ),
          );
        },
      ),
    );
  }
}
