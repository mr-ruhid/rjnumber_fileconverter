<div align="center">
  <img src="https://raw.githubusercontent.com/mr-ruhid/rjnumber_fileconverter/main/assets/logo/logo.svg" alt="RJ Number Logo" width="250"/>
  <h1>📇 RJ Number</h1>
  <p><b>A modern Flutter desktop application that converts Excel (.xlsx) files into VCF (Contacts) format in seconds.</b></p>

<a href="https://github.com/mr-ruhid/rjnumber_fileconverter">View Source Code</a> •
<a href="#%EF%B8%8F-how-to-build">Installation Guide</a>

<br><br>

  <p>
    <a href="https://flutter.dev"><img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter"></a>
    <a href="https://dart.dev"><img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart"></a>
    <a href="https://www.microsoft.com/windows"><img src="https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white" alt="Windows"></a>
  </p>
</div>

<br>

## 📌 About the Project

**RJ Number** is a Windows desktop application designed to convert large Excel lists of client or contact numbers into the **vCard (.vcf)** format in seconds, making it extremely easy to import them into mobile phones.

The project is built with a modern **Glassmorphism** design language and enriched with **Lottie animations** to provide a high-quality, premium user experience.

---

## ✨ Key Features

| Feature | Description |
|:---|:---|
| ⚡ **Fast Conversion** | Reads `.xlsx` files, automatically cleans and standardizes phone numbers, and securely writes them to a VCF file. |
| 🔐 **Licensing & Trial System** | Features an integrated license verification system. Users are granted a 1-time free trial before a license code is required. |
| 🖥️ **Fullscreen Experience** | Fully optimized for desktop environments, automatically launching in maximized fullscreen mode. |
| 🎨 **Modern UI/UX** | Stunning visual experience with blur/glassmorphism effects, gradient backgrounds, and interactive pop-up loading screens. |

---

## 🛠️ Tech Stack

| Category | Technology |
|:---|:---|
| **Framework** | Flutter (Dart) |
| **Desktop Window Management** | `window_manager` |
| **File Operations** | `excel`, `file_picker` |
| **Storage / Caching** | `shared_preferences` |
| **Animations & UI** | `lottie`, `flutter_svg` |

---

## 📂 Project Structure

```text
rjnumber_fileconverter/
├── assets/
│   ├── logo/
│   │   ├── logo.svg
│   │   └── applogo.png
│   ├── animation/
│   │   ├── loading.json
│   │   ├── convert.json
│   │   ├── call.json
│   │   ├── licenas.json
│   │   ├── nolicence.json
│   │   └── yeslicence.json
│   └── licence/
│       └── licence.json
├── windows/
│   └── (Windows runner & native build files)
├── pubspec.yaml
└── README.md
```

---

## 🖥️ How to Build

### 1. Install Dependencies

```bash
flutter pub get
```

### 2. Run in Debug Mode

```bash
flutter run -d windows
```

### 3. Build a Release Version

```bash
flutter build windows --release
```

The compiled application will be available at:

```
build\windows\x64\runner\Release\
```

---

## 📄 License & Contributing

**License:** © 2026 RJ Number. All rights reserved.

**Contributing:** Contributions are welcome! Feel free to open issues or pull requests to improve the conversion logic, UI, or add new features.

---

## 👨‍💻 Author

**Ruhid Javadov (Mr-Ruhid)**

- GitHub: [mr-ruhid](https://github.com/mr-ruhid)

<div align="center">
  <h2>🌟 Support & Donate</h2>
  <p>If you appreciate the time and effort put into building this app, consider supporting the development. Your motivation keeps this project alive!</p>

  <br>

  <!-- Main Badges -->
  <a href="https://kofe.al/@ruhidjavadoff">
    <img src="https://kofe.al/assets/images/kofeal-logo.svg" height="40" alt="Support on Kofe.al" style="background-color: white; padding: 5px; border-radius: 5px;">
  </a>
  &nbsp;&nbsp;
  <a href="https://www.paypal.com/paypalme/ruhidjavadoff">
    <img src="https://img.shields.io/badge/Donate%20via-PayPal-00457C?style=for-the-badge&logo=paypal&logoColor=white" alt="Donate via PayPal" height="40">
  </a>

<br><br>

  <!-- Additional Links in a clean list format -->
  <p align="center">
    ☕ <b>Kofe.al:</b> <a href="https://kofe.al/@ruhidjavadoff">@ruhidjavadoff</a> <br>
    🍵 <b>Çayvoy:</b> <a href="https://cayvoy.com/donate/ruhid4715">ruhid4715</a> <br>
    💳 <b>PayPal:</b> <code>ruhidjavadoff@gmail.com</code> <br>
    🪙 <b>Crypto (USDT - BNB Smart Chain):</b> <br>
    <code>0x9a4AD41762D6B07B8C266b312Cf0dBe31FAd890c</code>
  </p>
</div>