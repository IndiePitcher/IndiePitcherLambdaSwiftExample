# IndiePitcherLambdaSwiftExample
Example demonstrating how to send an email using [IndiePitcher](https://indiepitcher.com) from an AWS Lambda function written using the Swift programming language.

- Create a free account at https://indiepitcher.com
- Create a new project
- Create an API key for your project
- Open `main.swift` and replace `sc_xxxxxxxx` with your access token
- Change the email to your email.
- Launch the function locally `curl -v --header "Content-Type:\ application/json" --data @test-data/request.json http://127.0.0.1:7000/invoke`
