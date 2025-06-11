import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class DateCalender extends StatelessWidget {
  const DateCalender({
    super.key,
    required this.focusedDay,
    required this.firstDay,
    required this.lastDay,
    required this.selectedDayPredicate,
    required this.onDaySelected,
  });
  final DateTime focusedDay;
  final DateTime firstDay;
  final DateTime lastDay;
  final bool Function(DateTime day) selectedDayPredicate;
  final void Function(DateTime day, DateTime focusedDay) onDaySelected;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      selectedDayPredicate: selectedDayPredicate,
      onDaySelected: onDaySelected,
      rowHeight: 60,
      locale: 'ar',
      focusedDay: focusedDay,
      firstDay: firstDay,
      lastDay: lastDay,
      availableGestures: AvailableGestures.horizontalSwipe,
      calendarFormat: CalendarFormat.week,
      startingDayOfWeek: StartingDayOfWeek.friday,
      weekendDays: const [
        DateTime.friday,
      ],
      calendarStyle: CalendarStyle(
          weekendDecoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color(0XFFE8E8E8)),
          defaultDecoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color(0XFFE8E8E8)),
          weekendTextStyle: GoogleFonts.tajawal(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          defaultTextStyle: GoogleFonts.tajawal(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          todayDecoration: BoxDecoration(
              border: Border.all(
                color: Colors.teal.shade200,
              ),
              color: Colors.teal.shade200,
              shape: BoxShape.circle),
          selectedDecoration: const BoxDecoration(
              color: Color(0xFF37928B), shape: BoxShape.circle),
          selectedTextStyle: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500)),
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: GoogleFonts.tajawal(
          color: const Color(0xFF969696),
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        weekendStyle: GoogleFonts.tajawal(
          color: const Color(0xFF969696),
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
      headerStyle: HeaderStyle(
          formatButtonVisible: false,
          leftChevronIcon: const Icon(
            Icons.chevron_left,
            color: Color(0xFF969696),
          ),
          rightChevronIcon: const Icon(
            Icons.chevron_right,
            color: Color(0xFF969696),
          ),
          titleTextStyle: GoogleFonts.tajawal(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500)),
    );
  }
}
