import UIKit




func main() {
    let number = 20
    recursive(number: number)
}

func recursive(number:Int) {
    if number > 0 {
       // print(number) // calling phase   Ascending
        recursive(number: number-1)
      //  print(number) // returning phase Descending
    }
}


// Static Variable using Rescursive
//var x = 0
//func staticRecursive(n: Int)-> Int {
//    
//    if n > 0 {
//        
//        x = x + 1
//        return staticRecursive(n: n - 1) * x
//    }
//   return 0
//}
//
//print("\(staticRecursive(n: 5))")

//main()


let wordsArray:[String] =  ["hey","aeo","mu","ooo","artro"]//["are","amy","u"]

let vowelArray:[Character] = ["a", "e", "i", "o",  "u"]

func vowelStrings(_ words: [String], _ left: Int, _ right: Int) -> Int {
    
    
    var count = 0
    for index in left...right {
        if right < words.count && left < words.count {
           let elememt = words[index]
            if let firstChar = elememt.first, let lastChar = elememt.last {
                if vowelArray.contains(firstChar) && vowelArray.contains(lastChar) {
                    count = count + 1
                }
            }
        }
    }
    return count
}
//print(vowelStrings(wordsArray, 1, 4))






func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
      
    var intersectionArray:[Int] = []
    for element in nums2 {
        if nums1.contains(element) {
            if !intersectionArray.contains(element) {
                intersectionArray.append(element)
            }
        }
    }
    return intersectionArray
}


//print(intersection([1,2,2,1], [2,2]))


let nums = [5,7,7,8,8,10], target = 8

func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    var rangeArray:[Int] = []
    
    for index in 0..<nums.count {
        if target == nums[index] {
            rangeArray.append(index)
        }
    }
    if rangeArray.count == 1 {
        rangeArray.append(rangeArray[0])
    }
  
  return rangeArray.isEmpty ? [-1,-1]: rangeArray
}

//print(searchRange(nums, target))








func intToRoman(_ num: Int) -> String {
        
}
