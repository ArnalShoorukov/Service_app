import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Photo extends StatelessWidget {
  var imageUrl = 'https://s3-alpha-sig.figma.com/img/7756/5728/ec989682c614e35d140c09b9f1a72fa7?Expires=1611532800&Signature=LF4o7zlxDexzZjHqw4ZgN82V5C3aRmS3461xIbgkbtaI-nam15lZPRGp6jKTKIk9ICxkMbrsPtd4WbwgALCzzXlz930SMNGVfukVmLUjazIwknfubpOM-qsAM4ufKbmIJ0yf-gyEA7CtctV2vABVHs-KC0~QZxLtPAW3tJyOP1EJvtbWsmE0UXNuqimhN6LB7aVEhYAMWN~jsDTNszICYLJr32m16c7weZLFIPAd0GbmiI5svw1Ap9CPF3lKuY1~aTTpsag7lbGECwSGbi240W4fFoNlnJUm~zApAqx1BB~s-jARmq0s7TWLayg9EjFknYneeh-mR0XoWkI3JHblTg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
          height: 180.0,
          width: 350.0,
          child: Carousel(
            showIndicator: true,
            images: [
              //_rotate(),
              NetworkImage(imageUrl),
              NetworkImage(imageUrl),
            ],
          )
      ),
    );
  }

   _rotate(){
    return Transform.translate(
        //angle: -180 * math.pi /180,
        //angle: 90 * math.pi/180,
        offset: const Offset(0.0, 1.0),
        child: Image.asset('assets/images/photo.jpeg', fit: BoxFit.fitHeight,)

       );

  }


}
