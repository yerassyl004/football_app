import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kairatapp/app/di.dart';
import 'package:kairatapp/main/bloc/main.dart';
import 'package:kairatapp/main/di.dart';
import 'package:kairatapp/main/view/widgets/main_view.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.getMainBloc()..add(MainEvent.initial()),
      child: MainPageView(),
    );
  }
}

class MainPageView extends StatelessWidget {
  const MainPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (data) => MainView(matches: data.matches),
            orElse: () => SizedBox());
        },
      ),
    );
  }
}
