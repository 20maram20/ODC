
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn/view%20model/FAQ/faqstate.dart';

class faqCubit extends Cubit<faqState> {
  faqCubit() : super(faqInitial());
}