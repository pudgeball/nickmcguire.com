package main

import (
	"net/http"
	"github.com/codegangsta/martini"
	"github.com/codegangsta/martini-contrib/render"
)

func GetRoot(r render.Render) {
	r.HTML(http.StatusOK, "root", nil)
}

func main() {
	m := martini.Classic()
	m.Use(render.Renderer(render.Options{
		Layout: "layout",
	}))
	
	m.Get("/", GetRoot)
	m.Run()
}