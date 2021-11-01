import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

class PrepreocessorState extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadingPreprocessedData extends PrepreocessorState {}

class InitialState extends PrepreocessorState {}

class LoadedPreprocessedData extends PrepreocessorState {
  final List<Widget> widgets;

  LoadedPreprocessedData(this.widgets);
  @override
  List<Object> get props => [widgets];
}

class LoadingPreprocessedDataError extends PrepreocessorState {
  final String message;

  LoadingPreprocessedDataError(this.message);
  @override
  List<Object> get props => [message];
}
