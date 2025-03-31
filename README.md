# 🎯 Flutter Provider State Management Demo

## 🚀 Project Overview

A Flutter application demonstrating state management using Provider pattern. This project showcases how to share and modify state across different screens in a Flutter application.

## ✨ Features

- 🔄 State management with Provider
- 📱 Two screens sharing the same state
- ➕ Add numbers functionality
- 📋 Different list views (vertical and horizontal)
- 🔄 Real-time UI updates

## 🛠️ Tech Stack

- ![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
- ![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
- Provider State Management

## 📚 Learning Objectives

This project demonstrates:
- How to set up Provider in a Flutter application
- How to create a state management class using ChangeNotifier
- How to share state across different screens
- How to modify state and update UI automatically
- How to use Consumer widget for efficient rebuilds

## 🏗️ Project Structure

- `main.dart`: Sets up the Provider at the app level
- `number_list.provider.dart`: Contains the state management logic
- `home.dart`: First screen with vertical list view
- `second.dart`: Second screen with horizontal list view

## 🚀 Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK

### Installation

```bash
# Clone the repository
git clone https://github.com/Alok-Sci/flutter--state-management-using-provider

# Navigate to project directory
cd flutter--state-management-using-provider

# Install dependencies
flutter pub get

# Run the app
flutter run
```

## 📝 How It Works

1. The app maintains a list of numbers starting from [1,2,3,4]
2. Both screens can add new numbers to the list
3. When a number is added, both screens update automatically
4. The state persists when navigating between screens

## 🎯 Key Concepts Demonstrated

- Provider setup and configuration
- State management with ChangeNotifier
- Cross-screen state sharing
- Efficient UI updates with Consumer
- Basic navigation between screens

## 📌 Key Takeaways

- Understanding Provider pattern in Flutter
- State management across multiple screens
- Efficient UI updates
- Clean and maintainable code structure