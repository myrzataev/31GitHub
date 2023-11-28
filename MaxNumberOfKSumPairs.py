class Solution(object):
    def maxOperations(self, nums, k):
        size = 0
        res  = 0
        index = 0
        while index  <= len(nums) -1:
            j = 1
            while j <= len(nums) - 1:
                if nums[index] > k:
                    index += 1
                    j += 1
                else:
                    if nums[index] + nums[j]  == k:
                        nums.pop(j)
        
                        res += 1
                        index +=1
                    else:
                        j+=1
            size += 1

            


        print(res)






solution = Solution()
solution.maxOperations([1,2,3,4], 5)