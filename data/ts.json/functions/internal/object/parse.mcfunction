# remove {
data remove storage ts.json:main in[0]

# init
data modify storage ts.json:main element set value {type:"object",val:[]}

# parse key/value pairs recursively
function ts.json:internal/object/parse_pair

# remove }
data remove storage ts.json:main in[0]

# reset type
scoreboard players set type ts.json 4