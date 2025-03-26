import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:kairatapp/main/model/match.dart';

class MatchItem extends StatelessWidget {
  final MatchData matchData;
  const MatchItem({super.key, required this.matchData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
      // height: 100.h,
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: Colors.white,
        border: Border.all(color: Colors.orange),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.network(
                matchData.league.imagePath,
                width: 40.w,
                height: 40.h,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.error, size: 50.h);
                },
              ),
              Expanded(
                child: Text(
                  matchData.league.name,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    DateFormat('d MMMM', 'ru').format(matchData.startingAt),
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    DateFormat('EEEE', 'ru').format(matchData.startingAt),
                    style: TextStyle(fontSize: 18.sp, color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
          Text(
            DateFormat.Hm('ru').format(matchData.startingAt),
            style: TextStyle(fontSize: 18.sp, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 90.w,
                child: Column(
                  children: [
                    Image.network(
                      matchData.participants[0].imagePath,
                      width: 80.w,
                      height: 80.h,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(Icons.error, size: 50.h);
                      },
                    ),
                    Text(
                      matchData.participants[0].name,
                      style: TextStyle(fontSize: 15.sp, color: Colors.black, fontWeight: FontWeight.w500),
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 100.w,
                child: Text(
                  matchData.venue.name,
                  style: TextStyle(fontSize: 18.sp, color: Colors.grey, fontWeight: FontWeight.w500),
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                width: 90.w,
                child: Column(
                  children: [
                    Image.network(
                      matchData.participants[1].imagePath,
                      width: 80.w,
                      height: 80.h,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(Icons.error, size: 50.h);
                      },
                    ),
                    Text(
                        matchData.participants[1].name,
                        style: TextStyle(fontSize: 15.sp, color: Colors.black, fontWeight: FontWeight.w500),
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
