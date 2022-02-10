import 'package:bloc/bloc.dart';
import 'package:sample_project/config/service_locator.dart';
import 'package:sample_project/sample_pages/domain/entities/entities.dart';
import 'package:sample_project/sample_pages/domain/use_cases/use_cases.dart';
import 'package:sample_project/sample_pages/ui/blocs/blocs.dart';

class SamplePersonListCubit extends Cubit<SamplePersonListState> {
  SamplePersonListCubit() : super(const SamplePersonListInitialState());

  Future<void> getSamplePersonList() async {
    final response = await sl<SamplePersonListUseCase>().call(_sampleAuth);
    response.fold(
        (samplePersonList) => emit(
            SamplePersonListLoadedState(samplePersonList: samplePersonList)),
        (error) => SamplePersonListErrorState(error: error));
  }

  SampleAuthentication get _sampleAuth => SampleAuthentication('access-token');
}
