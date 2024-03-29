package main

import (
	"net/http"

	"github.com/labstack/echo/v4"
)

func main() {
	e := echo.New()
	e.GET("/", index)
	e.Logger.Fatal(e.Start(":80"))
}

func index(c echo.Context) error {
	return c.String(http.StatusOK, "Hello, World Golang!!!")
}
