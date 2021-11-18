import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/presentation/blocs/preprocessor_bloc.dart';
import 'package:prepreocessor_starter/presentation/blocs/preprocessor_state.dart';
import 'package:prepreocessor_starter/presentation/pages/welcome/welcome_page.dart';
import 'core/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoutes,
      initialRoute: WelcomePage.welcomePageRouteName,
    ),
  );
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
