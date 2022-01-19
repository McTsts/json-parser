# remove pre character ('[' for first, otherwise ',')
data remove storage ts.json:main in[0]

# push to stack
data modify storage ts.json:main stack append from storage ts.json:main element
# parse element
function ts.json:internal/parse_element
data modify storage ts.json:main temp set from storage ts.json:main element
# pop from stack
data modify storage ts.json:main element set from storage ts.json:main stack[-1]
data remove storage ts.json:main stack[-1]


# add to value
execute if score type ts.json matches 1.. run data modify storage ts.json:main element.val append from storage ts.json:main temp

# continue
function ts.json:internal/get_type
execute if score type ts.json matches -2 if data storage ts.json:main in[0] run function ts.json:internal/array/parse_entry