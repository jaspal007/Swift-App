# TestApp

TestApp is a basic iOS application created by following Apple’s SwiftUI documentation. This project serves as an introductory example of how to build an iOS app using SwiftUI.

## Features

- Display a list of landmarks
- View details of each landmark
- Navigate between different views

## Requirements

- iOS 18.0+
- Xcode 16.0+
- Swift 5.3+

## Installation

To run this project, follow these steps:

1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/testapp.git
    ```
2. Open the project in Xcode:
    ```sh
    cd testapp
    open testApp.xcodeproj
    ```
3. Build and run the project on your preferred device or simulator.

## Usage

Upon launching the app, you will see a list of landmarks. You can tap on any landmark to see more details about it.

## Project Structure

- `ContentView.swift`: The main view that displays the list of landmarks.
- `LandmarkDetail.swift`: The view that shows the details of a selected landmark.
- `Model`: Contains the data model for the landmarks, including the `Landmark` and `Coordinates` structs.
- `Resources`: Contains the `landmarkData.json` file which includes the sample data for the landmarks.

## Data Model

The `Landmark` struct represents a landmark and conforms to the `Decodable` protocol for easy JSON parsing. Here is a simplified version of the `Landmark` struct:

```swift
import Foundation

struct Landmark: Decodable {
    let id: Int
    let name: String
    let category: String
    let city: String
    let state: String
    let coordinates: Coordinates
    let imageName: String
}

struct Coordinates: Decodable {
    let latitude: Double
    let longitude: Double
}
