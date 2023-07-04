/*
 Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

 You must write an algorithm with O(log n) runtime complexity.

  

 Example 1:

 Input: nums = [1,3,5,6], target = 5
 Output: 2
 Example 2:

 Input: nums = [1,3,5,6], target = 2
 Output: 1
 Example 3:

 Input: nums = [1,3,5,6], target = 7
 Output: 4
 */

import Foundation

class Solution3 {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if let index = nums.firstIndex(of: target) {
            return index
        }
        
        let index = nums.firstIndex(where: {target < $0})
        return index ?? nums.endIndex
    }
}

//let db1 = Double.init("5a")
//print (db1 ?? ".asString()")
// 
//let names = ["Larry", "Sven", "Bear"]

let obj = Solution3()
obj.searchInsert([1,3,5,6], 7)

