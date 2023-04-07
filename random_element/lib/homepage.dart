import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_element/cubit/names_cubit.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final NamesCubit _namesCubit;

  @override
  void initState() {
    super.initState();
    _namesCubit = NamesCubit();
  }

  @override
  void dispose() {
    _namesCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
                stream: _namesCubit.stream,
                builder: (context, snapshot) {
                  return Text(
                    snapshot.data.toString(),
                    style: Theme.of(context).textTheme.headlineLarge,
                  );
                }),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  _namesCubit.pickName();
                },
                child: const Text("Get Random Name"))
          ],
        ),
      ),
    );
  }
}
