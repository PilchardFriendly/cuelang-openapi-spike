package examples

import spec "github.com/pilchard-friendly/openapi-cuelang/spec_v3_0_0"

goodSchema: spec.Spec & {
	openapi: "3.0.0"
	info: {
		version:     "1.0.0"
		title:       "Example API"
		description: "API for reading and writing stuff"
	}
	paths: {
		"/list": {
			"get": {
				description: "Returns a list of stuff"
				responses: {
					"200": {
						description: "Successful response"
					}
				}
			}
		}
	}
}
