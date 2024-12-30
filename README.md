Description
This is a test application for a chat app developed using Flutter. The app is built with a focus on modularity and scalability, leveraging the GetX state management library and the MVC (Model-View-Controller) architecture.

Features
- Speech-to-Text (STT):
- Convert recorded voice to text and display the transcribed text.

Text-to-Speech (TTS):
- Convert entered text into speech and play it through the device’s speakers.

Voice Room:
- Join and interact in a voice room with multiple participants.

Error Handling:
- Robust error handling and user feedback for common issues like permission denials and network errors.

Architecture
This project follows the MVC architecture for better separation of concerns:
- Model: Manages data and business logic.
- View: Handles the UI elements and interactions.
- Controller: Serves as the intermediary between the Model and View, containing logic for UI updates.

State Management
The project uses GetX for:
- Reactive state management.
- Dependency injection.
- Navigation.


My Approach
- Modular Architecture: Implemented the Model-View-Controller (MVC) pattern using GetX for state management to ensure a clean and maintainable codebase.
- UI Design: Designed a user-friendly interface that adheres to Flutter's responsive design principles.
- Efficiency: Optimized performance by leveraging Flutter widgets effectively and following best practices for state management.
- Scalability: Ensured that the codebase can be easily extended for future features.
Assumptions Made
1 The app will be run on a device with internet access for specific API-based features (if applicable).
2 The user will have all necessary permissions (e.g., microphone, storage) granted for seamless app functionality.
4 No backend implementation is required unless explicitly mentioned in the assignment document.
