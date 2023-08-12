import Foundation

// Arrays

var movies = [
    "Sandlot",
    "Deadpool",
    "Harry Potter Saga",
    "LEGO Movie",
]

movies

print(movies[1])

var movieToInsert = "Dark Knight Rises"

// insert movie at the end
movies.append(movieToInsert)

// insert movie at the beggining
movies.insert(movieToInsert, at: 0)

movies


movies.count

// movies.contains(where: val -> "Daedpool") ?? how does it work
movies.contains("Daedpool")

let newMovies = movies.map({ movie in
    return "This is the movie: \(movie)"
})

newMovies
