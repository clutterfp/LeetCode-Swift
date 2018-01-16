//: Playground - noun: a place where people can play

import UIKit

/**
 Merge Sorted Array
 
 Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.
 
 Note:
 You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2. The number of elements initialized in nums1 and nums2 are m and n respectively.
 **/

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        if m == 0 {
            if n > 0 {
                nums1 = Array(nums2[0...(n - 1)])
            }
        } else {
            nums1 = Array(nums1[0...(m - 1)])
            if n > 0 {
                let nums3 = nums2[0...(n - 1)]
                nums1 = nums1 + nums3;
                nums1 = nums1.sorted(by: { $0 < $1 } )
            }
        }
    }
}
