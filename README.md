

Flutter Clean Architecture 🧼

A robust Flutter project template featuring:

🧹 Internationalization: Seamlessly adapt your app to different languages and locales.
🎨 Themes: Easily customize your app's appearance with multiple themes.
🧱 Global Widgets: Reusable UI components for consistent design.
🛡️ Exception Handling: Graceful error management for a smooth user experience.
🚦 Flutter Bloc: State management using the Flutter Bloc pattern.
❄️ Freezed: Code generation for immutable data classes.
💉 Get It: Dependency Injection for clean and maintainable code.

Clean Architecture is a software design pattern that promotes separation of concerns and testability. In Flutter, it involves organizing your code into layers:

Presentation Layer: Handles user interaction and UI elements.
Domain Layer: Contains the core business logic and domain entities.
Data Layer: Interacts with data sources like APIs and databases.



Flutter Clean Architecture 🧼

lib/
├── core/                   # Shared core logic, e.g., error handling
├── data/
│   ├── datasources/        # Data sources like APIs
│   │   └── user_remote_data_source.dart
│   └── repositories/       # Repository implementations
│       └── user_repository_impl.dart
├── domain/
│   ├── entities/           # Immutable classes
│   │   └── user.dart
│   ├── repositories/       # Repository interfaces
│   │   └── user_repository.dart
│   └── usecases/           # Business logic
│       └── get_user_usecase.dart
├── presentation/
│   ├── bloc/               # BLoC logic for state management
│   │   ├── user_bloc.dart
│   │   ├── user_event.dart
│   │   └── user_state.dart
│   └── pages/              # UI pages
│       └── user_page.dart
├── injection.dart          # Dependency injection setup
└── main.dart               # Entry point of the application
