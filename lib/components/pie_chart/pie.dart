// ignore_for_file: must_be_immutable

import 'dart:math';

import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class pie_chart extends StatelessWidget {
  List ranking = [
    {'class': 'A', 'total': 23},
    {'class': 'B', 'total': 14},
    {'class': 'C', 'total': 8},
    {'class': 'D', 'total': 7},
    {'class': 'E', 'total': 21},
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Padding(
                padding: EdgeInsets.all(4),
                child: AspectRatio(
                  aspectRatio: 26 / 9,
                  child: DChartPie(
                    donutWidth: 150,
                    strokeWidth: 0.0,
                    labelColor: Colors.white,
                    labelLineColor: Colors.white,
                    data: [
                      {'domain': 'A', 'measure': 28},
                      {'domain': 'B', 'measure': 27},
                      {'domain': 'C', 'measure': 20},
                      {'domain': 'D', 'measure': 15},
                      {'domain': 'E', 'measure': 20},
                      {'domain': 'F', 'measure': 15},
                    ],
                    fillColor: (pieData, index) {
                      switch (pieData['domain']) {
                        case 'A':
                          return Colors.blue;
                        case 'B':
                          return Colors.blueAccent;
                        case 'C':
                          return Colors.lightBlue;
                        default:
                          return Colors.orange;
                      }
                    },
                    pieLabel: (pieData, index) {
                      return "${pieData['domain']}:\n${pieData['measure']}%";
                    },
                    labelPosition: PieLabelPosition.outside,
                  ),
                ),
      ),
    );
  }
}