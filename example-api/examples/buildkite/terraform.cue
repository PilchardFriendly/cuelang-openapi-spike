import bk "github.com/pilchard-friendly/openapi-cuelang/buildkite_v1"
import dc "github.com/pilchard-friendly/openapi-cuelang/bk_docker_compose_v3_7_0"
bk.Pipeline & {
    steps: [{ 
        name: "Let's do this"
        plugins: [{
            "docker-compose#v3.7.0": {
                run: "make"
            },
            dc.Plugin & {
                run: "make"
            }
        }]  
    }]
}