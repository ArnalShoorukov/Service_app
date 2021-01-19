import 'package:flutter/material.dart';
import 'package:service_app/widgets/info.dart';

class Command extends StatelessWidget {
  final List<String> images = [
    'https://s3-alpha-sig.figma.com/img/df97/fc8b/df6c0b3e006073ef5abf068f60ddbe88?Expires=1612137600&Signature=If2GXWMj24HYlujis5t4zpe-c5Mdm7ZsDR~u8kpQVxCB~EEHjrc-cLwGHLRmReTyoZYpe7zhAs98333XoyeQp3blVeg~rbygDVwhjxR3irfOH4xb5giTdh84ogYu6aUhX4uoGOP4QbP4jQ5atK0va59XVEjWqq4p2fwM3sSez6WiieiNtNqln~1jPOAgnPEADlAiiJDbLNmRsVrSHphLFn~p9XnwaJ39HOPcjaPFJapfo83DIGhb26ROKqkvjPArFjn9O9hEeBTqavgJgMlQ9Cr8Ersn05FTAO~YrpcBPTM1r1QEpiAUwt2mL8WU4jgNYaE2WWL-GfPHA7uP32TFsg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    'https://s3-alpha-sig.figma.com/img/5681/7daa/a8ab7cc5f67e2af8b2788a1802dd822a?Expires=1612137600&Signature=cek9uPs932ircJcxqc0u1IESJMteG-BScZf-xBoSAdVJjwzJ4d5ebsSmZum0~9gkFV9QUgof1A6xwSBDOAL-W7jUsTxes62AtssqRUeYX812tTYpCQVIJHyTXtjZ-J3x0gZ-PFz7K8x8Zpe9h9lkkEZtUe7ImJMJNc9b2R7AjSxgPep2B4EsqAqNz~M2pgeIlDqT3yhR5zh12X6eRCqOwIttu2BjVAxVaxCRsZszzJc9BM0d7~VxFVlSQ2yPp87qN7vTILgkgTgR6uZcLxjDvJKbvHL5vI-gktKNNH~Bs3Y3-b6qa4XgvwWrmzXeScYQdF51ZTv78V7QouoMXqT7VQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    'https://s3-alpha-sig.figma.com/img/b3e5/4804/07dd90ce0e429af99e14a924245f2302?Expires=1612137600&Signature=U5y15k7~YDQwYBfuy6yU1~Y5zTBFwy5hMMoUxz3UUJEr3sGaET2vfpuRPdJM3g4VXoeZisnqU56kI-sPTUTJpwZSAuHc3mY6eo3eDFYB8Rw7XTDsjUBdcqhflQNLDhsavpogirXdk9ZRibdXFMfLW8UEa7AjJKPUmMHsfcnIGqBNgJvq6neowCDUaoaw0XJ6PhyZy43xqrf4fPVbFCKagRvIVmtNYZd6AKok5FdZDiR~Snqv3Z9jDgGs0KW8d4829REEFEXDZ6UoAYF8M9KG92soDr6nTV0c03WVAwpZNTnHSdIgZsEdH56HLHD~6UGsFMMnz34-BFeJxm3cwSgSyA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  ];

  final List<String> names = ['Саня Рыжий', 'First name Last name', 'First name Last name'];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 21.0, bottom: 26 ),
          child: Text(
            'Команда',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w700,
              color: textColor,
            ),
          ),
        ),
        Container(
          height: 300,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 16.0),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) => _buildItem(context, index, large: true),
          ),
        ),
      ],
    );
  }

  Widget _buildItem(BuildContext context, index, {bool large = true}) {
    print(index);
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: large ? 150 : 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: NetworkImage(
                    images[index % images.length],
                  ),
                  fit: BoxFit.cover,
                )),
            height: large ? 180 : 150,
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(
              names[index],
              style: TextStyle(
                color: textColor,
                fontSize: 13.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 22.0,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: textColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'ЗАПИСАТЬСЯ',
                style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                ),
              ),
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
