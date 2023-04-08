import 'package:equatable/equatable.dart';

class LoadState extends Equatable {
  @override
  List<Object?> get props => [];
}

class InitialState extends LoadState {}

class LoadingState extends LoadState {}

class LoadedState extends LoadState {}
