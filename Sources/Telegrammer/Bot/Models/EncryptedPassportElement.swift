// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/**
 Contains information about documents or other Telegram Passport elements shared with the bot by the user.

 SeeAlso Telegram Bot API Reference:
 [EncryptedPassportElement](https://core.telegram.org/bots/api#encryptedpassportelement)
 */
public final class EncryptedPassportElement: Codable {

    /// Custom keys for coding/decoding `EncryptedPassportElement` struct
    enum CodingKeys: String, CodingKey {
        case type = "type"
        case data = "data"
        case phoneNumber = "phone_number"
        case email = "email"
        case files = "files"
        case frontSide = "front_side"
        case reverseSide = "reverse_side"
        case selfie = "selfie"
    }

    /// Element type. One of “personal_details”, “passport”, “driver_license”, “identity_card”, “internal_passport”, “address”, “utility_bill”, “bank_statement”, “rental_agreement”, “passport_registration”, “temporary_registration”, “phone_number”, “email”.
    public var type: String

    /// Optional. Base64-encoded encrypted Telegram Passport element data provided by the user, available for “personal_details”, “passport”, “driver_license”, “identity_card”, “internal_passport” and “address” types. Can be decrypted and verified using the accompanying EncryptedCredentials.
    public var data: String?

    /// Optional. User's verified phone number, available only for “phone_number” type
    public var phoneNumber: String?

    /// Optional. User's verified email address, available only for “email” type
    public var email: String?

    /// Optional. Array of encrypted files with documents provided by the user, available for “utility_bill”, “bank_statement”, “rental_agreement”, “passport_registration” and “temporary_registration” types. Files can be decrypted and verified using the accompanying EncryptedCredentials.
    public var files: [PassportFile]?

    /// Optional. Encrypted file with the front side of the document, provided by the user. Available for “passport”, “driver_license”, “identity_card” and “internal_passport”. The file can be decrypted and verified using the accompanying EncryptedCredentials.
    public var frontSide: PassportFile?

    /// Optional. Encrypted file with the reverse side of the document, provided by the user. Available for “driver_license” and “identity_card”. The file can be decrypted and verified using the accompanying EncryptedCredentials.
    public var reverseSide: PassportFile?

    /// Optional. Encrypted file with the selfie of the user holding a document, provided by the user; available for “passport”, “driver_license”, “identity_card” and “internal_passport”. The file can be decrypted and verified using the accompanying EncryptedCredentials.
    public var selfie: PassportFile?


    public init (type: String, data: String? = nil, phoneNumber: String? = nil, email: String? = nil, files: [PassportFile]? = nil, frontSide: PassportFile? = nil, reverseSide: PassportFile? = nil, selfie: PassportFile? = nil) {
        self.type = type
        self.data = data
        self.phoneNumber = phoneNumber
        self.email = email
        self.files = files
        self.frontSide = frontSide
        self.reverseSide = reverseSide
        self.selfie = selfie
    }
}
