data modify storage ts.json:main char1 set from storage ts.json:main in[0]
data modify storage ts.json:main char2 set from storage ts.json:main in[1]
data modify storage ts.json:main char3 set from storage ts.json:main in[2]
data modify storage ts.json:main char4 set from storage ts.json:main in[3]
data modify storage ts.json:main char5 set from storage ts.json:main in[4]

data modify storage ts.json:main element set value {type:"boolean"}
execute if data storage ts.json:main {char1:"t",char2:"r",char3:"u",char4:"e"} run function ts.json:internal/boolean/true
execute if data storage ts.json:main {char1:"f",char2:"a",char3:"l",char4:"s",char5:"e"} run function ts.json:internal/boolean/false

data modify storage ts.json:main char1 set value ""
data modify storage ts.json:main char2 set value ""
data modify storage ts.json:main char3 set value ""
data modify storage ts.json:main char4 set value ""
data modify storage ts.json:main char5 set value ""