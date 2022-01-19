# parse key
# push to stack
data modify storage ts.json:main stack append from storage ts.json:main element
# parse element
function ts.json:internal/parse_element
data modify storage ts.json:main temp set from storage ts.json:main element
# pop from stack
data modify storage ts.json:main element set from storage ts.json:main stack[-1]
data remove storage ts.json:main stack[-1]

# key name
data modify storage ts.json:main key.key set from storage ts.json:main temp.val

# remove :
data remove storage ts.json:main in[0]

# parse value
# push to stack
data modify storage ts.json:main stack append from storage ts.json:main element
data modify storage ts.json:main stack append from storage ts.json:main key
# parse element
function ts.json:internal/parse_element
data modify storage ts.json:main temp set from storage ts.json:main element
# pop from stack
data modify storage ts.json:main key set from storage ts.json:main stack[-1]
data remove storage ts.json:main stack[-1]
data modify storage ts.json:main element set from storage ts.json:main stack[-1]
data remove storage ts.json:main stack[-1]

# key value
data modify storage ts.json:main temp.key set from storage ts.json:main key.key

#tellraw @a ["k/v: ",{"nbt":"temp","storage":"ts.json:main"}]

# add to value
execute if score type ts.json matches 1.. run data modify storage ts.json:main element.val append from storage ts.json:main temp

# check if continue?
function ts.json:internal/get_type
execute if score type ts.json matches -2 run data remove storage ts.json:main in[0]
execute if score type ts.json matches -2 if data storage ts.json:main in[0] run function ts.json:internal/object/parse_pair

