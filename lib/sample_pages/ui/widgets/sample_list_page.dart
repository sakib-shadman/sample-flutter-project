import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_project/config/service_locator.dart';
import 'package:sample_project/sample_pages/domain/entities/entities.dart';
import 'package:sample_project/sample_pages/ui/blocs/blocs.dart';
import 'package:sample_project/sample_pages/ui/blocs/sample_person_llist_cubit.dart';

class SampleListPage extends StatefulWidget {
  static const String path = '/sampleListPage';

  const SampleListPage({Key? key}) : super(key: key);

  @override
  _SampleListPageState createState() => _SampleListPageState();
}

class _SampleListPageState extends State<SampleListPage> {
  late SamplePersonListCubit _samplePersonListCubit;

  @override
  void initState() {
    super.initState();
    _samplePersonListCubit = sl<SamplePersonListCubit>();
    _samplePersonListCubit.getSamplePersonList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _samplePersonListCubit,
      child: BlocBuilder<SamplePersonListCubit, SamplePersonListState>(
        builder: (BuildContext context, state) {
          return state.when(
              initialState: () => Container(),
              loadingState: () => const CircularProgressIndicator(),
              loadedState: (samplePersonList) => _buildBody(samplePersonList),
              errorState: (error) => Container());
        },
      ),
    );
  }

  Widget _buildBody(List<SamplePerson> samplePersonList) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Row(
          children: [
            Text(
              samplePersonList[index].name,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              samplePersonList[index].address,
              style: const TextStyle(fontSize: 14),
            ),
          ],
        );
      },
      itemCount: samplePersonList.length,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 2,
        );
      },
    );
  }
}
