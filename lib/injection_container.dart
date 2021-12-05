import 'package:get_it/get_it.dart';

import 'features/sqlite_assessment_two/data/datasources/sqlite_datasbase/audit_db.dart';
import 'features/sqlite_assessment_two/data/repositories/audit_repository_impl.dart';
import 'features/sqlite_assessment_two/domain/repositories/audit_repository.dart';
import 'features/sqlite_assessment_two/domain/usecases/add_audit.dart';
import 'features/sqlite_assessment_two/domain/usecases/get_audit_usecase.dart';
import 'features/sqlite_assessment_two/presentation/bloc/audit_bloc.dart';


final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(
    () => AuditBloc(
      sl(),
      sl()
    ),
  );
  // Use cases
  sl.registerLazySingleton(() => GetAudit(sl()));
  sl.registerLazySingleton(() => AddAudit(sl()));

// Repository
  sl.registerLazySingleton<AuditRepository>(
    () => AuditRepositoryImpl(appDatabase: sl()),
  );
  sl.registerSingleton(AppDatabase(openConnection()));


}
