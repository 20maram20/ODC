
import 'package:flutter_bloc/flutter_bloc.dart';

import 'notestate.dart';

class noteCubit extends Cubit<noteState> {
  noteCubit() : super(noteInitial());
  static noteCubit get(context)=>BlocProvider.of(context);

}