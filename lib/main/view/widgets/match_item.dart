import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:kairatapp/main/new_model/match_model.dart';

class MatchItem extends StatelessWidget {
  final MatchModel matchData;
  final String score;
  const MatchItem({super.key, required this.matchData, required this.score});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: Colors.white,
        border: Border.all(color: Colors.orange),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.network(
                matchData.league.logo,
                width: 40.w,
                height: 40.h,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.error, size: 50.h);
                },
              ),
              16.horizontalSpace,
              Expanded(
                child: Text(
                  '${matchData.league.name} - \n${matchData.league.round}',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    DateFormat('d MMMM', 'ru').format(matchData.fixture.date),
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    DateFormat.Hm('ru').format(matchData.fixture.date),
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            ],
          ),
          25.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 90.w,
                child: Column(
                  children: [
                    Image.network(
                      matchData.teams[0].logo,
                      width: 70.w,
                      height: 70.h,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(Icons.error, size: 50.h);
                      },
                    ),
                    6.verticalSpace,
                    Text(
                      matchData.teams[0].name,
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 130.w,
                child: Column(
                  children: [
                    Text(
                      score,
                      style: TextStyle(
                        fontSize: 40.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                    ),
                    10.verticalSpace,
                    Text(
                      matchData.fixture.venue.name ?? '',
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 90.w,
                child: Column(
                  children: [
                    Image.network(
                      matchData.teams[1].logo,
                      width: 70.w,
                      height: 70.h,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(Icons.error, size: 50.h);
                      },
                    ),
                    6.verticalSpace,
                    Text(
                      matchData.teams[1].name,
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
          10.verticalSpace,
          Text(
            '${matchData.fixture.status.elapsed}\'',
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.orange,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
