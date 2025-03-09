# Design-Patterns
Design Patterns

What are Design Patterns =>

"Design Patterns are typically solutions to commonly occurring problems in software design.
They are like pre-made blueprints that you can customize to solve a recurring design problem in your code."


Benefits of Design Patterns =>

1) Design patterns are a toolkit of tried and tested solutions to common problems in software design.
2) A designer who is familar with design patterns can apply them immediately to solve problems without having
to discover a new solution.

Classification of design patterns =>

1) Creational Design Pattern => "Provides various object creation mechanism" => increase flexibility and reuse of existing code.
2) Structural Design Pattern => "explain how to assemble objects and classes into larger structures while keeping these structures flexible and efficient".
3) Behavioral Pattern => "Defining objects based on behavior and responsibility" Or In other words "Concerned with algos and the asssignment of responsibilities between objects".

Design Patterns =>
1) Singleton Pattern => Creation Design pattern => ensure that class has only one instance.

2) Factory Design Pattern => Creational Design Pattern => Provides an interface for creating objects in a superclass but allow subclass to alter the type of objects that will created.

3) Abstract Factory Pattern => Creation Design Pattern => "Provides an interface for creating families of related or dependent objects without specifying their concrete classes"

4) Builder Pattern => Creational Design Pattern => "Allows to produce different types and representation of an object using the same construction code".

5) Prototype Pattern => Creation Design Pattern => "lets you copy existing objects without making your code dependent on their class" => here we creata e separate method in 
class which you need to clone to return clone of that class. This method will override Iclone interface.

6) Adapter Pattern => Structural Design Pattern => "Allow objects with incompatible interfaces to collaborate" => Here we create a middle (adapater class) which takes 
data provided by user in some specific format and convert that data into format which library expects and call library method and return data to main class.

7) Bridge Pattern => Structural Design Pattern => "Let you split a large class or a set of closely related classes into two separate hierarchies - introducing
abstraction and implementation - which can be developed independently of each other"

8) Composite Pattern => Structural Design Pattern => "allows composing objects into tree-like structure and work with it as if it was a singular object"

9) Decorator Pattern => Structural Design Pattern => "alows adding new behaviors to object dynamically by placing them inside special wrapper objects called decorators"

10) Facade Pattern => Structural Design Pattern => "Provides a simplified interface to a library a framework, or any other complex set of classes"

11) FlyWeight Pattern => Structural Design Pattern => "Lets you fit more objects into the available amount of RAM by sharing common partos of state between 
multiple objects instead of keeping all of the data in each object" => its basically about creating different interface for same behaviour or duplicate data in each objects.

12) Proxy Pattern => Structural Design Pattern => "Provides an object that acts as a substitute for a real service object used by client.
A proxy requires client requests, does same work (access control, caching etc.) and then passes the request to a service object" => Here we can create a middle class which will
also store already called request into a hashmap and will only call database when data is not present in hashmap;

13) Chain Of Responsibility => Behavioral Design Pattern => "Let you pass requests along a chain of handlers. Upon recieving a request, each handler decides either 
to process the request or to pass it to the next handler in the chain" => It can be implemented whn you have many things to perform in sequence like Authentication+
Authorization+Validation+Parsing data+store into Database and show on Ui
Example =>
Request => [Authentication handler + Authorization handler + Validation handler] (chain of responsibilities) => ordering system

14) Command Pattern => Behavioral Design Pattern => "Turns a request into a stand-alone object that contains all information about the request.
This transformation lets you pass requests as a method arguments, delay or queue a request's execution, and support undoable operation."
Here, Command objects serves as links between various GUI and business logic objects. From now on, the GUI object doesn't need to know what business logic 
object will recieve the object and how it'll be processed. The GUI object just triggers the command which handles all details.

