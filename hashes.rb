
require "pry"

game = {
    home: {
        location: "Phoenix",
        mascot: "Suns",
        players: [
            {
                name: "Devin Booker",
                number: 1,
                position: "G"
            },
            {
                name: "Chris Paul",
                number: 3,
                position: "G"
            },
            {
                name: "Deandre Ayton",
                number: 22,
                position: "C"
            },
            {
                name: "Mikal Bridges",
                number: 25,
                position: "F"
            },
            {
                name: "Jae Crowder",
                number: 99,
                position: "F"
            }
        ]
    },
    away: {
        location: "Los Angeles",
        mascot: "Clippers",
        players: [
            {
                name: "Paul George",
                number: 13,
                position: "F"
            },
            {
                name: "Kawhi Leonard",
                number: 2,
                position: "F"
            },
            {
                name: "Reggie Jackson",
                number: 1,
                position: "G"
            },
            {
                name: "DeMarcus Cousins",
                number: 15,
                position: "C"
            },
            {
                name: "Patrick Beverly",
                number: 21,
                position: "G"
            }
        ]
    }
}

# Creating hashes

hash = {a: 1, b:2, c:3}
alternate_hash = {"a" => 1, :b => 2, "c" => 3} # don't use this syntax

# accessing key value pairs
hash[:a] # returns 1
alternate_hash["a"] # returns 1`

# adding key value pairs
hash[:d] = 4 
alternate_hash["d"] = 4

# resetting a keys value
hash[:c] = 5
alternate_hash["a"] = 0

# deleting key value pair
hash.delete(:d)
alternate_hash.delete("d")

all_players = game[:home][:players].concat(game[:away][:players])

#filter all guards from both home and away teams

guards = all_players.filter do |player|
    player[:position] == "G"
end
# // all_players.filter(player => player.positon === "G")


#sort all players by jersey number in ascending order

sorted_players = all_players.sort do |a, b| 
    a[:number] <=> b[:number]
end
# // all_players.sort((a,b) => a.number <=> b.number)


binding.pry

