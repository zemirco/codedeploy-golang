package main

import (
	"fmt"
	"net/http"
	"github.com/zemirco/uid"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello, world!")
}

func main() {

	// testing some external package
	id, err := uid.Gen(10)
	if err != nil {
		panic(err)
	}
	fmt.Println(id)

	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil)
}
