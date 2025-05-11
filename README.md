# Flutter Object Detection

This project is a Flutter application that performs real-time object detection using the native ML Kit APIs on both Android and iOS platforms. The app utilizes platform channels to communicate between Flutter and the native code, ensuring a seamless integration of the object detection functionality.

## Table of Contents

- [Features](#features)
- [Setup Instructions](#setup-instructions)
- [Implementation Explanation](#implementation-explanation)
- [Issues and Roadblocks](#issues-and-roadblocks)

## Features

- Live camera feed for real-time object detection.
- Integration with native ML Kit APIs for both Android and iOS.
- Custom UI for displaying the camera feed and detected objects.

## Setup Instructions

### Prerequisites

- Flutter SDK installed on your machine.
- Android Studio or Xcode for Android and iOS development, respectively.

### Installation

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/flutter-object-detection.git
   cd flutter-object-detection
   ```

2. Install dependencies:
   ```
   flutter pub get
   ```

3. Configure Android permissions:
   - Open `android/app/src/main/AndroidManifest.xml` and ensure the following permissions are added:
     ```xml
     <uses-permission android:name="android.permission.CAMERA"/>
     ```

4. Configure iOS permissions:
   - Open `ios/Runner/Info.plist` and add the following key:
     ```xml
     <key>NSCameraUsageDescription</key>
     <string>We need access to the camera for object detection.</string>
     ```

5. Run the application:
   - For Android:
     ```
     flutter run
     ```
   - For iOS:
     ```
     flutter run
     ```

## Implementation Explanation

The application is structured as follows:

- **MainActivity.kt**: The entry point for the Android application, setting up platform channels for communication.
- **AppDelegate.swift**: Handles application lifecycle events for iOS and initializes the Flutter engine.
- **PlatformChannelService**: Manages communication between Flutter and native code, facilitating object detection requests.
- **CameraView**: Displays the live camera feed and interacts with the object detection service.

The app leverages the native ML Kit APIs for object detection, ensuring high performance and accuracy.

## Issues and Roadblocks

During the development of this application, the following challenges were encountered:

- **Platform Channel Communication**: Ensuring smooth communication between Flutter and native code required careful handling of method calls and responses.
- **Camera Permissions**: Configuring the necessary permissions for camera access on both Android and iOS platforms was crucial for functionality.
- **Real-time Processing**: Achieving real-time object detection while maintaining a smooth camera feed required optimization of the detection algorithms.

Feel free to reach out if you have any questions or need further assistance!