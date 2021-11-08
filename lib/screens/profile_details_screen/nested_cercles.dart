import 'package:flutter/material.dart';
import 'package:transactions/utility/app_colors.dart';
import 'package:transactions/utility/size_config.dart';
import 'package:transactions/utility/urls.dart';

class NestedCercles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(SizeConfig.height * 0.4);
    Widget bigCircle = Container(
      width: SizeConfig.height * 0.4,
      height: SizeConfig.height * 0.4,
      child: Padding(
        padding: EdgeInsets.all(SizeConfig.width03),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: EdgeInsets.all(SizeConfig.width * 0.1),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: EdgeInsets.all(SizeConfig.width * 0.001),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.lightBlueAccent.withOpacity(0.2),
                        width: 30),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );

    return Material(
      color: Colors.transparent,
      child: Center(
        child: Stack(
          children: [
            bigCircle,
            Positioned(
              child: CircleButton(
                  onTap: () => print("Cool"), image: URL().unknownPerson),
              top: 0,
              left: SizeConfig.height * 0.175,
            ),
            Positioned(
              child: CircleButton(
                  onTap: () => print("Cool"), image: URL().unknownPerson),
              top: SizeConfig.height * 0.14,
              left: 0,
            ),
            Positioned(
              child: CircleButton(
                  onTap: () => print("Cool"), image: URL().unknownPerson),
              top: SizeConfig.height * 0.14,
              right: 0,
            ),
            Positioned(
              child: CircleButton(
                  onTap: () => print("Cool2"), image: URL().unknownPerson),
              top: SizeConfig.height * 0.3,
              left: SizeConfig.height * 0.3,
            ),
            Positioned(
              child: CircleButton(
                  onTap: () => print("Cool2"), image: URL().unknownPerson),
              top: SizeConfig.height * 0.3,
              left: SizeConfig.height * 0.05,
            ),
            Positioned(
              child: CircleButtonCenter(
                  onTap: () => print("Cool"), image: URL().unknownPerson),
              top: SizeConfig.height * 0.15,
              left: SizeConfig.height * 0.15,
            ),
          ],
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final String image;

  const CircleButton({Key? key, required this.onTap, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onTap,
      child: CircleAvatar(
        radius: SizeConfig.width * 0.06,
        backgroundImage: NetworkImage(image),
      ),
    );
  }
}

class CircleButtonCenter extends StatelessWidget {
  final GestureTapCallback onTap;
  final String image;

  const CircleButtonCenter({Key? key, required this.onTap, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors().mainDarkColor, width: 3),
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            radius: SizeConfig.width * 0.09,
            backgroundImage: NetworkImage(image),
          ),
        ),
      ),
    );
  }
}
