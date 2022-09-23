
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn/view%20model/supportcubit/supportstate.dart';

class supportCubit extends Cubit<supportState> {
  supportCubit() : super(supportInitial());
  static supportCubit get(context)=>BlocProvider.of(context);

}
