// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/// This object represents a phone contact.
///
/// [- SeeAlso: ]<https://core.telegram.org/bots/api#contact>

public final class Contact: Codable {
    
    enum CodingKeys: String, CodingKey {
        case phoneNumber = "phone_number"
        case firstName = "first_name"
        case lastName = "last_name"
        case userId = "user_id"
    }

    public var phoneNumber: String
    public var firstName: String
    public var lastName: String?
    public var userId: Int64?

    public init (phoneNumber: String, firstName: String, lastName: String? = nil, userId: Int64? = nil) {
        self.phoneNumber = phoneNumber
        self.firstName = firstName
        self.lastName = lastName
        self.userId = userId
    }

}
