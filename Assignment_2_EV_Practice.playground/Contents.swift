
// we want to be able to search for Authors by genre
// we will need to store the author in a struct
// we will need to store the genres in an array
// create at least 5 authors
// and add a function that will search for authors by genre
// returning the authors that match the genre
// added a printResults function as well
// and add everything to a GitHub repo (I'll do this manually, old school)

let genres: [String] = ["Sci-fi", "Fiction", "Non-fiction", "Romance", "Sports", "Fantasy"]
struct Author {
    var firstName: String
    var lastName: String
    var country: String
    var genre: String
    var alive: Bool
    
    func isAlive() -> Bool {
        alive
    }
}
var authors: [Author] = []
var a = Author(firstName: "Issac", lastName: "Asimov", country: "Russia", genre: "Sci-fi", alive: false)
authors.append(a)
a = Author(firstName: "Neal", lastName: "Stephenson", country: "USA", genre: "Sci-fi", alive: true)
authors.append(a)
a = Author(firstName: "Leo", lastName: "Tolstoy", country: "Russia", genre: "Fiction", alive: false)
authors.append(a)
a = Author(firstName: "Malcom", lastName: "Gladwell", country: "Canada", genre: "Non-fiction", alive: true)
authors.append(a)
a = Author(firstName: "Anne", lastName: "Rice", country: "Canada", genre: "Fiction", alive: true)
authors.append(a)
a = Author(firstName: "Toni", lastName: "Morrison", country: "USA", genre: "Non-fiction", alive: true)
authors.append(a)

// print("Are you ok? \(a.isAlive())")

func searchAuthorsByGenre(_ searchGenre: String) -> [String] {
    var results: [String] = []
    for a in authors {
        if a.genre == searchGenre {
            results.append("Name: \(a.firstName) \(a.lastName) Country: \(a.country)")
        }
    }
    if results.count <= 0 {
        results.append("no authors found...")
    }
    return results
}
func searchAuthorsByCountry(_ searchCountry: String) -> [String] {
    var results: [String] = []
    for a in authors {
        if a.country == searchCountry {
            results.append("Name: \(a.firstName) \(a.lastName)")
        }
    }
    if results.count <= 0 {
        results.append("no authors in that country found...")
    }
    return results
}
func printResults(_ vals: [String]) -> Void {
    for v in vals {
        print(v)
    }
}

var results = searchAuthorsByGenre("Sci-fi")
printResults(results)
results = searchAuthorsByCountry("USA")
printResults(results)
