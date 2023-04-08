import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_json/bloc/load_bloc.dart';
import 'package:loading_json/bloc/load_state.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BlocBuilder<LoadJsonBloc, LoadState>(builder: (context, state) {
              if (state is InitialState) {
                return ElevatedButton(
                    onPressed: () {}, child: const Text("Load Json 1"));
              } else {
                return Container();
              }
            }),
            const SizedBox(
              height: 100,
            ),
            BlocBuilder<LoadJsonBloc, LoadState>(builder: (context, state) {
              if (state is InitialState) {
                return ElevatedButton(
                    onPressed: () {}, child: const Text("Load Json 2"));
              } else {
                return Container();
              }
            }),
          ],
        ),
      ),
    );
  }
}
