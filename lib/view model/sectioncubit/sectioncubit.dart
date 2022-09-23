
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn/view%20model/sectioncubit/sectionstate.dart';

class sectionCubit extends Cubit<sectionstate> {
  sectionCubit() : super(initialstate());

  static sectionCubit get(context)=>BlocProvider.of(context);

}