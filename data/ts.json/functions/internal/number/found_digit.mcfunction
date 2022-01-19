data remove storage ts.json:main in[0]
scoreboard players operation number ts.json *= 10 ts.json
scoreboard players operation number ts.json += digit ts.json
execute if data storage ts.json:main in[0] run function ts.json:internal/number/parse_digit