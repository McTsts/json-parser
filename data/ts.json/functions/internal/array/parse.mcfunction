# init
data modify storage ts.json:main element set value {type:"array",val:[]}

# parse entries recursively
function ts.json:internal/array/parse_entry

# remove ]
data remove storage ts.json:main in[0]

# reset type
scoreboard players set type ts.json 5