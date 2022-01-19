data modify storage ts.json:main char set from storage ts.json:main in[0]
data remove storage ts.json:main in[0]

# get string type
scoreboard players set stringType ts.json 0
execute if data storage ts.json:main {char:'"'} run scoreboard players set stringType ts.json 0
execute if data storage ts.json:main {char:"'"} run scoreboard players set stringType ts.json 1

# init
scoreboard players set escaped ts.json 0
data modify storage ts.json:main element set value {type:"string",val:[]}

# recursion
function ts.json:internal/string/parse_char