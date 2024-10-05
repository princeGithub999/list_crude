// import 'dart:ffi';
// import 'dart:io';
//
// void main() {
//   // task1();
//   // task2();
//   // task3();
//   // task4();
//   // task5();
//   // task6();
//   // task7();
//   // task8();
//   // task9();
//   // prime();
//   // task9();
//   // forEach1();
//   // tryCatch();
//   // function(1, 10);
//
//   double principal = 5000;
//   double time = 3;
//   double rate = 3;
//   double result = calculateInterest(principal, rate, time);
//   print("The simple interest is $result.");
//
//   function1();
//   task7();
//   print(addsum(12));
//
//   stdout.write(noParaMeterWithReturnType());
// }
//
// String noParaMeterWithReturnType(){
//   var x ="  ";
//   for(int a=1; a<=10;a++){
//     if(a%2==0){
//       x ='$x$a even';
//     }
//      else{
//       x ='$x$a odd';
//     }
//   }
//   return x;
// }
//
// String addsum(int a) {
//   var prime = 0;
//   for (int b = 1; b <= a; b++) {
//     if (a % b == 0) {
//       prime++;
//     }
//   }
//   if (prime == 2) {
//     return '$a is prime';
//   } else {
//     return '$a is not prime';
//   }
// }
//
// function1() {
//   List<String> names = ["Raj", "John", "Rocky"];
//   names[1] = "Bill";
//   names[2] = "Elon";
//   print(names);
// }
//
// double calculateInterest(double principal, double rate, double time) {
//   double interest = principal * rate * time / 100;
//   return interest;
// }
//
// void function(int a, int b) {
//   for (int c = a; c <= b; c++) {
//     var num = "";
//     for (int d = 1; d <= 10; d++) {
//       int y = c * d;
//       num += y.toString();
//     }
//     print("$num\t");
//   }
// }
//
// tryCatch() {
//   int a = 10;
//   int b = 15;
//   int result;
//   try {
//     result = a + b;
//     print('result is $result');
//   } catch (ex) {
//     print(ex);
//   }
// }
//
// forEach1() {
//   List<int> num = []; // List ko initialize karna hoga
//
//   // Loop ke through list me elements add karenge
//   for (int a = 1; a <= 10; a++) {
//     num.add(a);
//   }
//   // forEach method ka use karte hue list ke elements ko print karenge
//   num.forEach((num) => print(num));
// }
//
// task1() {
//   int x = 1;
//   for (int a = 1; a <= 4; a++) {
//     for (int b = 1; b <= a; b++) {
//       stdout.write('-');
//     }
//     int y = x;
//     for (int c = 4; c >= a; c--) {
//       stdout.write(' $y');
//       y++;
//     }
//     print('');
//     x++;
//   }
// }
//
// task2() {
//   int x = 1;
//   int a = 1;
//   while (a <= 4) {
//     int b = 1;
//     while (b <= a) {
//       stdout.write('-');
//       b++;
//     }
//     int y = x;
//     int c = 4;
//     while (c >= a) {
//       stdout.write(' $y');
//       y++;
//       c--;
//     }
//     print('');
//     a++;
//     x++;
//   }
// }
//
// task3() {
//   int a = 1;
//   int x = 1;
//   do {
//     int b = 1;
//     do {
//       stdout.write('-');
//       b++;
//     } while (b <= a);
//     int y = x;
//     int c = 4;
//     do {
//       stdout.write(' $y');
//       y++;
//       c--;
//     } while (c >= a);
//     a++;
//     x++;
//     print('');
//   } while (a <= 4);
// }
//
// task4() {
//   for (int a = 1; a <= 4; a++) {
//     for (int b = 4; b >= a; b--) {
//       stdout.write('-');
//     }
//     int x = a;
//     for (int c = 1; c <= a; c++) {
//       stdout.write('$x');
//       x--;
//     }
//     for (int d = 2; d <= a; d++) {
//       stdout.write(d);
//     }
//     print('');
//   }
// }
//
// task5() {
//   int a = 1;
//   while (a <= 4) {
//     int b = 4;
//     while (b >= a) {
//       stdout.write('-');
//       b--;
//     }
//     int x = a;
//     int c = 1;
//     while (c <= a) {
//       stdout.write(x);
//       x--;
//       c++;
//     }
//     int d = 2;
//     while (d <= a) {
//       stdout.write(d);
//       d++;
//     }
//     print('');
//     a++;
//   }
// }
//
// task6() {
//   int a = 1;
//   do {
//     int b = 4;
//     do {
//       stdout.write('-');
//       b--;
//     } while (b >= a);
//
//     int x = a;
//     int c = 1;
//     do {
//       stdout.write(x);
//       x--;
//       c++;
//     } while (c <= a);
//
//     int d = 2;
//     do {
//       if (a != 1) {
//         stdout.write(d);
//         d++;
//       } else {
//         stdout.write(' ');
//       }
//     } while (d <= a);
//     a++;
//     print('');
//   } while (a <= 4);
// }
//
// void task7() {
//   for (int a = 1; a <= 4; a++) {
//     for (int b = 1; b <= a; b++) {
//       stdout.write((a + b) % 2);
//     }
//     print('');
//   }
// }
//
// task8() {
//   for (int a = 1; a <= 5; a++) {
//     for (int b = 1; b <= a; b++) {
//       stdout.write(' ');
//     }
//     for (int b = 5; b >= a; b--) {
//       if (b == 3 && a == 2 || b == 4 && a == 2 || a == 3 && b == 4) {
//         stdout.write('  ');
//       } else {
//         stdout.write(' *');
//       }
//     }
//     print('');
//   }
//   for (int c = 2; c <= 5; c++) {
//     for (int e = 5; e >= c; e--) {
//       stdout.write(' ');
//     }
//     for (int f = 1; f <= c; f++) {
//       if (f == 2 && c == 3 || c == 4 && f == 2 || c == 4 && f == 3) {
//         stdout.write('  ');
//       } else if (c != 1) {
//         stdout.write(' *');
//       } else {}
//     }
//     print('');
//   }
// }
//
// task9() {
//   for (int a = 1; a <= 10; a++) {
//     var col = "";
//     for (int b = 1; b <= 20; b++) {
//       // if((a>=4&&a<=7)&&(b>=4&&b<=7)){
//       //   // stdout.write('\t');
//       //
//       // }else{
//       //
//       //   stdout.write('$num\t');
//       // }
//       int num = a * b;
//       col += "$num\t";
//     }
//     print(col);
//     col = "";
//   }
// }
//
// task10() {
//   for (int a = 1; a <= 10; a++) {
//     for (int b = 1; b <= 20; b++) {
//       if ((a >= 4 && a <= 7) && (b >= 4 && b <= 7)) {
//         stdout.write('\t');
//       } else {
//         int num = a * b;
//         stdout.write('$num\t');
//       }
//     }
//     print('');
//   }
// }
//
// prime() {
//   for (int a = 1; a <= 10; a++) {
//     int p = 0;
//     for (int b = 1; b <= a; b++) {
//       if (a % b == 0) {
//         p++;
//       }
//     }
//     if (p <= 2) {
//       stdout.write('$a is prime');
//     }
//      else {
//       stdout.write('$a is not prime');
//     }
//     stdout.writeln();
//   }
//

