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
 
 
`Note : To know more about the Exception in Java go to link given below :`

https://www.geeksforgeeks.org/exceptions-in-java/

## What is Spring Exception Handling
Having a well defined exception handling approach is a huge plus point for any web application framework, that being said Spring MVC framework delivers well when it comes to exception and error handling in our web applications.

Spring MVC Framework provides following ways to help us achieving robust exception handling.

Controller Based – We can define exception handler methods in our controller classes. All we need is to annotate these methods with @ExceptionHandler annotation. This annotation takes Exception class as argument. So if we have defined one of these for Exception class, then all the exceptions thrown by our request handler method will have handled.
These exception handler methods are just like other request handler methods and we can build error response and respond with different error page. We can also send JSON error response, that we will look later on in our example.

If there are multiple exception handler methods defined, then handler method that is closest to the Exception class is used. For example, if we have two handler methods defined for IOException and Exception and our request handler method throws IOException, then handler method for IOException will get executed.

`Note : Click on link to refer Spring Mvc Based Exception Web Application :` 

https://github.com/Er-Adarsh-Chauhan/Springframework-5.1.8-Mvc-Exception

# Directory Structure of this Spring Mvc Web Application is : 
<pre>
Springframework-Mvc-Exception
|-----Java Resources
|         |----src/main/java
|            |-----com.adarshonjava.emp.bean
|              |----Employee.java
|           |-----com.adarshonjava.emp.controller
|              |--- EmployeeController.java
|            |-----com.adarshonjava.emp.exception
|               |--- EmployeeException.java
| 
|-----WebContent
        |---WEB-INF
             |---web.xml
             |---config
                   |----sdnext-servlet.xml
             |---views
                   |----employeeDetail.jsp
                   |----employeeForm.jsp
                   |----error.jsp
                   |----ExceptionPage.jsp
</pre>


### Requirment for this Spring Web Application
 1. Spring Framework version 5.1.8
 2. Jsp
 3. Tomcat 9.0 Server
 4. Any One Browser
 5. Jar files to Compile and Execute
      * commons-logging-1.2.1.1.jar
      * spring-aop-5.1.8.RELEASE.jar
      * spring-beans-5.1.8.RELEASE.jar
      * spring-context-5.1.8.RELEASE.jar
      * spring-core-5.1.8.RELEASE.jar
      * spring-expression-5.1.8.RELEASE.jar
      * spring-web-5.1.8.RELEASE.jar
      * spring-webmvc-5.1.8.RELEASE.jar
`Note : These jar files are placed in eclipse classpath or Library tab or Build Path and lib folder of project.`

### Execution Flow of this Web Application 
  * whenever user gives the request then form page is shown.
  * if user gives other than numeric character then it shows an error.
  * if user enter less than 5 character in Name field then it shows an error.
  * if user enter less than 10 character in Age field then it shows an error.
  
  `Note : if Form inputs are filled with correct values then it will show the output. `
  
  
  
  # Some Other Project Using Spring MVC Based Architecture 
  ### Localization Based Spring MVC Web Application
  https://github.com/Er-Adarsh-Chauhan/LocaleBasedSpringWebApplication
  
  ### Performing CRUD Operations in Database Based on Spring MVC Web Application
  https://github.com/Er-Adarsh-Chauhan/SpringMVCCRUDSimple
  

