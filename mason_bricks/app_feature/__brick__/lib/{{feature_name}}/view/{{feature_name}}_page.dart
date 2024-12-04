import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/{{feature_name}}/domain/model/{{feature_name}}.dart';
import 'package:flutter_boilerplate/{{feature_name}}/state_management/{{feature_name}}_cubit.dart';

class {{feature_name.pascalCase()}}Page extends StatelessWidget {
  const {{feature_name.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => {{feature_name.pascalCase()}}Cubit(const {{feature_name.pascalCase()}}()),
      child: const {{feature_name.pascalCase()}}View(),
    );
  }
}

class {{feature_name.pascalCase()}}View extends StatelessWidget {
  const {{feature_name.pascalCase()}}View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('sample')),
      body: const Center(child: Text('sample')),
    );
  }
}