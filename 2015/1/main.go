package main

import (
	"fmt"
	"io/ioutil"
)

func main() {
	fmt.Printf("Last Floor: %d\n", lastFloor())
	fmt.Printf("First character in last floor on position: %d\n", posOfFirstCharacterInBasement())
	fmt.Println()
	fmt.Println("Finished!")
}

func posOfFirstCharacterInBasement() int {
	var pos int
	var floor int
	data, _ := ioutil.ReadFile("input.txt")
	for i := 0; i < len(data); i++ {
		if string(data[i]) == "(" {
			floor++
		} else if string(data[i]) == ")" {
			floor--
		}
		if floor < 0 {
			pos = i
			break
		}
	}
	return pos + 1
}

func lastFloor() int {
	var floor int
	data, _ := ioutil.ReadFile("input.txt")
	for i := 0; i < len(data); i++ {
		if string(data[i]) == "(" {
			floor++
		} else if string(data[i]) == ")" {
			floor--
		}
	}
	return floor
}