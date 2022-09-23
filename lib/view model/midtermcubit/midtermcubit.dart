
import 'package:flutter_bloc/flutter_bloc.dart';

import 'midtermstate.dart';

class midtermCubit extends Cubit<midtermstate> {
  midtermCubit() : super(initialstate());

  static midtermCubit get(context)=>BlocProvider.of(context);

}