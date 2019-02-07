const madLib = (verb, adjective, noun) => `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`;
//console.log(madLib('make', 'best', 'guac')); //"We shall MAKE the BEST GUAC."


const isSubstring = (searchString, subString) => searchString.includes(subString)
//console.log(isSubstring("time to program", "time")) //true
//console.log(isSubstring("Jump for joy", "joys")) //false

function fizzBuzz(array) {
  const result = [];

  array.forEach(el => {
    if ((el % 3 === 0) ^ (el % 5 === 0)) {
      result.push(el);
    }
  });

  return result;
}

// isPrime

function isPrime(n) {
  if (n < 2) {
    return false;
  }

  for (let i = 2; i < n; i++) {
    if (n % i === 0) {
      return false;
    }
  }

  return true;
}

// sumOfNPrimes

function sumOfNPrimes(n) {
  let sum = 0;
  let countPrimes = 0;
  let i = 2;

  while (countPrimes < n) {
    if (isPrime(i)) {
      sum += i;
      countPrimes++;
    }
    i++;
  }

  return sum;
}