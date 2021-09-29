package buildkite_v1

Pipeline: env: [string]: string
Pipeline: steps: [#Step]
#Step: name: string
#Step: command?: string
#Step: plugins?: [...#PluginDefn]
#PluginDefn: {[#PluginVersion]:#PluginParams}
#PluginVersion: string
#PluginParams: {[string]:string}


