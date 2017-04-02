#include <iostream> // std::cout, std::cin
#include <cstdlib> // random number
#include <stdio.h> //for printf
using namespace std;
//my program in C++
//to compile will be g++ test.cpp -o test.exe ; ./test.exe
int main()
{
  int guess;
  int minNumber = 1;
  int maxNumber = 100;
  srand (time(NULL)); /* random time generator */
  int magicNumber = rand() % 100 + 1;
  
  cout << "What is your favourite number!" << endl;;
  cin >> guess;
  cout << "The value you entered is " << guess << endl;;
  
  /* initialize random seed: */
  /* srand (time(NULL)); */
  
  bool found = false;
  while (!found) {
	  cout << "Guess the number between " << minNumber << " and " << maxNumber << ":" << endl;
	  int iguess;
	  cin >> iguess;
	  if (iguess == magicNumber){
		  found = true;
	  }
	  if (iguess < magicNumber){
		  cout << "Too Low" << endl;
	  }
	  if (iguess > magicNumber){
		  cout << "Too High" << endl;
	  }
  }
  
  printf("You got it!");
  
   do {
     cout << '\n' << "Press the Enter key to continue.";
   } while (cin.get() != '\n');
}
 