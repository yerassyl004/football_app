import 'package:flutter/material.dart';
import 'package:kairatapp/main/model/match.dart';
import 'package:kairatapp/main/view/widgets/match_item.dart';

class MainView extends StatelessWidget {
  final List<MatchData> matches;
  const MainView({super.key, required this.matches});

  @override
  Widget build(BuildContext context) {
    print('MainView: ${matches.length}');
    return ListView.builder(
      itemCount: matches.length,
      itemBuilder: (context, index) {
        return MatchItem(matchData: matches[index]);
      },
    );
  }
}
