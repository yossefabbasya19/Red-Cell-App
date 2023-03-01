import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:red_cell_app/modules/chat/chat_screen.dart';
import 'package:red_cell_app/modules/donation/donation_screen.dart';
import 'package:red_cell_app/modules/home/home_screen.dart';
import 'package:red_cell_app/modules/news/news_screen.dart';
import 'package:red_cell_app/modules/profile/profile_screen.dart';
import 'package:red_cell_app/shared/cubit/red_cell_state.dart';


class RedCellCubit extends Cubit<RedCellStates> {
  RedCellCubit() : super(RedCellInitialState());
  static RedCellCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    NewsScreen(),
    DonationScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];
  void changeBottomNav(int index) {
    {
      currentIndex = index;

      emit(SocialChangeBottomNavState());
    }
  }
}
/////
