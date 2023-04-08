import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_json/bloc/load_event.dart';
import 'package:loading_json/bloc/load_state.dart';

class LoadJsonBloc extends Bloc<LoadEvent, LoadState> {
  LoadJsonBloc() : super(InitialState()) {
    on<LoadJson1>();
    on<LoadJson2>();
  }
}
