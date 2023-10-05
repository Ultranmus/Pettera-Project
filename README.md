# Animal Search App with Pagination

## Introduction

This mobile application is a versatile solution that encompasses both Task 1 and Task 2 of the assignment within a single app. In Task 1, the app presents a pixel-perfect and fully responsive user interface (UI) based on a provided design. Notably, there is a 'following' button that allows users to seamlessly transition from the Task 1 UI to Task 2.

- [Check out this demo video](https://firebasestorage.googleapis.com/v0/b/github-895c7.appspot.com/o/Pettera%2FScreenrecorder-2023-10-05-15-35-14-850_0_COMPRESSED.mp4?alt=media&token=6ac456fa-3e7c-462d-8ea2-adde2e6017d1&_gl=1*2p1lhx*_ga*MjA3OTcyNTA1Ni4xNjkzNzQxMzYy*_ga_CW55HF8NVT*MTY5NjUwMTA3Ni4yMi4xLjE2OTY1MDM0MDcuNTIuMC4w)

## Table of Contents

- [Task 1: UI Design](#task-1-ui-design)
- [Task 2: Animal Search App](#task-2-animal-search-app)

## Task 1: UI Design

**Description**: Task 1 involves designing a pixel-perfect and fully responsive user interface (UI) based on a provided design.

**Design Link**: [Insert Design Link](https://drive.google.com/file/d/1f5hKKRBzQBwaYTxAWlRqrmb3U8z7kJsK/view?usp=sharing)

**Note -** There is a 'following' button that allows users to move from the Task 1 UI to Task 2.

### Screenshot of Task1

<img src="https://firebasestorage.googleapis.com/v0/b/github-895c7.appspot.com/o/Pettera%2FScreenshot_1696500675.png?alt=media&token=eb2c2bf8-a7bf-4030-a2da-ce790fb1bfc4&_gl=1*13249xa*_ga*MjA3OTcyNTA1Ni4xNjkzNzQxMzYy*_ga_CW55HF8NVT*MTY5NjUwMTA3Ni4yMi4xLjE2OTY1MDI0OTAuNjAuMC4w" height="500px">
<img src="https://firebasestorage.googleapis.com/v0/b/github-895c7.appspot.com/o/Pettera%2FScreenshot_1696500701.png?alt=media&token=fc076cdf-b353-4910-846d-1cf320fa0770&_gl=1*kzlljd*_ga*MjA3OTcyNTA1Ni4xNjkzNzQxMzYy*_ga_CW55HF8NVT*MTY5NjUwMTA3Ni4yMi4xLjE2OTY1MDI1MjguMjIuMC4w" height="500px">


## Task 2: Animal Search App

**Description**: Task 2's objective is to design and develop a mobile application that allows users to search for animal pictures. The app includes a search bar at the top where users can input their query (e.g., "dog"). It displays the search results in a grid format with pagination for efficient image loading.
- Also on first load 2 page are loaded in grid  meaning 30 images first ,then after each scroll 15 images per pages are loaded. This is due to the fact that in case at first load if 1 page do not cover the whole screen then scrolling events will not be triggered and more page will not be loaded. This problem can also be solved by calulating minimum images needed for filling the page and finding the nearest 15 multiple of that number.
If you want to find how to do this contact me on email - hashmack007@gmail.com

**Features**:

- Search Bar
- Grid Display
- Pagination
- API Integration (Pexels API)

### Screenshot of Task2
<img src="https://firebasestorage.googleapis.com/v0/b/github-895c7.appspot.com/o/Pettera%2FScreenshot_1696500713.png?alt=media&token=d14b6618-0e9c-430f-86b5-c36586d196bf&_gl=1*1302img*_ga*MjA3OTcyNTA1Ni4xNjkzNzQxMzYy*_ga_CW55HF8NVT*MTY5NjUwMTA3Ni4yMi4xLjE2OTY1MDI3MTMuNjAuMC4w" height="500px">
<img src="https://firebasestorage.googleapis.com/v0/b/github-895c7.appspot.com/o/Pettera%2FScreenshot_1696500716.png?alt=media&token=3c2f0068-bb0f-4e19-846b-20efd6a706f1&_gl=1*1b6bei5*_ga*MjA3OTcyNTA1Ni4xNjkzNzQxMzYy*_ga_CW55HF8NVT*MTY5NjUwMTA3Ni4yMi4xLjE2OTY1MDI3MzAuNDMuMC4w" height="500px">
<img src="https://firebasestorage.googleapis.com/v0/b/github-895c7.appspot.com/o/Pettera%2FScreenshot_1696500734.png?alt=media&token=7845e068-fc12-4fbb-99f4-342bf5dbe8e2&_gl=1*7ks138*_ga*MjA3OTcyNTA1Ni4xNjkzNzQxMzYy*_ga_CW55HF8NVT*MTY5NjUwMTA3Ni4yMi4xLjE2OTY1MDI3NDguMjUuMC4w" height="500px">
<img src="https://firebasestorage.googleapis.com/v0/b/github-895c7.appspot.com/o/Pettera%2FScreenshot_1696500741.png?alt=media&token=165e55f3-8e71-40b4-bf4a-9bd410aa70ba&_gl=1*1wlreyj*_ga*MjA3OTcyNTA1Ni4xNjkzNzQxMzYy*_ga_CW55HF8NVT*MTY5NjUwMTA3Ni4yMi4xLjE2OTY1MDI4MzAuNjAuMC4w" height="500px">
<img src="https://firebasestorage.googleapis.com/v0/b/github-895c7.appspot.com/o/Pettera%2FScreenshot_1696500747.png?alt=media&token=72c2ea1f-71c8-4473-8408-7d2f8d180cc7&_gl=1*6a5qyk*_ga*MjA3OTcyNTA1Ni4xNjkzNzQxMzYy*_ga_CW55HF8NVT*MTY5NjUwMTA3Ni4yMi4xLjE2OTY1MDI4NjUuMjUuMC4w" height="500px">
<img src="https://firebasestorage.googleapis.com/v0/b/github-895c7.appspot.com/o/Pettera%2FScreenshot_1696500752.png?alt=media&token=24192d86-b778-4b45-8555-74e3127e7f7f&_gl=1*xw8col*_ga*MjA3OTcyNTA1Ni4xNjkzNzQxMzYy*_ga_CW55HF8NVT*MTY5NjUwMTA3Ni4yMi4xLjE2OTY1MDI4ODIuOC4wLjA." height="500px">

**Usage**:

1. Open the app on your device.
2. Enter an animal name in the search bar.
3. Press Enter or tap the Search button.
4. Scroll down to view more images.

**API Integration (Pexels API)**:

The app uses the Pexels API for fetching animal pictures. Please do not use my API key. If you plan to use this code, make sure to obtain your own API key from Pexels (https://www.pexels.com/api) and insert it in the appropriate place in the code.

---
