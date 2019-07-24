import UIKit

var str = "Hello, playground"

//!!!!!!!!!!!!!!!!!!!!!!!!Higher order Functtions !!!!!!!!!!!!!!!!!!!!!!!


//1) sorted //

//With sort() You can sort any mutable collection of elements that conform to the Comparable protocol by calling this method. In this case Elements are sorted in ascending order. The sorting algorithm is not stable.



let numbers =  [0,6,1,7,8,5,7,7,9,2,3,4,5,1]

print("after sorting ", numbers.sorted())


// Map function

//Map can be used to loop over a collection and apply the same operation to each element in the collection.

let getValue = numbers.map{$0 * 2}

print("map function", getValue)





// compact map //


//CompactMap is the same as the Map function but with optional handling capability. Use this method to receive an array of non optional values when your transformation produces an optional value.

var name = ["1","five","5","seven","eight"]
let compact :[Int] =  name.compactMap{str in Int (str)}
print("compact after", compact)


// filter ///
//Filter can be used to loop over a collection and return a new collection containing only those elements that match the given predicate.

let numArray = [1,3,6,8,9 ,2,4]


let getEVenNum = numArray.filter{ $0  % 2 == 0 }
print("after even",getEVenNum)

//Reduce
//Reduce is used to combine all items in a collection to create a single new value. The reduce method takes two values, an initial value (initialResult) and a combine closure (nextPartialResult). It need the initial result to tell where to start, and the method then operates on that result based on the logic in the closure. The result is the final accumulated value of any type.

let numberss  = [1,3,6,8,9 ,2,4]

let sum = numberss.reduce(0, {x, y in
    x + y
})

print("sum", sum)

//NEXT// Chaining//

// Chaining is the ability to combine all those Higher Order Functions you’ve just learned in one line of code!



var names = ["sameer","bhaskar","mehabob","sangeetha","santosh", "harish"]

let getNameStartsWithS = names.filter{$0.first == "s"}



/// contains //
//Returns a Boolean value indicating whether the sequence contains an element that satisfies the given predicate.

var namesss = ["sameer","bhaskar","mehabob","sangeetha","santosh", "harish"]


let startsWithH  = namesss.contains{$0.first == "h"}

/// it will returns the true or false check with conditon value is there or not in array 
print("starts with h ", startsWithH)


//Partition////

//This method reorders the elements of the collection such that all the elements that match the given predicate are after all the elements that don’t match.

var givenNumber = [10,30,60,20, 80,70,10]
let getPartiton =  givenNumber.partition(by: {$0 > 10})

print("after partion ",getPartiton)
