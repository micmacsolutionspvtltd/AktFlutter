import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';



class HomeWorkPage extends StatefulWidget {
  const HomeWorkPage({Key? key}) : super(key: key);

  @override
  State<HomeWorkPage> createState() => _HomeWorkPageState();
}

class _HomeWorkPageState extends State<HomeWorkPage> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New'),
      ),
      body: TableCalendar(
        focusedDay: DateTime.now(),
        firstDay: DateTime(1990),
        lastDay: DateTime(2050),
        calendarFormat: format,
        daysOfWeekVisible: true,

        onDaySelected: (DateTime selectDay , DateTime focusDay){
setState(() {
  selectedDay = selectDay;
  focusDay = focusDay;
});
        },
        selectedDayPredicate: (DateTime date){
          return isSameDay(selectedDay, date);
        },

        calendarStyle: CalendarStyle(
          isTodayHighlighted: true,
          selectedDecoration: BoxDecoration(
            color: Colors.blue,
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(5.0)
          ),
            selectedTextStyle: TextStyle(color : Colors.white),
          todayDecoration: BoxDecoration(
             color: Colors.purpleAccent,
            shape: BoxShape.circle
            // shape: BoxShape.rectangle,
            // borderRadius: BorderRadius.circular(5.0)
          )
        ),
      headerStyle: HeaderStyle(formatButtonVisible: false,
      titleCentered: true,
      leftChevronVisible: true , rightChevronVisible: true),
      ),
    );//TableCalendar(calendarController: CalendarController(),);
  }
}



