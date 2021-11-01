import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:prepreocessor_starter/data/datasource/datasource.dart';
import 'package:prepreocessor_starter/presentation/blocs/preprocessor_bloc.dart';
import 'package:prepreocessor_starter/presentation/blocs/preprocessor_event.dart';
import 'package:prepreocessor_starter/presentation/blocs/preprocessor_state.dart';
import 'data/repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final _client = http.Client();
final _dataSource = DataSource(_client);
final _repository = CoreRepository(_dataSource);

void main() {
  runApp(MultiBlocProvider(
      providers: [
        BlocProvider<PreprocessorBloc>(
          create: (_) => PreprocessorBloc(_repository)..add(LoadPreprocessor()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PreprocessorPage(),
      )));
}

class PreprocessorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<PreprocessorBloc, PrepreocessorState>(
            builder: (context, state) {
          if (state is LoadingPreprocessedData) {
            return Center(child: CircularProgressIndicator());
          } else if (state is LoadedPreprocessedData) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: state.widgets,
                ),
              ),
            );
          } else if (state is LoadingPreprocessedDataError) {
            return Center(child: Text(state.message));
          }
          return Container();
        }),
      ),
    );
  }
}
