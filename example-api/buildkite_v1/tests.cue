package buildkite_v1

TestData: {
    td1: Pipeline & { steps: [ {
        name: "Test 1"
        plugins: [ { "plugin1": "param1": "true"}]
    }]}
    td2: Pipeline & { steps: [ {
        name: "Test 2"
        plugins: [ { "plugin1": "param1": "true"}, {"plugin1": "param2": "false"}]
    }]}
}

Tests: {
    "td1.steps[0].name": "Test 1" & TestData.td1.steps[0].name
    "td2.steps[0].name": "Test 2" & TestData.td2.steps[0].name
    "td2.steps[0].plugins[0].plugin1.param1": "true" & TestData.td2.steps[0].plugins[0].plugin1.param1
    "td2.steps[0].plugins[1].plugin1.param1": "false" & TestData.td2.steps[0].plugins[1].plugin1.param2
}