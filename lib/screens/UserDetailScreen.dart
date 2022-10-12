import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practicle_work_9/models/User.dart';

class UserDetailScreen extends StatefulWidget {
  final User user;
  const UserDetailScreen({required this.user, super.key});

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.user.firstName + ' ' + widget.user.lastName),
      ),
      body: Column(
        children: [
          widget.user.avatar == ''
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 200.0,
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                          'http://cdn.onlinewebfonts.com/svg/img_207975.png',
                          fit: BoxFit.contain),
                    ),
                  ],
                )
              : Container(
                  child: Image.network(widget.user.avatar),
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.user.firstName + ' ' + widget.user.lastName,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Колонка для условных обозначений
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text('Возраст: '),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Телефон: '),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Email: '),
                      ],
                    ),
                  ],
                ),
                //Колонка для отображения данных
                Padding(
                  padding: const EdgeInsets.only(left: 100.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(widget.user.age.toString()),
                        ],
                      ),
                      Row(
                        children: [
                          Text(widget.user.phone),
                        ],
                      ),
                      Row(
                        children: [
                          Text(widget.user.email),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
