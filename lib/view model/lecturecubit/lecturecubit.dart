
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn/view%20model/lecturecubit/lecturestate.dart';

class lectureCubit extends Cubit<lecturestate> {
  lectureCubit() : super(Initialstate());

  static  lectureCubit get(context)=>BlocProvider.of(context);

}