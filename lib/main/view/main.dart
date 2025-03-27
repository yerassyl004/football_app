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
      backgroundColor: Colors.white,
      body: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return state.maybeWhen(
            error: (error) => Center(child: Text(error ?? 'Unknown Error')),
            loading:
                () => Center(
                  child: CircularProgressIndicator(color: Colors.orange),
                ),
            empty:
                () => Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'No live matches',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed:
                            () => context.read<MainBloc>().add(
                              MainEvent.loadData(),
                            ),
                        child: Text('Refresh'),
                      ),
                    ],
                  ),
                ),

            loaded: (data) => MainView(data: data),
            orElse: () => SizedBox(),
          );
        },
      ),
    );
  }
}
