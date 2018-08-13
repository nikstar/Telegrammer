// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Parameters container struct for `sendAnimation` method
    public struct SendAnimationParams: MultipartEncodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// Animation to send. Pass a file_id as String to send an animation that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get an animation from the Internet, or upload a new animation using multipart/form-data. More info on Sending Files »
        var animation: FileInfo

        /// Duration of sent animation in seconds
        var duration: Int?

        /// Animation width
        var width: Int?

        /// Animation height
        var height: Int?

        /// Thumbnail of the file sent. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail‘s width and height should not exceed 90. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can’t be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More info on Sending Files »
        var thumb: FileInfo?

        /// Animation caption (may also be used when resending animation by file_id), 0-200 characters
        var caption: String?

        /// Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
        var parseMode: ParseMode?

        /// Sends the message silently. Users will receive a notification with no sound.
        var disableNotification: Bool?

        /// If the message is a reply, ID of the original message
        var replyToMessageId: Int?

        /// Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.
        var replyMarkup: ReplyMarkup?

        /// Custom keys for coding/decoding `SendAnimationParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case animation = "animation"
            case duration = "duration"
            case width = "width"
            case height = "height"
            case thumb = "thumb"
            case caption = "caption"
            case parseMode = "parse_mode"
            case disableNotification = "disable_notification"
            case replyToMessageId = "reply_to_message_id"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: ChatId, animation: FileInfo, duration: Int? = nil, width: Int? = nil, height: Int? = nil, thumb: FileInfo? = nil, caption: String? = nil, parseMode: ParseMode? = nil, disableNotification: Bool? = nil, replyToMessageId: Int? = nil, replyMarkup: ReplyMarkup? = nil) {
            self.chatId = chatId
            self.animation = animation
            self.duration = duration
            self.width = width
            self.height = height
            self.thumb = thumb
            self.caption = caption
            self.parseMode = parseMode
            self.disableNotification = disableNotification
            self.replyToMessageId = replyToMessageId
            self.replyMarkup = replyMarkup
        }
    }

    /**
     Use this method to send animation files (GIF or H.264/MPEG-4 AVC video without sound). On success, the sent Message is returned. Bots can currently send animation files of up to 50 MB in size, this limit may be changed in the future.

     SeeAlso Telegram Bot API Reference:
     [SendAnimationParams](https://core.telegram.org/bots/api#sendanimation)
     
     - Parameters:
         - params: Parameters container, see `SendAnimationParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Message` type
     */
    @discardableResult
    public func sendAnimation(params: SendAnimationParams) throws -> Future<Message> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        let response: Future<TelegramContainer<Message>>
        response = try client.respond(endpoint: "sendAnimation", body: body, headers: headers)
        return response.flatMap(to: Message.self) { try self.wrap($0) }
    }
}