import 'dart:ffi';
import 'dart:io';
import 'dart:math';



void main() {
  question1();
  question2();
  question3();
  question4();
  question6();
  question7();
  question9();
  question10();
  question11();
  question12();
  question13();
  question14();
  question15();
  question16();
  question17();
  question18();
  question19();
}
//How do you declare an empty map in Dart?
question1() {
  Map<String, int> data = {

  };

  print('');
}
  //Can a Dart map have null values?
question2() {
  Map<String, dynamic> data = {"rahul": 10, "prince": 70, "deepak": Null};
  print('$data');
}
//What is the difference between a map and a list in Dart?
question3() {
  List liat = ["String", 10, 50.0];
  print(liat);
  Map<String, int> data = {
    'Care': 1000000,
    'A C': 5500,
    'T V': 23500,
  };
  print(data);
}
//How do you add key-value pairs to a Dart map?
question4() {
  Map<String, int> map = {
    "maingo": 80,
  };
  map['prince'] = 100;
  print(map);
}
//How do you check if a key exists in a Dart map?
question6() {
  Map<String, String> map = {'rahul': 'patna', 'deepak': 'fatanPur'};
  if (map.isNotEmpty) {
    print('$map Map is exists ');
  } else {
    print('$map Map is dose not exists ');
  }
}
//What is the remove method used for in a Dart map?
question7() {
  Map<String, String> map = {'rahul': 'patna', 'deepak': 'fatanPur'};
  map.remove('rahul');
  print(map);
  print('');
}


