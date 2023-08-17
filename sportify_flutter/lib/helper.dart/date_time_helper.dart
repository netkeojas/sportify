int compareDates({required DateTime date1, required DateTime date2}) {
  if (date1.isBefore(date2)) {
    print('$date1 is before $date2');
    return 1;
  } else if (date1.isAfter(date2)) {
    print('$date1 is after $date2');
    return 2;
  } else {
    print('$date1 is equal to $date2');
    return 0;
  }
}

DateTime convertToDateOnlyFormat({required DateTime dateTime}) {
  return DateTime(dateTime.year, dateTime.month, dateTime.day);
}
