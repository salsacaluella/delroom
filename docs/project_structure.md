# DelRooms Project Structure Guide

This document outlines the folder and file architecture for the DelRooms application, developed using Lean Agile methodology.

---

## Project Overview

**Technology Stack:**

* **Frontend:** Flutter
* **Backend:** Firebase (Authentication, Firestore, Cloud Functions)
* **Architecture:** MVC pattern with modular feature separation and clean architecture principles

---

## Folder Structure

```
delrooms-app/
├── lib/
│   ├── main.dart
│   ├── app.dart
│   ├── core/
│   │   ├── config/
│   │   │   ├── constants.dart
│   │   │   └── env.dart
│   │   ├── routing/
│   │   │   ├── app_router.dart
│   │   │   └── route_names.dart
│   │   └── theme/
│   │       └── app_theme.dart
│   ├── data/
│   │   ├── models/
│   │   │   ├── user.dart
│   │   │   ├── room.dart
│   │   │   └── booking.dart
│   │   ├── services/
│   │   │   └── auth_service.dart
│   │   └── repositories/
│   ├── features/
│   │   ├── auth/
│   │   ├── booking/
│   │   ├── checkout/
│   │   └── dashboard/
│   │       ├── view/
│   │       ├── controller/
│   │       └── widgets/
│   └── shared/
│       ├── widgets/
│       │   └── custom_widgets.dart
│       ├── utils/
│       │   └── helpers.dart
│       └── extensions/
│           └── extensions.dart
├── test/
│   ├── unit/
│   └── widget/
├── firebase/
│   ├── functions/
│   │   ├── index.ts
│   │   └── services/
│   └── firestore.rules
├── pubspec.yaml
├── README.md
└── PROJECT-STRUCTURE.md
```

---

## Core Modules

### `core/config/`

* `constants.dart`: Application-wide constants (e.g., spacing, color palette)
* `env.dart`: Environment-specific variables (e.g., base URLs, API keys)

### `core/routing/`

* `app_router.dart`: Routing configuration using GoRouter
* `route_names.dart`: Centralized route name definitions

### `core/theme/`

* `app_theme.dart`: Theming configuration using Material 3

---

## Data Layer

### `models/`

* `user.dart`: Model defining user authentication-related data
* `room.dart`: Model defining room data including types and statuses
* `booking.dart`: Model handling booking data and tracking booking status

### `services/`

* `auth_service.dart`: Service for Firebase Authentication integration

### `repositories/`

* Directory reserved for future implementation of repository pattern to abstract service logic

---

## Feature Modules

Each feature follows a modular MVC structure:

* `/view/`: User interface and screens
* `/controller/`: State and business logic
* `/widgets/`: Reusable UI components specific to the feature

### Implemented Modules:

* `auth/`: User authentication and session handling
* `booking/`: Booking flow logic and UI
* `checkout/`: Room checkout logic and UI
* `dashboard/`: Main application dashboard after login

---

## Shared Components

* `widgets/custom_widgets.dart`: Reusable UI components used across multiple features
* `utils/helpers.dart`: Helper functions for formatting, validation, etc.
* `extensions/extensions.dart`: Custom Dart extensions for commonly used types

---

## Testing Structure

* `unit/`: Unit tests for business logic and controllers
* `widget/`: Widget tests for UI components and screen rendering

---

## Firebase Configuration

* `functions/index.ts`: Entry point for Cloud Functions used for backend logic such as booking and user management
* `firestore.rules`: Firestore security rules for database access and permission control

---

## Application Entry Point

* `main.dart`: Entry point of the application using `runApp()`
* `app.dart`: Main application widget initializing routing and theming



