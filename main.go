package main

import (
	"log"
	"net/http"
	"os"
)

func main() {
	os.Mkdir("public", 0777)
	http.Handle("/public/", http.StripPrefix("/public/", http.FileServer(http.Dir("public"))))
	err:=http.ListenAndServe(":15056", nil)
	if err != nil {
		log.Fatal("ListenAndServe: ", err)
	}
}