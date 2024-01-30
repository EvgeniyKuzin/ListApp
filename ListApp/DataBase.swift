//
//  DataBase.swift
//  ListApp
//
//  Created by Evgeniy Kuzin on 30.01.2024.
//

struct Track {
    let album: String
    let track: String
    let lirics: String

    static func getMusicCollection() -> [Track] {
        [
            Track(album: "Nevermind", track: "Smells Like Teen Spirit", lirics: """
                "Load up on guns, bring your friends
                It's fun to lose and to pretend
                She's over bored and self-assured
                Oh, no, I know a dirty word

                Hello, hello, hello, how low?
                Hello, hello, hello, how low?
                Hello, hello, hello, how low?
                Hello, hello, hello"
"""),
            Track(album: "Nevermind", track: "In Bloom", lirics: """
                "Sell the kids for food
                Weather changes moods
                Spring is here again
                Reproductive glands
                He's the one
                Who likes all our pretty songs
                And he likes to sing along
                And he likes to shoot his gun
                But he knows not what it means
                Knows not what it means
                And I say he's the one
                Who likes all our pretty songs
                And he likes to sing along
                And he likes to shoot his gun
                But he knows not what it means
                Knows not what it means
                And I say yeah"
"""),
            Track(album: "Nevermind", track: "Come as You Are", lirics: ""),
            Track(album: "Nevermind", track: "Something in the Way", lirics: ""),
            Track(album: "Nevermind", track: "Breed", lirics: ""),
            Track(album: "Bleach", track: "About a Girl", lirics: ""),
            Track(album: "Bleach", track: "Negative Creep", lirics: ""),
            Track(album: "Bleach", track: "Love Buzz", lirics: ""),
            Track(album: "Bleach", track: "School", lirics: ""),
            Track(album: "In Utero", track: "Rape Me", lirics: ""),
            Track(album: "In Utero", track: "All Apologies", lirics: ""),
            Track(album: "In Utero", track: "Heart-Shaped Box", lirics: ""),
            Track(album: "Unplugged", track: "The Man Who Sold the World", lirics: ""),
            Track(album: "Unplugged", track: "On a Plain", lirics: ""),
            Track(album: "Unplugged", track: "Where Did You Sleep Last Night", lirics: ""),
            Track(album: "Unplugged", track: "Polly", lirics: "")
        ]
    }
}

