import 'dart:js';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn/view%20model/database/network/dio_helper.dart';
import 'package:learn/view%20model/logincubit/loginstate.dart';
import 'package:learn/view/pages/login.dart';

import '../database/network/end_points.dart';

class logincubit extends Cubit<loginstate>{
  logincubit():super(initialstate());


  static logincubit get(context)=>BlocProvider.of(context);
  void login (){

  }




}

