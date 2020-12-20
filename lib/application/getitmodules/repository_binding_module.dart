import 'package:flutter_lecture_clean_code/data/source/users/local/users_local_repository.dart';
import 'package:flutter_lecture_clean_code/data/source/users/remote/users_remote_repository.dart';
import 'package:flutter_lecture_clean_code/data/source/users/users_data_source.dart';
import 'package:flutter_lecture_clean_code/data/source/users/users_repository.dart';
import 'package:flutter_lecture_clean_code/main.dart';

class RepositoryBindingModule {
  static provideModules() {
    _provideUsersRepository();
  }

  static _provideUsersRepository() {
    getIt.registerSingleton<UsersDataSourceRemote>(UsersRemoteRepository(getIt.get()));
    getIt.registerSingleton<UsersDataSourceLocal>(UsersLocalRepository());
    getIt.registerSingleton(UsersRepository(getIt.get(),getIt.get()));
  }
}
