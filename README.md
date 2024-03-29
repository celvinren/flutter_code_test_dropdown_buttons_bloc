# flutter_code_test_dropdown_buttons

A new Flutter project.

## Getting Started

This project use flutter_bloc as the state management.

This project I created flavor for android but not for iOS for the time being. When you debug the app, choose the flavor you want to debug on only android.

In .vscode/launch.json, there are 2 configurations:

1. Launch App with mock data: select dev_mock to launch the app with mock data.
2. Launch App with real data: select dev to launch the app with real data.

I cannot fetch data from the API, so I use a local mock data to simulate the data fetching.
Also, I created a mock repository to simulate the data fetching.

launch.json file should be pushed to the repository with api key and other sensitive information, but this project is just a test project for you to debug the project.

## Commands in this project

flutter pub add dio freezed_annotation json_annotation very_good_analysis
flutter pub add --dev build_runner freezed json_serializable

flutter pub run build_runner watch --delete-conflicting-outputs
