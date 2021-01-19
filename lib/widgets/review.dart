import 'package:flutter/material.dart';
import 'package:service_app/review_model.dart';

const textColor = Color(0xff251201);
const bgdColor = Color(0xff5E5E5);
final List<String> images = [
  'https://s3-alpha-sig.figma.com/img/df97/fc8b/df6c0b3e006073ef5abf068f60ddbe88?Expires=1612137600&Signature=If2GXWMj24HYlujis5t4zpe-c5Mdm7ZsDR~u8kpQVxCB~EEHjrc-cLwGHLRmReTyoZYpe7zhAs98333XoyeQp3blVeg~rbygDVwhjxR3irfOH4xb5giTdh84ogYu6aUhX4uoGOP4QbP4jQ5atK0va59XVEjWqq4p2fwM3sSez6WiieiNtNqln~1jPOAgnPEADlAiiJDbLNmRsVrSHphLFn~p9XnwaJ39HOPcjaPFJapfo83DIGhb26ROKqkvjPArFjn9O9hEeBTqavgJgMlQ9Cr8Ersn05FTAO~YrpcBPTM1r1QEpiAUwt2mL8WU4jgNYaE2WWL-GfPHA7uP32TFsg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  'https://s3-alpha-sig.figma.com/img/5681/7daa/a8ab7cc5f67e2af8b2788a1802dd822a?Expires=1612137600&Signature=cek9uPs932ircJcxqc0u1IESJMteG-BScZf-xBoSAdVJjwzJ4d5ebsSmZum0~9gkFV9QUgof1A6xwSBDOAL-W7jUsTxes62AtssqRUeYX812tTYpCQVIJHyTXtjZ-J3x0gZ-PFz7K8x8Zpe9h9lkkEZtUe7ImJMJNc9b2R7AjSxgPep2B4EsqAqNz~M2pgeIlDqT3yhR5zh12X6eRCqOwIttu2BjVAxVaxCRsZszzJc9BM0d7~VxFVlSQ2yPp87qN7vTILgkgTgR6uZcLxjDvJKbvHL5vI-gktKNNH~Bs3Y3-b6qa4XgvwWrmzXeScYQdF51ZTv78V7QouoMXqT7VQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
];

class Review extends StatelessWidget {
  final RevievModel _revievModel = RevievModel(
      images[0],
      'First name',
      'Отличная ламповая атмосфера с музыкой и всяческами плюшками, приятные и общительные барберы, которые сами получают кайф от работы, что очень важно!)В общем, качество и сервис на уровне, всем рекомендую!',
      '01 01 2020',
      '4.6  Отлично');
  final RevievModel _revievModel2 = RevievModel(
      images[1],
      'First name',
      'Был во второй раз. Это уже о чем то говорит! Алексей блестяще справился с задачей. Спасибо!',
      '10 02 2020',
      '5.0  Отлично');

  @override
  Widget build(BuildContext context) {
    var lst = new List<RevievModel>();
    lst.add(_revievModel);
    lst.add(_revievModel2);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 21.0, top: 40.0),
            child: Text(
              'Отзывы',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
                color: textColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 21.0, top: 5.0, bottom: 28.0),
            child: Text(
              'Всего 69 отзыва',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            ),
          ),
          Container(
            height: 350,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 16.0),
              itemCount: images.length,
              itemBuilder: (context, index) => _buildItem(context, index, lst),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  'ВСЕ ОТЗЫВЫ',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700, color: textColor),
                ),
              ),
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(BuildContext context, index, List<RevievModel> lst) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Center(
                    child: new Container(
                        width: 35.0,
                        height: 35.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.cover,
                                alignment: Alignment.topRight,
                                image: new NetworkImage(lst[index].image)))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      lst[index].title,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  lst[index].description,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14.0,
                    color: textColor,
                  ),
                  overflow: TextOverflow.clip,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(lst[index].date),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 12,
                        color: Colors.amber,
                      ),
                      SizedBox(width: 4.0,), 
                      Text(lst[index].rate)
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _size = 45.0;
    return Center(
      child: new Container(
          width: _size,
          height: _size,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.topRight,
                  image: new NetworkImage(images[0])))),
    );
  }
}
