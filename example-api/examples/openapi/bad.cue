import spec "github.com/pilchard-friendly/openapi-cuelang/spec_v3_0_0"

spec.Spec & {
    info: {
        version: 1
        title: "Example API"
        description: "API for reading and writing stuff"
    }
    paths: {
        "/list": {
            "wibble": {
                    description: "Returns a list of stuff"
                    responses: {
                    "200" : {
                        description: "Successful response"
                    }
                }
            }
        }
    }
}