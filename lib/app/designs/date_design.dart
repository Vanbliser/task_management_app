String date = '';
String ss = '';
void main() {
  var time = DateTime.now();
  String year = '${time.year}';
  date = '${months(time.month)} ${time.day}, ${year.substring(2)}';
  String min = '${time.minute}';
  var hours = ((time.hour >= 12) ? (time.hour - 12) : time.hour);
  String hour = '$hours';
  var xx = (time.hour >= 12) ? 'PM' : 'AM';
  if (min.length == 1) {
    min = '0' + min;
  }
  if (time.hour == 0) {
    hour = '00';
  } 
  ss = '$hour:$min $xx';
  
}

String months(int month) {
  Map<int, String> monthMap = {
    1: 'Jan',
    2: 'Feb',
    3: 'March',
    4: 'April',
    5: 'May',
    6: 'June',
    7: 'July',
    8: 'Aug',
    9: 'Sep',
    10: 'Oct',
    11: 'Nov',
    12: 'Dec'
  };
  return monthMap[month]!;
}

String myDate() {
  main();
  return date;
}

String myTime() {
  main();
  return ss;
}
