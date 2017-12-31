// 1

let iterative_1 = (n, m) => {
  let notes = ["do", "rei", "mi", "fa", "so", "la", "ti", "do"];

  for (var i = 0; i < n; i++) {
    for (var j = 0; j < m; j++) {
      let position = (i+j) % 8;
      console.log(notes[position]);
    }
  }
};

// O(n * m): Quadratic time?

// 2

let iterative_2 = (n) => {
  let notes = ["do", "rei", "mi", "fa", "so", "la", "ti", "do"];

  for (var i = 0; i < n; i++) {
    for (var j = i; j >= 0; j--) {
      let position = (i+j) % 8;
      console.log(notes[position]);
    }
  }
};

// O(n): Linear time.
//
// For each i less than n, (n - i) console.log operations will occur.
// The outer for loop runs in O(n) time. For n = 4, there will be
// four different nested for loops run, and their respective
// operation counts will be: 1, 2, 3, 4.
//
// This gives us a total complexity of 2(n + 1), or O(n).

// 3

let iterative_3 = (n, m) => {
  let notes = ["do", "rei", "mi", "fa", "so", "la", "ti", "do"];

  let bigger = n > m ? n : m;
  let smaller = n <= m ? n : m;

  for (var i = 0; i < smaller; i++) {
    for (var j = i; j < bigger; j++) {
      let position = (i+j) % 8;
      console.log(notes[position]);
    }
  }
};

// O(n^2): Quadratic time.

// for each i < bigger, we run m operations, giving a time complexity of
// n * m, or O(n*m), or, when reduced down, essentially O(n^2).
