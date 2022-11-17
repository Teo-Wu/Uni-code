
List<String>days=["MO","Di","MI","DO","FR","SA","SO"] ;
List<String>date=[];
int number=0;
void Calendar(int x1, int x){
   String s="  ";
   String s2;
 
    
  print("this is the calender for the $x1-th month");
   
   if(x1==2){
   number=28;
   }
   if((x1==4)||(x1==6)||(x1==9)||(x1==11)){
   number=30;
   }
   else{
   number=31;
   }
   
  for(int j=0;j<x-1;j++){
   date.add(s);
  }

  for(int i=1;i<=number;i++){
    if(i<10){
    s2=" "+i.toString(); 
    }
    else{
    s2=i.toString();
    }
    date.add(s2);
    }

  for(int k=0;k<(number+2%7);k++){
    date.add(s);
  }
}
void main()
{
int month=8; //
int begin=3;
Calendar(month,begin);

List<String>all=days+(date);
print("|"+all.join("|")+"|");
int c=0;
for(int d=0;d<=number/7+1;d++){
if(c<all.length){
print("|"+all[c]+"|"+all[c+1]+"|"+all[c+2]+"|"+all[c+3]+"|"+all[c+4]+"|"+all[c+5]+"|"+all[c+6]+"|");
c+=7;
}

}
}