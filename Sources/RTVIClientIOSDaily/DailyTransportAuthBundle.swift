import Foundation

struct DailyTransportAuthBundle: Codable {
    let roomName: String
    let roomUrl: String
    let token: String?
    let botConfig: String?
    
    enum CodingKeys: String, CodingKey {
        case roomName = "room_name"
        case roomUrl = "room_url"
        case token
        case botConfig = "bot_config"
    }
}
