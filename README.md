<div align="left">
  <h1>Wallet Application Development - Flutter Assignment</h1>
  <img alt="Flutter" src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" style="margin-left: 10px;">
  <img alt="Dart" src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" style="margin-left: 10px;">
  <img alt="Figma" src="https://img.shields.io/badge/Figma-F24E1E?style=for-the-badge&logo=figma&logoColor=white" style="margin-left: 10px;">
  <a href="https://github.com/JayeshPatil18/wallet-app">
    <img alt="GitHub" src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" style="margin-left: 10px;">
  </a>
</div>
</br>

## Project Explanation

This Flutter application mimics the wallet functionality found in the Vible Wallet App. The application performs various wallet-related operations by integrating with the provided APIs, including wallet creation, balance transfer, balance retrieval, and airdrop requests.

### Screenshot

![Screenshot](https://github.com/JayeshPatil18/wallet-app/blob/master/wallet-app.png)

## Links

- **GitHub Repository**: [View on GitHub](https://github.com/JayeshPatil18/wallet-app)
- **Download APK**: [Download Release Mode APK](https://github.com/JayeshPatil18/walletfeature/blob/master/app-release.apk)

## Features

### Wallet Operations
- **Wallet Creation**: Create a new wallet using the provided API.
- **Balance Transfer**: Transfer balance from one wallet to another.
- **Balance Retrieval**: Retrieve the current balance of a wallet.
- **Airdrop Requests**: Request airdrops for a wallet.

### API Overview
- **Wallet Creation API**: Endpoint to create a new wallet.
- **Balance Transfer API**: Endpoint to transfer balance.
- **Balance Retrieval API**: Endpoint to retrieve wallet balance.
- **Airdrop API**: Endpoint to request airdrop.

## Architecture Overview

The application follows a structured architecture based on Clean Architecture principles, organized into different layers: data, domain, presentation for reusability, maintainability, and testability. 

### Directory Structure

```
lib
│
├── shared
│ ├── constants (colors, textstyle, values)
│ ├── utils (core methods)
│ ├── routes (routing)
│
├── features
│ ├── wallet
│ │ ├── data
│ │ │ └── repository (local data)
│ │ ├── domain
│ │ │ └── entities
│ │ │ └── repository (services)
│ │ ├── presentation
│ │ ├── pages
│ │ └── widgets
```


### Explanation
- **lib/shared/constants**: Defines design constants (colors, text styles) for consistent visuals.
- **lib/shared/utils**: Contains reusable utility functions for common tasks.
- **lib/shared/routes**: Manages navigation within the app.
- **lib/features/wallet/data/repository**: Handles local data storage for wallet operations.
- **lib/features/wallet/domain/entities**: Defines wallet data structures.
- **lib/features/wallet/domain/repository**: Provides interfaces for wallet-related operations.
- **lib/features/wallet/presentation/pages**: Displays wallet content and handles user interactions.
- **lib/features/wallet/presentation/widgets**: Includes reusable UI components for wallet features.

## Instructions to Run the Flutter Application

### Prerequisites

#### Install Flutter SDK
1. Download the Flutter SDK from [flutter.dev](https://flutter.dev).
2. Extract the downloaded file to a preferred location on your machine.

#### Install Android Studio or VS Code
- **Android Studio**: Download and install from [developer.android.com](https://developer.android.com).
- **VS Code**: Download and install from [code.visualstudio.com](https://code.visualstudio.com).

#### Set Up Environment
- Add Flutter to your PATH variable.
  - For Windows: Edit the PATH Environment Variable and add `<flutter_directory>\bin`.
  - For macOS and Linux: Update your shell configuration file (`.bashrc`, `.bash_profile`, `.zshrc`, etc.) with `export PATH=<flutter_directory>/bin:$PATH`.

#### Verify Installation
1. Open a terminal or command prompt.
2. Run `flutter doctor` to check if there are any issues or additional requirements needed.
3. Resolve any issues reported by `flutter doctor`.

### Running the Application

#### Clone or Download the Project
1. Clone the project repository from GitHub or download the project ZIP file and extract it to a local directory.

#### Open Project in Code Editor
1. Open your preferred code editor (Android Studio or VS Code).
2. Navigate to the project directory.

#### Install Dependencies
1. In the terminal or command prompt, run:

```
flutter pub get
```


This command fetches and installs the required dependencies listed in `pubspec.yaml`.

#### Run the Application
1. After dependencies are successfully installed, run the following command:

```
flutter run
```


### Testing
- Ensure the application launches without errors.
- Interact with the application to verify functionality.

### Additional Notes
- Make sure your Android emulator or iOS simulator is running or connect a physical device via USB with debugging enabled.
- For iOS development on macOS, ensure Xcode is installed and updated to the latest version.
