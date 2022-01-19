data modify storage ts.json:main char set from storage ts.json:main in[0]

scoreboard players set digit ts.json -1
execute if data storage ts.json:main {char:"0"} run scoreboard players set digit ts.json 0
execute if data storage ts.json:main {char:"1"} run scoreboard players set digit ts.json 1
execute if data storage ts.json:main {char:"2"} run scoreboard players set digit ts.json 2
execute if data storage ts.json:main {char:"3"} run scoreboard players set digit ts.json 3
execute if data storage ts.json:main {char:"4"} run scoreboard players set digit ts.json 4
execute if data storage ts.json:main {char:"5"} run scoreboard players set digit ts.json 5
execute if data storage ts.json:main {char:"6"} run scoreboard players set digit ts.json 6
execute if data storage ts.json:main {char:"7"} run scoreboard players set digit ts.json 7
execute if data storage ts.json:main {char:"8"} run scoreboard players set digit ts.json 8
execute if data storage ts.json:main {char:"9"} run scoreboard players set digit ts.json 9

execute unless score digit ts.json matches -1 run function ts.json:internal/number/found_digit

