import 'package:get_it/get_it.dart';
import 'package:sample_project/app/ui/view/navigation/cubit/navigation_cubit.dart';
import 'package:sample_project/app/ui/view/navigation/utility/app_route_information_parser.dart';
import 'package:sample_project/app/ui/view/navigation/utility/app_router_delegate.dart';
import 'package:sample_project/app/ui/view/navigation/utility/navigation_stack.dart';
import 'package:sample_project/app/ui/view/navigation/utility/page_config.dart';
import 'package:sample_project/app/ui/view/navigation/utility/route_mapping.dart';
import 'package:sample_project/core/networking/api_client.dart';
import 'package:sample_project/core/networking/base_error.dart';
import 'package:sample_project/core/networking/base_error_response.dart';
import 'package:sample_project/sample_pages/data/network/apis.dart';
import 'package:sample_project/sample_pages/data/repositories/data_sources/sample_person_list_remote_data_source.dart';
import 'package:sample_project/sample_pages/data/repositories/implementations/sample_person_list_repository_impl.dart';
import 'package:sample_project/sample_pages/domain/repositories/repositories.dart';
import 'package:sample_project/sample_pages/domain/use_cases/use_cases.dart';
import 'package:sample_project/sample_pages/ui/blocs/sample_person_llist_cubit.dart';

GetIt sl = GetIt.instance;

Future<void> setUpServiceLocator() async {
  await sl.reset();
  sl
    ..registerFactoryParam<PageConfig, String, Map<String, dynamic>?>(
      (location, args) => PageConfig(location: location, args: args),
    )
    ..registerFactoryParam<NavigationStack, List<PageConfig>, void>(
      (list, _) => NavigationStack(list),
    )
    ..registerFactoryParam<NavigationCubit, List<PageConfig>, void>(
      (pageConfigs, _) => NavigationCubit(pageConfigs),
    )
    ..registerFactoryParam<AppRouterDelegate, NavigationCubit, void>(
      (cubit, _) => AppRouterDelegate(cubit),
    )
    ..registerSingleton<AppRouteInformationParser>(
      AppRouteInformationParser(),
    )
    ..registerSingleton<RouteMapping>(
      RouteMapping(),
    )
    ..registerFactory<SamplePersonListUseCase>(() => SamplePersonListUseCase())
    ..registerFactory<SamplePersonListCubit>(() => SamplePersonListCubit())
    ..registerSingleton<ApiClient>(
      ApiClient(),
    )
    ..registerFactory<BaseError>(() => ErrorResponseBase())
    ..registerFactory<SamplePersonListApi>(() => SamplePersonListApi())
    ..registerFactory<SamplePersonListRemoteDataSource>(
        () => SamplePersonListRemoteDataSource())
    ..registerFactory<SamplePersonListRepository>(
        () => SamplePersonListRepositoryImpl());
}
