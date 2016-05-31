package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	rand.Seed(time.Now().UTC().UnixNano())
	answers := []string{"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"}

	var color = "#"
	for i := 0; i < 10; i++ {
		color += answers[rand.Intn(len(answers))]
	}

	fmt.Println("New random color ", color)
}
