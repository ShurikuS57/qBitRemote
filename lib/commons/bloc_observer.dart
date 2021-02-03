import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Observer extends BlocObserver {

  @override
  void onEvent(Bloc bloc, Object event) {
    if(!kReleaseMode){
      print(event);
    }
    super.onEvent(bloc, event);
  }

}