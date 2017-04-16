package main

import (
	"fmt"
)

type tmp struct {
	a int64
	b int64
}

func get(t *tmp) (int64, int64) {
	return t.a, t.b
}

func Get(t *tmp) (int64, int64)
func Get1(t, t1 int64) (int64, int64)

func main() {
	t := &tmp{a: 2}

	fmt.Println(Get(t))
	fmt.Println(Get1(1, 2))

	get(t)
}
