import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bus_state.dart';

class BusCubit extends Cubit<BusState> {
  BusCubit() : super(BusInitial());
}
