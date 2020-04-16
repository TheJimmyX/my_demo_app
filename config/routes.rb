Rails.application.routes.draw do
	root 	"site#index"

	get 	"/favorites", 	to: "favorites#index"
	post 	"/favorites", 	to: "favorites#create"
end
