var message = "hi there"
println(message)


var hello = "Hello SoCal Code Camp"

//Try to convert String to int.
//hello = 42  //Should give me a error because we initialized it as a String.

//Try to initialize as empty.  Should give you an error since Swift doesnt know
//what the variable type should be.
//var hello


//better
var hello2:String = "hello 2"
var pi = 3.14  //Defaults to double
var piFloat:Float = 3.14 //Sets it to Float

//Pattern
//<variable name> : <variable Type>


//Creating a func
//Pattern for a function  
//func funtionName(variable:variableType) -> ReturnType
func printHello(msg:String) -> String{
    
    //Example of string interprelation
    println("The message is \(msg)")  //Note how we display variables.  \(variableName)
    return msg;  //Note semi-colons are optional
    
}

//Call function
//Note you can click on the "eye" icon on the right hand side to see a trace of how things are being executed.
printHello("Playgrounds are fun")


//Loops
for i in 0...100 {
    printHello("Hello \(i)")
}


//Comparison with .Net - optionals.
//In Swift, any object can be optonal
var helloX:String?  //a '?' will mak the variable optional.  If not intialized the variable is initialized to null
println(helloX) //<- here before we would get a NullPointer Exception since there is nothing htere. So we use a ?


//Checks if the variable is set.  If its set then skip the code.
if let realHello = helloX {
    println(realHello)
}


//Let - immutables (you're not allowed to change these variables)
let i = 42
//i = i+100 //will not be allowed
//Using let vs var is much better in terms of optimization. If the compiler is sure of something then i can speed things up.  This is just like final in android dev.

//Closures
//The below function says,  "I have a funtion accum which accepts i as integer which returns a function which return an Int.
func accum(i:Int) -> (Int) -> Int {
    
    var localI = i; //Will be visible only for items in this closure
    
    func add(j:Int) -> Int {
        localI = localI+j
        return localI
    }
    
    return add;
}

var accumFrom42 = accum(42)
accumFrom42(2)
accumFrom42(3)

//the playground actually compiles.
//Allows you to bring in resources a little more than what you can do with functional things.

//Dictionaries
//Collections
//Type systems.


//OO Examples
class Student {

    //Self evaluating closure
    let highSchool:String = {
        Void-> (String) in
        return "Get HighSchool"
    }()

    
    
    //There is no 'new' keyword when creating an object.
    
    //properties
    var firstName:String //w could use ?  to make them optinal. But lets make it clean.
    var lastName:String
    var studentID:String
    var gpa:Float
    
    //We must create an initializer!! (constructor)  All properties are required so we ned this.
    init(fn:String, ln:String, id:String, gpa:Float){
        self.firstName = fn
        self.lastName = ln
        self.gpa = gpa
        self.studentID = id
    }
    
}
//When do we use optonal variables?
//TODO - read up on Enums


//Strut vs Class = Class created in the heap.
struct StructExample {
    
}

//Interfaces = Protocols
//Protols really useful when doing dependecy injection.
protocol MostPeopleCallTheseInterfaces {
    
    func foo()
    var data:String? {get set}  //This {get, set} tells us its read and write.
}


