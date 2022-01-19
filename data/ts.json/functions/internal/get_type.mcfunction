data modify storage ts.json:main char set value ""
data modify storage ts.json:main char set from storage ts.json:main in[0]

# invalid (0)
scoreboard players set type ts.json 0
# boolean (1)
execute if data storage ts.json:main {char:"t"} run scoreboard players set type ts.json 1
execute if data storage ts.json:main {char:"f"} run scoreboard players set type ts.json 1
# number (2)
execute if data storage ts.json:main {char:"0"} run scoreboard players set type ts.json 2
execute if data storage ts.json:main {char:"1"} run scoreboard players set type ts.json 2
execute if data storage ts.json:main {char:"2"} run scoreboard players set type ts.json 2
execute if data storage ts.json:main {char:"3"} run scoreboard players set type ts.json 2
execute if data storage ts.json:main {char:"4"} run scoreboard players set type ts.json 2
execute if data storage ts.json:main {char:"5"} run scoreboard players set type ts.json 2
execute if data storage ts.json:main {char:"6"} run scoreboard players set type ts.json 2
execute if data storage ts.json:main {char:"7"} run scoreboard players set type ts.json 2
execute if data storage ts.json:main {char:"8"} run scoreboard players set type ts.json 2
execute if data storage ts.json:main {char:"9"} run scoreboard players set type ts.json 2
execute if data storage ts.json:main {char:"-"} run scoreboard players set type ts.json 2
execute if data storage ts.json:main {char:"+"} run scoreboard players set type ts.json 2
# string (3)
execute if data storage ts.json:main {char:"'"} run scoreboard players set type ts.json 3
execute if data storage ts.json:main {char:'"'} run scoreboard players set type ts.json 3
# object (4)
execute if data storage ts.json:main {char:"{"} run scoreboard players set type ts.json 4
# array (5)
execute if data storage ts.json:main {char:"["} run scoreboard players set type ts.json 5

# end (-1)
execute if data storage ts.json:main {char:"]"} run scoreboard players set type ts.json -1
execute if data storage ts.json:main {char:"}"} run scoreboard players set type ts.json -1
# continue (-2)
execute if data storage ts.json:main {char:","} run scoreboard players set type ts.json -2