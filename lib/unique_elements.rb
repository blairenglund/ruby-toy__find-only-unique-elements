# This method takes an array of elements (these might be strings, integers, floats, or a
# combination of the above), and returns an array of the elements that appear once and only
# once.
def find_unique_elements(arr)  #I want to use a hash like in the most-common integer problem. That hash will be populated with keys based on the array and values based on how often that key appears in the array. 
	h = Hash.new(0) #this is my new empty hash
	arr.each{ |i| h[i] += 1 } #This each loop will go through the original array, and each time a specific object occurs, it will increase the value of that key in the hash.
	h.delete_if{ |k, v| v > 1 } #Delete_if goes through the hash and deletes specified objects if the return true. Here they should be deleted if the value is more than 1.
	return h.keys #Returns an array of the remaining keys in h.
end
