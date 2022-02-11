package main

import "fmt"

const (
	siloVersion string = "0.0.1"
	goVersion string = "0.0.1"
)

func main() {
	fmt.Printf(`
_______  ___   ___      _______ 
|       ||   | |   |    |       |
|  _____||   | |   |    |   _   |
| |_____ |   | |   |    |  | |  |
|_____  ||   | |   |___ |  |_|  |
 _____| ||   | |       ||       |
|_______||___| |_______||_______| %s, built with Go %s for Gophers 💕

`, siloVersion, goVersion)
}