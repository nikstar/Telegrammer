// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Parameters container struct for `stopPoll` method
    struct StopPollParams: JSONEncodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// Identifier of the original message with the poll
        var messageId: Int

        /// A JSON-serialized object for a new message inline keyboard.
        var replyMarkup: InlineKeyboardMarkup?

        /// Custom keys for coding/decoding `StopPollParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case messageId = "message_id"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: ChatId, messageId: Int, replyMarkup: InlineKeyboardMarkup? = nil) {
            self.chatId = chatId
            self.messageId = messageId
            self.replyMarkup = replyMarkup
        }
    }

    /**
     Use this method to stop a poll which was sent by the bot. On success, the stopped Poll with the final results is returned.

     SeeAlso Telegram Bot API Reference:
     [StopPollParams](https://core.telegram.org/bots/api#stoppoll)
     
     - Parameters:
         - params: Parameters container, see `StopPollParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Poll` type
     */
    @discardableResult
    func stopPoll(params: StopPollParams) throws -> Future<Poll> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        let response: Future<TelegramContainer<Poll>>
        response = try client.respond(endpoint: "stopPoll", body: body, headers: headers)
        return response.flatMap(to: Poll.self) { try self.wrap($0) }
    }
}
