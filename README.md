# 🌊 FCCPark

\

FCCPark is a modern, fluid Flutter application designed to digitalize and streamline entry into waterparks. Say goodbye to soggy paper tickets and long queues!

This app provides a seamless onboarding experience with a refreshing aquatic theme, allowing guests to securely log in with their phone number and access their digital dashboard in seconds.

## Features

* **Secure Phone Authentication:** Fast and passwordless login using Firebase OTP verification.
* **Seamless Profile Setup:** Quick onboarding to capture guest names and link them to their phone numbers.
* **Aquatic UI/UX:** A custom-built, splashy interface featuring fluid rounded cards, ocean-inspired color palettes, and engaging iconography.
* **Real-time Data:** Powered by Cloud Firestore to keep guest profiles synced instantly.

## Tech Stack

* **Framework:** [Flutter](https://flutter.dev/)
* **Language:** Dart
* **Backend & Authentication:** [Firebase Auth](https://firebase.google.com/docs/auth)
* **Database:** [Cloud Firestore](https://firebase.google.com/docs/firestore)

## Getting Started

Follow these steps to get a local copy of the project up and running.

### Prerequisites

* Flutter SDK installed on your machine.
* An IDE such as VS Code or Android Studio.
* A Firebase project configured with **Phone Authentication** and **Cloud Firestore** enabled.
* FlutterFire CLI installed.

### Installation

**Step 1: Clone the repository**

```bash
git clone https://github.com/Harshitt-10/WaterparkEntry.git
cd fccpark
```

**Step 2: Install dependencies**

```bash
flutter pub get
```

**Step 3: Configure Firebase**

```bash
flutterfire configure
```

**Step 4: Run the app**

```bash
flutter run
```