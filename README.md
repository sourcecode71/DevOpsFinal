Here’s the **README.md** file in proper Markdown format:  
---
# 🚀 Docker Development - `feature/dockerize-application`

This branch contains Docker configurations to containerize the Angular application **DevOPsFinal**.

## 📌 Steps to Run Locally
### 1️⃣ Build the Docker Image  
```sh
docker build -t mostafiz51/devops-final:latest .
```
### 2️⃣ Run the Container  
```sh
docker run -d -p 8080:80 mostafiz51/devops-final:latest
```
- The application will be available at **http://localhost:8080**.

### 3️⃣ Push to Docker Hub  
```sh
docker login  
docker push mostafiz51/devops-final:latest
```

---
## 🛠 Docker Compose  
A `docker-compose.yml` file is included for easy deployment:  

### ➤ Run using Docker Compose  
```sh
docker-compose up -d
```
- The application will be available at **http://localhost:9097**.
---
## 📌 Tech Stack  
- **Node.js** (for building the app)  
- **Nginx** (for serving the app)  
- **Docker & Docker Compose** (for containerization)  

---

✅ **Next Step:** Push the updates to the base repo. 🚀  

Would you like any modifications or additional details? 😊
