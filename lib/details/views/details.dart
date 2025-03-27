import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kairatapp/app/di.dart';
import 'package:kairatapp/details/bloc/details.dart';
import 'package:kairatapp/details/di.dart';
import 'package:kairatapp/main/new_model/match_model.dart';
import 'package:kairatapp/main/view/widgets/match_item.dart';

class DetailsPage extends StatelessWidget {
  final MatchModel matchData;
  final String score;
  const DetailsPage({super.key, required this.matchData, required this.score});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              di.getDetailsBloc()
                ..add(DetailsEvent.loadData(matchData.fixture.id.toString())),
      child: DetailsView(matchData: matchData, score: score),
    );
  }
}

class DetailsView extends StatelessWidget {
  final MatchModel matchData;
  final String score;

  const DetailsView({super.key, required this.matchData, required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, size: 24.sp),
                      onPressed: () => Navigator.pop(context),
                    ),
                    Text(
                      'Match Details',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: Icon(null, size: 24.sp),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
              Hero(
                tag: matchData.fixture.id,
                child: Material(
                  type: MaterialType.transparency,
                  child: MatchItem(matchData: matchData, score: score),
                ),
              ),
              SizedBox(height: 16.h),
              BlocBuilder<DetailsBloc, DetailsState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () => Center(
                      child: CircularProgressIndicator(color: Colors.orange),
                    ),
                    loaded: (data) => _buildScoreTable(data.matches),
                    orElse: () => SizedBox(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildScoreTable(List<Event> events) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: Colors.white,
        border: Border.all(color: Colors.orangeAccent),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Match Events",
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.h),
          Table(
            children: [
              TableRow(
                decoration: BoxDecoration(color: Colors.orange),
                children: [
                  _tableCell("Team"),
                  _tableCell("Time"),
                  _tableCell("Event"),
                ],
              ),
              ...events.map(
                (event) => TableRow(
                  children: [
                    _tableCell(event.team.name),
                    _tableCell("${event.time.elapsed}’"),
                    _eventCell(event),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _tableCell(String text) {
    return Padding(
      padding: EdgeInsets.all(8.r),
      child: Expanded(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14.sp),
        ),
      ),
    );
  }

  Widget _eventCell(event) {
    IconData? icon;
    Color? color;

    switch (event.type) {
      case Type.GOAL:
        icon = Icons.sports_soccer;
        color = Colors.black;
        break;
      case Type.CARD:
        icon = Icons.square;
        color = Colors.yellow;
        break;
      // case Type.CARD:
      //   icon = Icons.square;
      //   color = Colors.red;
      //   break;
      default:
        return _tableCell(event.detail?.toString() ?? 'Unknown');
    }

    return Padding(
      padding: EdgeInsets.all(8.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 16.sp),
          SizedBox(width: 4.w),
          Expanded(child: Text(event.player.name ?? '', style: TextStyle(fontSize: 14.sp))),
        ],
      ),
    );
  }
}
