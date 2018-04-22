// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Use this method to get current webhook status. Requires no parameters. On success, returns a WebhookInfo object. If the bot is using getUpdates, will return an object with the url field empty.
    /// - Returns: Future<Bool>. Throws on errors.
    /// - Note: Asynchronous method.
    ///
    /// [- SeeAlso: ]<https://core.telegram.org/bots/api#getwebhookinfo>

    public func getWebhookInfo() throws -> Future<Bool> {
        let response: Future<TelegramContainer<Bool>>
        response = try client.respond(endpoint: "getWebhookInfo", body: HTTPBody(), headers: HTTPHeaders())
        return response.flatMap(to: Bool.self) { try self.wrap($0) }
    }
}