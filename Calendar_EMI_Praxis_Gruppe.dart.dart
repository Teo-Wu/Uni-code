List<String> days = ["MO","DI","MI","DO","FR","SA","SO"];
  //list months contains the number of days in every month
List months = [31,29,31,30,31,30,31,31,30,31,30,31];


void printCalender(int month, int day)
{
    //print the first row with days names seprated by '|'
    print("|"+days.join("|")+"|");

    //add empty fields to the list line corresponding to the starting weekday
    List<String>line=[];
    String space = "  ";
    for (int i = 1;i<day;i++){
      line.add(space);
    }

    //Loop over every day and add it to the list line
    //weekday variable helps to add a new line every seven days
    int weekday = day;
    for (day =1; day <= months[month-1];day++){
      if(day<10){
        line.add(" "+day.toString());
      }
      else{
      line.add(day.toString());
      }
      if(weekday%7 == 0 ){
        line.add("\n");
        weekday = 0;
      }
      weekday++;
    }

    //add empty fields to the remaining days of the week until the month ends
    for (int i = weekday;i<=7;i++){
      line.add(space);
    }

    //print the whole calender 
    print("|" +line.join("|")+"|");
}

int main(){
  // Call printCalender Function
  printCalender(9,7);
  return 0;
}
