import 'package:bloc/bloc.dart';
import 'package:flutter_boilerplate/{{feature_name}}/domain/model/{{feature_name}}.dart';

class {{feature_name.pascalCase()}}Cubit extends Cubit<{{{feature_name.pascalCase()}}}> {
  {{feature_name.pascalCase()}}Cubit(super.initialState);
}
