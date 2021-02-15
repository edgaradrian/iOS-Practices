import Foundation
import Combine

struct Post: Codable {
    let title: String
    let body: String
}

func getPosts() -> AnyPublisher<[Post], Error> {
    
    guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
        fatalError("incorrect url")
    }
    
    return URLSession.shared.dataTaskPublisher(for: url).map { $0.data }
        .decode(type: [Post].self, decoder: JSONDecoder())
        .eraseToAnyPublisher()
    
}//getPosts

let cancellable = getPosts().sink(receiveCompletion: { _ in }) { (posts) in
    print("\(String(describing: posts.first?.title))")
    print("\(String(describing: posts.first?.body))")
}
