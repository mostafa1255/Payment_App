import 'package:flutter/material.dart';
import 'package:payment_app/App/Styles/text_Style.dart';

class usersTosendListview extends StatelessWidget {
  const usersTosendListview({
    super.key,
    required this.device,
    required this.images,
  });

  final Size device;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: device.width,
        child: ListView.builder(
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: device.height * 0.03),
              child: Row(
                children: [
                  CircleAvatar(
                    maxRadius: 27,
                    backgroundImage: AssetImage(images[2]),
                  ),
                  SizedBox(
                    width: device.width * 0.02,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Victory Am",
                          style: textstyle.textstyle16,
                        ),
                        SizedBox(
                          height: device.height * 0.01,
                        ),
                        Container(
                          width: device.width * 0.15,
                          height: device.height * 0.025,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: const Color(0xff87898E)),
                          child: const Center(
                            child: Text(
                              "•• 6917",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: device.width * 0.04,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
