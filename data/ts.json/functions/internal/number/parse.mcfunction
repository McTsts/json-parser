data modify storage ts.json:main char set from storage ts.json:main in[0]

scoreboard players set number ts.json 0
scoreboard players set sign ts.json 1
execute if data storage ts.json:main {char:"-"} run scoreboard players set sign ts.json -1
execute if data storage ts.json:main {char:"-"} run data remove storage ts.json:main in[0]

data modify storage ts.json:main element set value {type:"number",val:0}

function ts.json:internal/number/parse_digit

execute store result storage ts.json:main element.val int 1 run scoreboard players operation number ts.json *= sign ts.json