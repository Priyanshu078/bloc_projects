import 'dart:math';

import 'package:bloc/bloc.dart';

List<String> data = ["Priyanshu", "Priyanshu-bot", "Priyanshu-bot2"];

class NamesCubit extends Cubit<String?> with RandomElement {
  NamesCubit() : super(null);

  void pickName() {
    emit(getRandomElement());
  }
}

mixin RandomElement {
  String getRandomElement() {
    return data[Random().nextInt(data.length)];
  }
}
