// Import the module
import AWSLambdaRuntime
import AsyncHTTPClient
import IndiePitcherSwift

@main
struct MyLambda: SimpleLambdaHandler {

    private let indiePitcherApiKey = "sc_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

    func handle(_ event: String, context: LambdaContext) async throws -> String {

        let indiePitcher = IndiePitcher(client: .shared, apiKey: indiePitcherApiKey)

        let emailBody = """
            This is an email sent from a **AWS Lambda function**!
            """

        try await indiePitcher.sendEmail(
            data: .init(
                to: "petr@indiepitcher.com", subject: "Hello from ASS Lambda!", body: emailBody,
                bodyFormat: .markdown))

        return "Email sent!"
    }
}
