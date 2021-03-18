import 'dart:core';
import 'dart:io';

void banner() => print("Calculadora sovietica\nby GPS\n\n");
void banner_op() => print("Menu:\n1 - Suma\n2 - Resta\n3 - Mult\n4 - Div");
void result(var num) => print ("The Result is ${num}");


void usage() => print("Usage:\n -h This help\n\nrun without arguments for menu mode\n" +
"run with 3 arguments, like 3 + 3, for a quick calc\n"
+ "for multiplication use 3 \\* 3 instead of *.");

List args() {
  print("Ingrese el primer numero");
  var num1 = double.parse(stdin.readLineSync());
  print("Ingrese el segundo numero");
  var num2 = double.parse(stdin.readLineSync());
  return [num1, num2];
}

void solve(var num1, var num2, var op){
  if ((op == 1) |  (op == '+')){
    result(num1 + num2);
  }
  if ((op == 2) | (op == '-')){
    result(num1 - num2);
  }
  if ((op == 3) | (op == '*')){
    result(num1 * num2);
  }
  if ((op == 4) | (op == '/')){
    result(num1 / num2);
  }
}

cli_mode(arguments){
  var num1, num2, op;
    num1 = int.parse(arguments[0]);
    num2 = int.parse(arguments[2]);
    op = arguments[1];
    solve(num1, num2, op);
    exit(0);
}

menu_mode(){
  banner();
  var nums = args();
  banner_op();
  print ("Ingrese un numero:");
  int op = int.parse(stdin.readLineSync());
  solve(nums[0], nums[1], op);
}

void main(List<String> arguments){
  if (arguments.length == 3){
    cli_mode(arguments);
  }else{
    if (arguments.length > 0){
      usage();
      exit(1);
    }
  }
  menu_mode();
}

