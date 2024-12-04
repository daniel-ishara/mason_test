import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/core.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'data/{{feature_name}}_repository_impl.dart';
import 'domain/repository/{{feature_name}}_repository.dart';
import 'view/{{feature_name}}_page.dart';

@RegisterFeature()
class {{feature_name.pascalCase()}}Feature extends Feature {
  @override
  void registerDependencies() {
    GetIt.I.registerSingleton<{{feature_name.pascalCase()}}Repository>({{feature_name.pascalCase()}}RepositoryImpl());
  }

  @override
  List<GoRoute> buildRoutes(GlobalKey<NavigatorState> rootNavigatorKey) {
    return [
      GoRoute(
        path: '/{{feature_name}}',
        builder: (context, state) => const {{feature_name.pascalCase()}}Page(),
      ),
    ];
  }
}
