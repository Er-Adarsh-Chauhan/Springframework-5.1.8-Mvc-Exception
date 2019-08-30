# Springframework-5.1.8-Mvc-Exception

## What are Exceptions?
* Exceptions are events that occur during the execution of programs that disrupt the normal flow of instructions (e.g. divide by zero,  
  array access out of bound, etc.). 
* In Java, an exception is an object that wraps an error event that occurred within a method and contains:
   * Information about the error including its type
   * The state of the program when the error occurred
   * Optionally, other custom information
* Exception objects can be thrown and caught.
### Exceptions are used to indicate many different types of error conditions.
* JVM Errors:
    * OutOfMemoryError
    * StackOverflowError
    * LinkageError
* System errors:
    * FileNotFoundException
    * IOException
    * SocketTimeoutException
       * Programming errors:
    * NullPointerException
    * ArrayIndexOutOfBoundsException
    * ArithmeticException

## What is Spring Exception Handling
Having a well defined exception handling approach is a huge plus point for any web application framework, that being said Spring MVC framework delivers well when it comes to exception and error handling in our web applications.

Spring MVC Framework provides following ways to help us achieving robust exception handling.

Controller Based – We can define exception handler methods in our controller classes. All we need is to annotate these methods with @ExceptionHandler annotation. This annotation takes Exception class as argument. So if we have defined one of these for Exception class, then all the exceptions thrown by our request handler method will have handled.
These exception handler methods are just like other request handler methods and we can build error response and respond with different error page. We can also send JSON error response, that we will look later on in our example.

If there are multiple exception handler methods defined, then handler method that is closest to the Exception class is used. For example, if we have two handler methods defined for IOException and Exception and our request handler method throws IOException, then handler method for IOException will get executed.
