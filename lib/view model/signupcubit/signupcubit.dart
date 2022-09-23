import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn/view%20model/signupcubit/signupstate.dart';

class signupcubit extends Cubit<signupstate>{
  signupcubit():super(intialstate());

  static signupcubit get(context)=>BlocProvider.of(context);

}
