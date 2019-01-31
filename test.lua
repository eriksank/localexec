local print_table=function(t)
    for k,v in pairs(t) do
        print(k..": "..tostring(v))
    end
end

local table_to_string=function(t)
    local buffer=""
    if t == nil then return buffer end
    for k,v in pairs(t) do
        buffer=buffer..k..":"..tostring(v) .. " "
    end
    return buffer
end

local localexec=require("localexec")

local in_out=function(processInput)
    local processOutput=localexec.spawn(processInput)
    print("-------------------------------------------------")
    print("cmd:".. tostring(processInput.cmd))
    print("stdin:".. tostring(processInput.stdin))
    print("env:" .. table_to_string(processInput.env))
    print("arg:" .. table_to_string(processInput.args))
    print("----")
    print("lua result:" .. tostring(processOutput.luaresult))
    print("retcode:" .. tostring(processOutput.retcode))
    print("stdout:".. processOutput.stdout)
    print("stderr:".. processOutput.stderr)
    print("-------------------------------------------------")
end

in_out{cmd="ls", args={"-l","/"}}
in_out{cmd="cat",stdin="hello",env={x="c"}}
in_out{cmd="./test.sh",env={env1="hello world"}}
print(localexec.temp_filename())

