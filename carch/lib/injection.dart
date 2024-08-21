import 'package:carch/features/increment/domain/usecases/get_counter_usecase.dart';
import 'package:carch/features/increment/domain/usecases/increment_counter_usecase.dart';
import 'package:carch/features/increment/domain/usecases/reset_counter_usecase.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

// Data Sources
import 'features/increment/data/datasources/local/counter_local_datasource.dart';

// Repositories
import 'features/increment/data/repositories/counter_repository_impl.dart';
import 'features/increment/domain/repositories/counter_repository.dart';

// Use Cases
import 'features/increment/domain/usecases/decrement_counter_usecase.dart';

// Controllers
import 'features/increment/presentation/controllers/counter_controller.dart';

Future<void> init() async {
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  final box = await Hive.openBox('counter');

  // Register dependencies
  Get.put<Box>(box); // Register Hive box with GetX
  Get.lazyPut<CounterLocalDataSource>(
      () => CounterLocalDataSourceImpl(box: Get.find()));
  Get.lazyPut<CounterRepository>(() => CounterRepositoryImpl(Get.find()));

  // Use cases
  Get.lazyPut<GetCounterUsecase>(() => GetCounterUsecase(Get.find()));
  Get.lazyPut<IncrementCounterUsecase>(
      () => IncrementCounterUsecase(Get.find()));
  Get.lazyPut<DecrementCounterUseCase>(
      () => DecrementCounterUseCase(Get.find()));
  Get.lazyPut<ResetCounterUseCase>(() => ResetCounterUseCase(Get.find()));

  // Controllers
  Get.lazyPut<CounterController>(
    () => CounterController(
      getCounterUseCase: Get.find(),
      incrementCounterUseCase: Get.find(),
      decrementCounterUseCase: Get.find(),
      resetCounterUseCase: Get.find(),
    ),
  );
}
