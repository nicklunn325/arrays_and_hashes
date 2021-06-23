
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

binding.pry