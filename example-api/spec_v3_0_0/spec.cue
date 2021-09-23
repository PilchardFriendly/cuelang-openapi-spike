package spec_v3_0_0
HasDescription: {
    description?: string
}
Spec: {
    openapi: "3.0.0"
    info? : {
        version?: string
        title?: string
    } & HasDescription
    paths: #PathsMap
}
#PathsMap: [#FilePath]: #PathSpec
#FilePath: string
#PathSpec: {[#Verb] : #Operation}
#Verb: "get" | "post"
#Operation: {
    responses: #ResponseMap
} & HasDescription
#ResponseMap: {[#ResponseCode]: #ResponseSpec}
#ResponseCode: string
#ResponseSpec: HasDescription


