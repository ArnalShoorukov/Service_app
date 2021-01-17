import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const textColor = Color(0xff251201);

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(23.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white,
        ),
        // color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [_description(), _timeWork(), _services()],
        ),
      ),
    );
  }

  _description() {
    var rowStyle = TextStyle(
      fontSize: 18.0,
      letterSpacing: 2,
      fontWeight: FontWeight.w500,
      color: textColor,
    );
    return Padding(
      padding: const EdgeInsets.only(left: 31.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 21),
            child: Text(
              'Winchester',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 28,
                letterSpacing: 2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Text(
              'Ожешко 39/1',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 17.0),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 11.0),
                  child: Text(
                    '3.9',
                    style: rowStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 11.0),
                  child: Text(
                    'Отлично',
                    style: rowStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 11.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 19,
                    width: 74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Color(0xffFF8585),
                    ),
                    child: Text(
                      'Новинка',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _timeWork() {
    return Padding(
      padding: const EdgeInsets.all(31.0),
      child: Container(
        width: 192,
        height: 28,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: textColor,
        ),
        child: Row(
//          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Icon(
                Icons.watch_later_outlined,
                color: Colors.white,
                size: 11,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9.7),
              child: Text(
                'Открыто 10:00 -21:00    ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              height: 8.91,
              width: 4.69,
              child: LayoutBuilder(
                builder: (context, constraint) {
                  return Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: constraint.biggest.height,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  _services() {
    var images = [
      Image.asset('assets/images/service.jpeg'),
      Image.asset('assets/images/service.jpeg'),
    ];
    var descText1 = 'Описание описание описание \nописание описание \nописание\n\n';
    var textTime1 = '2ч - 2ч 15мин';
    var textTime2 = '40мин - 1ч 30мин';
    var textTime3 = '1ч 45мин - 2мин';
    var textPrice1 = '16 USD';
    var textPrice2 = '8 USD';
    var textPrice3 = '20 USD';
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 31.0,
        vertical: 24.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: Text(
              'Услуги',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
                color: textColor,
              ),
            ),
          ),
          _serviceList(images, descText1, textTime1, textPrice1),
          _serviceList(null, '', textTime2, textPrice2),
          _serviceList(null, '', textTime3, textPrice3),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffF2F2F2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'ВСЕ УСЛУГИ',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                  color: textColor
                ),
              ),
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  _serviceList(List images, String descriptionText, String textTime, String price) {
    var visibleImages = true;
    if (images == null) {
      visibleImages = false;
    }
    var visibleText = true;
    if (descriptionText == '') {
      visibleText = false;
    }
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffF2F2F2),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Visibility(
            visible: visibleImages,
            child: SizedBox(
                height: 180.0,
                width: 350.0,
                child: Carousel(showIndicator: true, borderRadius: true, images: images)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 13),
            child: Text(
              'Service Name',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
                color: textColor,
              ),
            ),
          ),
          Visibility(
            visible: visibleText,
            child: Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 11.0),
              child: Container(
                child: Text(
                  descriptionText,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  textTime,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700, color: textColor),
                ),
                Text(
                  price,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700, color: textColor),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
