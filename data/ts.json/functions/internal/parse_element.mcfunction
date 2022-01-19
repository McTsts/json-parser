# parse element
function ts.json:internal/get_type

data modify storage ts.json:main element set value {type:"unknown"}

#tellraw @a {"score":{"name":"type","objective":"ts.json"}}
execute if score type ts.json matches 1 run function ts.json:internal/boolean/parse
execute if score type ts.json matches 2 run function ts.json:internal/number/parse
execute if score type ts.json matches 3 run function ts.json:internal/string/parse
execute if score type ts.json matches 4 run function ts.json:internal/object/parse
execute if score type ts.json matches 5 run function ts.json:internal/array/parse

