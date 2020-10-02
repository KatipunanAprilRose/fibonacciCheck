import 'dart:io';

bool check(list){
  for(int i = 2 ; i < list.length; i++){
    if((list[i-1]+list[i-2]) != list[i]){
      return false;
    }
  }
  return true;
}


void main(){
  print('fibonacci checker');
  List list = [];
  int num,j = 1;
  print('enter size of list');
  num = int.parse(stdin.readLineSync());
  if(num <3 || num >10){
    print('invalid input');
  }else{
    for(int i = 0 ; i <num ; i++){
        print('Enter number $j');
        list.add(int.parse(stdin.readLineSync()));
    }
    print(list);
    print(check(list));
  }
}
//for loop check the range of the list one by one and check if 3<n<10