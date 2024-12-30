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
