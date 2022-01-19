package main

import (
	"net/http"
	"os"
)

func main() {
	os.Mkdir("file", 0777)
	os.Mkdir("public", 0777)
	////http.Handle("/pollux/", http.StripPrefix("/pollux/", http.FileServer(http.Dir("file"))))
	//http.Handle("/", http.FileServer(http.Dir("/file")))
	//err := http.ListenAndServe(":15056", nil)
	//if err != nil {
	//	log.Fatal("ListenAndServe: ", err)
	//}
	http.Handle("/public/", http.StripPrefix("/public/", http.FileServer(http.Dir("public")))) // 正确
	//http.Handle("/", http.FileServer(http.Dir("/file")))
	http.ListenAndServe(":15056", nil)
}