//How do you iterate through all key-value pairs in a Dart map?
question9() {
  Map<String, int> data = {
    'a': 10,
    'b': 50,
    'c': 90,
    'd': 40,
    'e': 35,
  };

  for (var entry in data.entries) {
    print(entry);
  }
}

//Explain the difference between the [] operator and the putIfAbsent method in Dart maps
question10(){
  var map = {
  };
  map.putIfAbsent('a',()=> 90);
  map.putIfAbsent('b',()=> 20);

  map['name']=10;
  print("$map");
}

//How can you get the length of a Dart map?
question11(){
  Map<String, int> data = {
    'Care': 1000000,
    'A C': 5500,
    'T V': 23500,
  };
 var lenth = data.length;
 print(" Map Lenth $lenth");
 print('');
}

//What is the purpose of the addAll method in Dart maps?
question12(){
  Map<String, int> data = {
    'Care': 1000000,
    'A C': 5500,
    'T V': 23500,
  };
  Map<String, int> data1 = {
    'Care1': 5000000,
    'A C2': 2500,
    'T V3': 73500,
  };
  data.addAll(data1);
  print(data);
}

//How do you clear all key-value pairs from a Dart map?
question13(){
  Map<String, int> data = {
    'Care': 1000000,
    'A C': 5500,
    'T V': 23500,
  };
  data.clear();
  print('$data');
}

//What happens if you try to access a key that doesn't exist in a Dart map using the [] operator?
question14(){
    Map<String,String> map = {
      'ram':'hello',
      'rakesh':'hai',
    };
    var velue = map['suman'];
    print(velue);
}

//How do you create a copy of a Dart map?

question15(){
  Map<int,int> data = {10:20,40:32,84:90};
  Map<String,int> data1 = {'nam':20,'rahul':32,'pankaj':90};
  print(data);
  print(data1);
}

//What is the update method used for in Dart maps?

question16(){
  Map<String,int> data1 = {'nam':20,'rahul':32,'pankaj':90};
  data1.update('nam',(value)=>value = 90);
  print(data1);
print('');
}

//Explain the difference between the map and forEach methods in Dart when working with maps.
question17(){
    Map<String,int> map = {
      'prince':10,
      'Aman':20,
      'Sonu':50,
      'ramu':90
    };

    map.forEach((Key,value)=>
      print('$Key,$value'));

}
//How do you check if a Dart map is empty?
question18(){
    Map<String, int> data = {
      'a': 10,
      'b': 50,
      'c': 90,
      'd': 40,
      'e': 35,
    };
    if (data.isEmpty) {
      stdout.write("$data  Map is empty");
    } else {
      stdout.write("$data Map is not empty");
    }
    print('');
  }

//What is the purpose of the putIfAbsent method in Dart maps, and when might you use it?

question19(){
    Map<String,String> map = {
      'aman':'rahul',
      'prince':'sonu',
    };
    map.putIfAbsent('rahul', ()=>'paiga');
    map.putIfAbsent('aman', ()=>'bheldi');
    print(map);
}