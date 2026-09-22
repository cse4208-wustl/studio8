# Studio 6

## Lambdas and the Function-Call Operator

In this studio, you will explore how C++ lets you build callable values without writing a named function, using lambda expressions and `std::bind`. You will see that a lambda is really an object of a compiler-generated class with an overloaded function-call operator, and you will use these callables to store, compose, and invoke behavior in different ways.

## Collaboration

You may complete this studio individually or in a small group.

## Reference

If you need a refresher on the environment setup steps from the previous studios, see [Studio 0](https://github.com/cse4208-wustl/studio0).

The function-composition template used later in the studio is based on a code fragment from the Stack Overflow discussion [function composition in C++ / C++11](https://stackoverflow.com/questions/19071268/function-composition-in-c-c11).

## Exercises

Record your answers in `ANSWERS.md` as you work. Include the names of everyone who worked on the studio in your first answer, and number your responses so they are easy to match to the exercises.

1. List the names of the people who worked together on this studio.

2. SSH into `shell.cec.wustl.edu` using your WUSTL Key credentials, then use `qlogin` to log into one of the Linux Lab machines and confirm that the version of `g++` there is correct, as you did in [Studio 0](https://github.com/cse4208-wustl/studio0).

   Clone your `studio6` repo and work inside that cloned directory.

   Define a `main` function for your program. At the top of the source file, include the `<cmath>` header, which declares standard mathematical functions including those originally provided by C.

   In `main`, declare a variable of type `float` and initialize it to a non-zero value.

   Output the value of that variable and the result of calling `std::sin` with the result of calling `std::cos` on that `float` variable. Chain the calls directly by wrapping the `std::sin` call around the `std::cos` call instead of storing the intermediate result in a separate variable.

   Compile and run your program. In your answers, show:

   - the code you wrote for this exercise
   - the output it produced

3. At the top of the source file containing `main`, include the `<functional>` header, which declares functions and templates for functional programming.

   In `main`, declare a variable by appropriately instantiating the standard `function` template and initialize it with a lambda based on `std::sin`, as illustrated in lecture.

   Declare another variable of the same callable type initialized with a lambda based on `std::cos`.

   Output the value of the `float` variable from the previous exercise and the result of calling the first callable with the result of calling the second callable with that `float` variable. Chain the calls directly by wrapping the call to the first callable around the call to the second one.

   Compile and run your program, and confirm that you see the same output as in the previous exercise. In your answers, show the code you wrote for this exercise.

4. This repo includes [`Compose_T.cpp`](Compose_T.cpp) and [`Compose_T.h`](Compose_T.h), which provide a function-composition template for this studio.

   The provided `Makefile` already includes the `-DTEMPLATE_HEADERS_INCLUDE_SOURCE` flag, lists `Compose_T.cpp` on the `TMPL_SRCS` line, and lists `Compose_T.h` on the `HEADER_FILES` line.

   In `main`, declare a variable with `auto` type and initialize it with a call to the `compose` template function declared and defined in `Compose_T.h` and `Compose_T.cpp`, using the callable based on `std::sin` as the first argument and the callable based on `std::cos` as the second argument. The syntax is simply `compose(f, g)` without extra type information.

   Then output the value of the `float` variable from the previous exercises and the result of calling the composed callable with that `float` variable.

   Compile and run your program, and confirm that you see the same output as in the previous exercise. In your answers, show the code you wrote for this exercise.

5. In `main`, declare another variable with `auto` type, this time initializing it by passing the callable you declared in the previous exercise and the `float` variable from the previous exercises into a call to `std::bind`.

   Then output the value produced by calling the variable you declared for this exercise using its function-call operator, which takes no parameters.

   Compile and run your program, and confirm that you see the same output as in the previous exercise. In your answers, show the code you wrote for this exercise.

## Deliverables

Commit and push all modified and added files to the repo.
