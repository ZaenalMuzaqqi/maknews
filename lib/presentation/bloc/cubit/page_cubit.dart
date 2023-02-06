// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';

class PageCubit extends Cubit<int> {
  PageCubit() : super(0);

  void changePage(int page) {
    emit(page);
  }
}
