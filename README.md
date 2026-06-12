# Studio 8

## Object-Oriented Programming

In this studio, you will explore inheritance-related relationships between classes and their member functions, along with how those relationships affect how those classes can be used. You will work with inheritance polymorphism in C++, which will continue to matter in later labs and in the rest of the course.

## Collaboration

You may complete this studio individually or in a small group.

## Reference

If you need a refresher on the environment setup steps from the previous studios, see [Studio 0](https://github.com/cse4208-wustl/studio0).

## Exercises

Record your answers in `ANSWERS.md` as you work. Include the names of everyone who worked on the studio in your first answer, and number your responses so they are easy to match to the exercises.

1. List the names of the people who worked together on this studio.

2. SSH into `shell.cec.wustl.edu` using your WUSTL Key credentials, then use `qlogin` to log into one of the Linux Lab machines and confirm that the version of `g++` there is correct, as you did in [Studio 0](https://github.com/cse4208-wustl/studio0).

   Clone your `studio8` repo and work inside that cloned directory.

   The repo already includes a `Makefile`. Update it as needed so it builds an executable named `studio8` from the source and header files you write.

   Add a new header file and source file that declare and define a class with a public default constructor and public destructor. Each should print a message indicating the class name and method name, such as `BaseClass::BaseClass()` in the constructor and `BaseClass::~BaseClass()` in the destructor.

   Add another header and source file that declare and define a class derived publicly from the first class. Give the derived class its own public default constructor and public destructor, and have each print its class name and method name, such as `DerivedClass::DerivedClass()` and `DerivedClass::~DerivedClass()`.

   Add another source file that defines `main`. In it, declare one object of each class type and return a descriptively named symbol whose value is `0` to indicate success.

   Build and run your program. In your answers:

   - show the output your program produced
   - explain briefly why the program produced that output

   Hint: you should see more constructor and destructor calls than just one of each per object.

3. Add a non-virtual public member function to each class with the same member function name, no parameters, and a `void` return type. Define each function in the corresponding source file so it prints the class name and method name.

   In `main`, after the object declarations from the previous exercise, add two references to the base class type and one reference to the derived class type. Initialize one base-class reference from the base-class object, and initialize the other base-class reference and the derived-class reference from the derived-class object.

   Invoke the public method on both objects and on all three references. Print a label before each call so you can tell which call produced which output.

   Build and run your program. In your answers, show the output your program produced.

4. In each class, put the keyword `virtual` before the declaration of the member function you added in the previous exercise.

   Build and run the program again. In your answers:

   - show the output the program produced
   - explain briefly how and why the output differed when you used `virtual` versus when you did not

5. Add two pointers to the base class type and one pointer to the derived class type to `main`. Initialize one base-class pointer using the address of the base-class object, and initialize the other base-class pointer and the derived-class pointer using the address of the derived-class object. Then call the virtual member function through each pointer.

   In your answers, explain briefly whether the calls using pointers behave similarly to the calls using references, and why you think that is so.

6. Replace the contents of `main` with two plain C++ pointers to the base class type and one plain C++ pointer to the derived class type. Initialize the pointers with calls to `new`, creating one base-class object and two derived-class objects. After all three pointers are initialized, use them to call the virtual member function, but do not call `delete` on the pointers.

   Build and run your program. In your answers, describe the main difference you saw in the output compared with the previous exercise.

7. Just before `main` returns, use the `delete` operator on each pointer to free the memory to which it points.

   Compile your code and note the warnings the compiler gives you. Then run your program. In your answers, show the output it produced.

8. Make the destructor of each class virtual, then compile and run your code again.

   In your answers, explain briefly why the destructor must be virtual when using plain C++ pointers together with `new` and `delete` on polymorphic objects, based on the differences in output you saw between this exercise and the previous one.

## Deliverables

Commit and push all modified and added files, including `ANSWERS.md`, to the repo.
