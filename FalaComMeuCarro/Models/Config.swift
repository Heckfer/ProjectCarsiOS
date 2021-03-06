import Foundation

enum ConfigKey: Int {
    case BaseUrl
    case FacebookAppID
}

class Config {
    private static let dev: [ConfigKey:String] = [
        .BaseUrl: "http://" + SERVER_IP + ":8080",
        .FacebookAppID: "1651819321731747",
    ]
    
    private static let staging: [ConfigKey:String] = [
        .BaseUrl: "https://fala-com-meu-carro-dot-staging-api-getunseen.appspot.com",
        .FacebookAppID: "1651819321731747",
    ]
    
    private static let appstore: [ConfigKey:String] = [
        .BaseUrl: "https://fala-com-meu-carro-dot-api-getunseen.appspot.com",
        .FacebookAppID: "1639634559616890",
    ]
    
    private static let configurations = [
        "dev": dev,
        "staging": staging,
        "appstore": appstore
    ]
    
    class func get(key: ConfigKey) -> String {
        return configurations[FLAVOR]![key]!
    }
}