import 'package:exemple_to_api/widgets/action_buttons.dart';
import 'package:flutter/material.dart';

import '../widgets/user_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Users list'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[ActionButtons(), Expanded(child: UserList())],
      ),
    );
  }
}
