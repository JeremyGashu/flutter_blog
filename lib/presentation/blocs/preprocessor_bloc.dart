import 'package:bloc/bloc.dart';
import 'package:prepreocessor_starter/data/repository/repository.dart';
import 'package:prepreocessor_starter/presentation/blocs/preprocessor_event.dart';
import 'package:prepreocessor_starter/presentation/blocs/preprocessor_state.dart';

class PreprocessorBloc extends Bloc<PreprocessorEvent, PrepreocessorState> {
  final CoreRepository repository;
  PreprocessorBloc(this.repository) : super(InitialState());

  @override
  Stream<PrepreocessorState> mapEventToState(PreprocessorEvent event) async* {
    if (event is LoadPreprocessor) {
      yield LoadingPreprocessedData();

      try {
        var widgets = await repository.getBlocks();
        yield LoadedPreprocessedData(widgets);
      } catch (e, _) {
        yield LoadingPreprocessedDataError(e.toString());
        print('error $e');
        // throw Exception(s);
      }
    }
  }
}
