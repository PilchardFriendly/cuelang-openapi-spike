import bk "github.com/pilchard-friendly/openapi-cuelang/buildkite_v1"

import dc "github.com/pilchard-friendly/openapi-cuelang/bk_docker_compose_v3_7_0"

import example "github.com/pilchard-friendly/openapi-cuelang/examples"
ExpectedIncomplete: "Expected Incomplete"


Tests: {
	"buildkite_v1":          bk.Tests
	"docker-compose-plugin": dc.Tests
    "examples": {
        "good": {
            "paths./list.get.responses.200": example.goodSchema.paths."/list"."get".responses."200".description & "Successful response"
        }, 
        "bad": example.badSchema | ExpectedIncomplete
    }
}
