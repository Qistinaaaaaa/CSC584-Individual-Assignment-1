# CSC584 - Individual Assignment 1: Personal Profile Web Application

**Name:** ANIS QISTINA BINTI BAHARUDDIN
**Student ID:** 2026130961
**Course:** CS230 4C

A simple dynamic web application built using HTML, Java Servlet, and JavaServer Pages (JSP) that collects user profile details via HTTP POST and displays them cleanly on a styled profile card.

## Technologies Used
* **HTML5 & CSS3** (with Google Fonts & FontAwesome icons)
* **Java Servlets** (HTTP POST request processing)
* **JavaServer Pages (JSP)** (Dynamic data rendering)
* **GlassFish Server 4.1.1** (Application server)
* **JDK 1.8** and **NetBeans IDE 8.2**

## Application Flow
`index.html` (Form) -> `ProfileServlet` (POST) -> `profile.jsp` (Display)

## Prerequisites
* JDK 1.8
* NetBeans IDE 8.2 (Java EE bundle)
* GlassFish Server 4.1.1, registered in NetBeans under **Tools > Servers**
* Internet connection (for Google Fonts and FontAwesome)

## How to Run the Application
1. Clone or download this repository.
2. Open NetBeans, choose **File > Open Project**, and select the `PersonalProfileApp` folder.
3. Make sure GlassFish Server 4.1.1 is configured in NetBeans.
4. Right-click the project and choose **Run**.
5. The browser will open `http://localhost:8080/PersonalProfileApp/`.
6. Fill in the form and click **Submit Profile** to view the result on `profile.jsp`.

## Notes
* Screenshots of the output are in the `screenshots/` folder.
* The project uses `javax.servlet.*` imports (Java EE 7).