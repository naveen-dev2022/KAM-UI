
import 'package:flutter/material.dart';

class ServiceTypeView extends StatelessWidget {
  ServiceTypeView(
      {Key? key,
        this.onPressed,
        this.child,
        this.height,
        this.width,
        this.borderColor,
        this.radius,this.imageUrl})
      : super(key: key);

  Function()? onPressed;
  double? height;
  double? width;
  Widget? child;
  Color? borderColor;
  double? radius;
  String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                  image: AssetImage(imageUrl!)),
              borderRadius: BorderRadius.circular(radius ?? 0.0),
              border: Border.all(
                color: borderColor ?? Colors.transparent,
              ),
          ),
          child: child,
        ));
  }
}
