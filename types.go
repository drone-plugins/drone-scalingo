package main

type Params struct {
	Application string `json:"app"`
	Force       bool   `json:"force"`
	Commit      bool   `json:"commit"`
}
