class Solution:
    def maxArea(self, heights: List[int]) -> int:
        maxArea = 0
        j = len(heights) - 1
        for i, val in enumerate(heights):
            while j > i:
                if val >= heights[j]:
                    test = heights[j] * (j-i)
                elif val < heights[j]:
                    test = val * (j-i)
                if test > maxArea:
                    maxArea = test
                j-=1
            j = len(heights) - 1
        return maxArea

            