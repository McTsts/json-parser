data modify storage ts.json:main in set from storage ts.json:io in

#tellraw @a {"storage":"ts.json:main","nbt":"in[]","separator":""}

data modify storage ts.json:main stack set value []

function ts.json:internal/parse_element

data modify storage ts.json:io out set from storage ts.json:main element

#tellraw @a {"storage":"ts.json:main","nbt":"element"}