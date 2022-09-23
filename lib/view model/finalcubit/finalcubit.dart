
import 'package:flutter_bloc/flutter_bloc.dart';

import 'finalstate.dart';

class finalCubit extends Cubit<finalstate> {
  finalCubit() : super(initialstate());
  static finalCubit get(context)=>BlocProvider.of(context);

}