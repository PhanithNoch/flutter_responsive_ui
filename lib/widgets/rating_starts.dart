import 'package:flutter/material.dart';


class RatingStarts extends StatelessWidget {
final int rating;
  @override
  Widget build(BuildContext context) {
    String starts = '';
    for(int i =0;i<rating;i++){
      starts +='⭐  ';
    }
    starts.trim();
    return Text(starts);
  }

  RatingStarts(this.rating);
}