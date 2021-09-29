package bk_docker_compose_v3_7_0

Thing: { x: string }
Fail: "Failed"
ExpectedIncomplete: "Expected Incomplete"
Match: _|_
Tests: {
    first:  true & true
    second: Thing & {x: 5}   | ExpectedIncomplete
    third:  (Thing & {x: "success"}).x 
}