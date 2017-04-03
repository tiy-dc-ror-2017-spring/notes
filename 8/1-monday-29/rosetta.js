console.log('iAmBlockScoped', iAmBlockScoped);

const greeting = "Ello, ";
let robby = 'Robby';

function greeter(name) {
  return greeting + name;
}

console.log(greeter(robby));

if ('1' === 1) {
  console.log("Truthy");
} else {
  console.log("Falsey");
}

if (robby) {
  console.log(greeter(robby));
}

if ([1,2,3] === [1,2,3]) {
  console.log("Truthy");
} else {
  console.log("Falsey");
}

// ARRAYS
const numbers = [1, 2, 3];

numbers.forEach(function enumerateOverNumber(element){
  console.log(element * element);
});

let squares;

squares = numbers.map(function(element){
  return element * element;
});

console.log(squares);

// Objects
let person = { name: 'Robby' };
console.log(person['name']);
console.log(person.name);

person["status"] = 'ill';

console.log(person);

console.log(person.status);

person.temp = '101.2f';

console.log(person);

// Var vs Let
// let is block scoped. {} is a block

if (1==1) {
  let iAmBlockScoped = 1;
}
// Let will error
// console.log(iAmBlockScoped);

if (1==1) {
  var iAmBlockScoped = 1;
}

console.log(iAmBlockScoped);
