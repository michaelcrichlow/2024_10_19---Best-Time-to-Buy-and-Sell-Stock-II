package test

import "core:fmt"
print :: fmt.println

main :: proc() {

	my_list0 := [?]int{7, 1, 5, 3, 6, 4}
	my_list1 := [?]int{1, 2, 3, 4, 5}
	my_list2 := [?]int{7, 6, 4, 3, 1}

	assert(max_profit(my_list0[:]) == 7)
	assert(max_profit(my_list1[:]) == 4)
	assert(max_profit(my_list2[:]) == 0)
	print("All tests passed!")

}

max_profit :: proc(l: []int) -> int {
	res := 0
	for i in 0 ..< len(l) - 1 {
		if l[i + 1] > l[i] {
			res += (l[i + 1] - l[i])
		}
	}

	return res
}
