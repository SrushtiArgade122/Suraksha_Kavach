# 🛡️ Suraksha Kavach (SKavach)


**Suraksha Kavach** is an online-first, gamified disaster preparedness and safety ecosystem. Built natively using Flutter and backed by a scalable Node.js microservice architecture, the platform transforms boring safety manuals into an interactive, lifesaving training experience.

---

## 👥 The Engineering Team
* **Srushti Argade** 
* **Unnati Lambade**
* **Akanksha Sonawane** 
---

## 🚀 Key Features

* 🎮 **Interactive Kinesthetic Simulations (Earthquake Hero):** A hybrid simulation module that renders interactive indoor danger drills, training users to evaluate structurally safe areas (e.g., "Under Desk") in real-time.
* 📈 **Robust Background Synchronization:** Powered by a customized client-side state service (`GamificationService`) that logs scores instantaneously to local storage for zero latency, while asynchronously pushing updates to our cloud server.
* 🗣️ **Trilingual Accessibility Layout:** Full application native localization across **English (EN), Hindi (HI), and Marathi (MR)** to guarantee high accessibility margins during critical updates.
* 🏆 **Gamified Progress Matrix (Hall of Heroes):** Implements dynamic user streak validation mechanisms, localized achievement milestones (Badges), and a global ranking Leaderboard.
* 🆘 **One-Tap Instantaneous SOS Console:** Quick access overlay containing direct dialing links for national disaster, medical, police, and fire rescue helplines.

---

## 🛠️ Technical Stack
          
| Layer | Technologies Used |
| :--- | :--- |
| **Frontend Mobile Client** | Flutter, Dart, Provider (Asynchronous State Management) |
| **Backend Runtime & API** | Node.js, Express.js, RESTful API Architecture |
| **Cloud Database Storage** | MongoDB, Mongoose ODM (NoSQL Schema validation) |

---

## 📂 Repository Structure

```text
📁 JSPM/                      # Root Project Workspace
├── 📁 flutter_app/           # Core Flutter Mobile Client
│   ├── 📁 android/           # Native Android configurations
│   ├── 📁 ios/               # Native iOS configurations
│   ├── 📁 assets/            # App localization assets & images
│   ├── 📁 lib/               # Core Dart source code
│   │   ├── 📁 l10n/          # Trilingual localization files (EN, HI, MR)
│   │   ├── 📁 models/        # LeaderboardEntry & Data mapping classes
│   │   ├── 📁 screens/       # UI Screens (Dashboard, Quiz, Game Screen)
│   │   ├── 📁 services/      # Service Layer (GamificationService, AuthService)
│   │   ├── 📁 utils/         # Configuration constants (AppConstants.baseUrl)
│   │   ├── 📁 widgets/       # Reusable UI components
│   │   ├── 📄 main.dart      # Application entry point
│   │   ├── 📄 quiz_data.dart   # Local offline quiz repositories
│   │   └── 📄 video_data.dart  # Indexed fire/earthquake video guides
│   ├── 📄 pubspec.yaml       # Flutter dependencies & packages configurations
│   └── 📄 .gitignore         # Untracked frontend system paths
└── 📁 backend/               # Node.js API Server (Place your server files here!)
