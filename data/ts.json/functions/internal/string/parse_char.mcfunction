data modify storage ts.json:main char set value ""
data modify storage ts.json:main char set from storage ts.json:main in[0]
data remove storage ts.json:main in[0]

# continue?
scoreboard players set continue ts.json 1
execute if score stringType ts.json matches 0 if score escaped ts.json matches 0 if data storage ts.json:main {char:'"'} run scoreboard players set continue ts.json 0
execute if score stringType ts.json matches 1 if score escaped ts.json matches 0 if data storage ts.json:main {char:"'"} run scoreboard players set continue ts.json 0
# store
execute if score continue ts.json matches 1 run data modify storage ts.json:main element.val append from storage ts.json:main char
# next escape?
scoreboard players set escaped ts.json 0
execute if data storage ts.json:main {char:"\\"} run scoreboard players set escaped ts.json 1
# recursion
execute if score continue ts.json matches 1 if data storage ts.json:main in[0] run function ts.json:internal/string/parse_char