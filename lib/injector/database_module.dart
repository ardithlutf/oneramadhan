// import 'package:oneramadhan/injector/injector.dart';
// import 'package:local_database/local_database.dart';
//
// class DatabaseModule {
//   DatabaseModule._();
//
//   static void init() {
//     final injector = Injector.instance;
//
//     /* Floor package didn't support for Web platform
//     If you run this repo on web, you must remove Local database module, or using
//     another local database package, or check kIsWeb everywhere you use the local
//     database module
//     */
//
//     injector.registerSingletonAsync<AppDatabaseManager>(() async {
//       final AppDatabaseManager databaseManager = AppDatabaseManager();
//       await databaseManager.createDatabase();
//       return databaseManager;
//     });
//   }
//
//   static void initRepositories() {
//     final injector = Injector.instance;
//     injector.registerFactory<UserLocalRepository>(
//       () => UserLocalRepositoryImpl(
//         appDatabaseManager: injector(),
//       ),
//     );
//   }
// }
