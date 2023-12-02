package main

import (
	"fmt"
	"io/ioutil"
	"strconv"
)

func main() {
	fmt.Printf("Sum of all of the calibration values: %d\n", sum(extractCalibrationValues()))
	fmt.Println("Finished!")
}

func extractCalibrationValues() []int {
	var calibrations []int
	var first string
	var last string
	data, _ := ioutil.ReadFile("input.txt")
	for i := 0; i < len(data); i++ {
		item := string(data[i])
		if _, err := strconv.Atoi(item); err == nil {
			if len(first) == 0 {
				first = item
				last = item
			} else {
				last = item
			}
		}
		if item == "\n" || i == len(data)-1 {
			if res, err := strconv.Atoi(first+last); err == nil {
				calibrations = append(calibrations, res)
			}
			
			first = ""
			last = ""
		}
	}
	return calibrations
}

func sum(arr []int) int {
	sum := 0
	for _, valueInt := range arr {
			sum += valueInt
	}
	return sum
}