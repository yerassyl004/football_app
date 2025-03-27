import 'package:flutter/material.dart';
import 'package:kairatapp/details/views/details.dart';
import 'package:kairatapp/main/bloc/main.dart';
import 'package:kairatapp/main/view/widgets/match_item.dart';

class MainView extends StatelessWidget {
  final MainData data;
  const MainView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    print('MainView: ${data.matches.length}');
    return ListView.builder(
      itemCount: data.matches.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(matchData: data.matches[index], score: data.scores[index])));
          },
          child: Hero(
            tag: data.matches[index].fixture.id,
            child: Material(
              type: MaterialType.transparency,
              child: MatchItem(matchData: data.matches[index], score: data.scores[index]))));
      },
    );
  }
}
