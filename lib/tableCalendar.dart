import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';

class tableCalendar extends StatefulWidget {
  @override
  State<tableCalendar> createState() => _tableCalendarState();
}

class _tableCalendarState extends State<tableCalendar> {
  CalendarFormat format = CalendarFormat.month;

  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: TableCalendar(
          rowHeight: 70,
          onDaySelected: (DateTime selectDay, DateTime focusDay) {
            setState(() {
              selectedDay = selectDay;
              focusedDay = focusDay;
            });
          },
          selectedDayPredicate: (DateTime date) {
            return isSameDay(selectedDay, date);
          },
          calendarStyle: CalendarStyle(
            selectedDecoration: BoxDecoration(
              border: Border.all(
                color: Colors.greenAccent,
              ),
              shape: BoxShape.rectangle,
            ),
            selectedTextStyle: TextStyle(color: Colors.white),
            todayDecoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(
                color: Color(0xFF10f6f6),
              ),
            ),
            outsideDaysVisible: false,
            rangeHighlightScale: 1.0,
          ),
          startingDayOfWeek: StartingDayOfWeek.monday,
          focusedDay: selectedDay,
          firstDay: DateTime(1920),
          lastDay: DateTime(2050),
          headerStyle: HeaderStyle(
            titleCentered: true,
            formatButtonVisible: false,
            headerPadding: EdgeInsets.zero,
          ),
        ),
      ),
    );
  }
}
