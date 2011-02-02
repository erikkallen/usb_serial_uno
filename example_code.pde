#include <iostream.h>
#include <math.h>

float asqrt (float x, float precision) {
  float guess;

  guess = 1.0;
  while (fabs(guess*guess-x) >= precision) {
    guess = 0.5 * (guess + (x / guess));
  }
  return (guess);
}

int main () {
  float x, precision; 
  cout << "Enter a real number and the precision: ";
  cin >> x >> precision;
  cout << "sqrt(" << x << ") is almost " << asqrt(x,precision) << endl;
  return(0);
}
