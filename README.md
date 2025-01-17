# PWA Navigation Routing Framework

A comprehensive Flutter framework for advanced navigation and routing, optimized for Progressive Web Applications (PWA). This project demonstrates how to implement dynamic navigation, deep linking, and data management across a Flutter app.

---

## Features

### 1. Dynamic Routing with Bottom Navigation Bar
- Seamless switching between routes based on Bottom Navigation Bar items.
- Maintains the state of pages while navigating, ensuring a smooth user experience.
- Supports custom path structures for each tab, enabling deep linking directly to a specific tab.

### 2. Routing with Bottom Sheet Modals
- Manages routes that involve modal presentations like Bottom Sheets.
- Provides a mechanism to handle routing when a Bottom Sheet is displayed or dismissed.
- Enables deep linking directly into a specific state of the app where a modal is visible.

### 3. Path, Query, and Body Data Management
- Handles data passing across screens using:
    - **Path parameters**: Dynamic segments within the URL.
    - **Query parameters**: Key-value pairs in the URL for additional data.
    - **Body data**: Encodes and decodes payloads sent between routes.
- Examples include passing filters, IDs, or forms to specific pages.

### 4. Deep Linking Management
- Supports deep linking to various parts of the app:
    - Automatically matches incoming links to app routes.
    - Handles custom URI schemes and web URLs (`http` and `https`).
    - Demonstrates parsing of links to navigate to the correct page with the required data.
- Provides an intent filter in Android and universal link handling for iOS and Web.

---

## Getting Started

### Prerequisites
- Flutter SDK: Version 3.x or later.
- Knowledge of Flutter routing (`Navigator`, `GetX`, or other frameworks).

### Installation

#### 1. Clone the repository
`git clone https://github.com/mohammad-khorram/pwa_navigation_routing_framework.git`

#### 2. Install dependencies
`flutter pub get`

#### 3. Run the application
`flutter run`

---

## Contributions

Contributions are welcome! Please follow these steps:
1. Fork the repository.
2. Create a new branch:
`git checkout -b feature-name`
3. Commit your changes:
`git commit -m "Added a feature"`
4. Push to the branch:
`git push origin your_new_branch`
5. Open a Pull Request.

---

## License

This project is licensed under the MIT License.

---

## Contact

For questions or suggestions, feel free to reach out at [mr.mohammadkhorram@gmail.com].