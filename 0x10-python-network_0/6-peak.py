def find_peak(list_of_integers):
    left = 0
    right = len(list_of_integers) - 1
    
    while left < right:
        mid = (left + right) // 2
        
        if list_of_integers[mid] < list_of_integers[mid + 1]:
            left = mid + 1
        else:
            right = mid
    
    return list_of_integers[left]

# Example usage:
# print(find_peak([1, 3, 5, 4, 2]))  # Output should be a peak, e.g., 5
