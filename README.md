# full-devops-workflow
full devops workflow 

# DevOps Demo Application 🚀

This is a sample **Flask-based REST API** containerized with **Docker** — built for demonstrating DevOps tools, CI/CD pipelines, and Kubernetes deployments.

---

## 📌 Features
- **Python Flask REST API**
    - `/` → Welcome message + hostname
    - `/health` → Service health check
    - `/status` → Service details & version
- **Containerized** using Docker
- Ready to be deployed to **Kubernetes** (EKS)
- Can integrate with **JFrog Artifactory**, **GitHub Actions**, and **Terraform**

---

## 📂 Project Structure

full-devops-pipeline/
├── app/
│ ├── app.py # Flask API
│ ├── requirements.txt # Python dependencies
├── Dockerfile # Container build file
└── README.md # Documentation


---

## 🛠 Prerequisites
Make sure you have the following installed:
- [Python 3.10+](https://www.python.org/downloads/)
- [Docker](https://docs.docker.com/get-docker/)
- [Git](https://git-scm.com/)

---

## 🚀 Getting Started

### 1️⃣ Clone the repository
```bash
git clone https://github.com/<your-username>/full-devops-pipeline.git
cd full-devops-pipeline

Build Docker image,
bash : docker build -t devops-demo-app .

Run container,
bash: docker run -p 5000:5000 devops-demo-app

Test EndPoint,
Home: http://localhost:5000/

Health Check: http://localhost:5000/health

Status: http://localhost:5000/status

If using JFrog Artifactory:
docker tag devops-demo-app <your-jfrog-url>/<repo-name>/devops-demo-app:1.0
docker push <your-jfrog-url>/<repo-name>/devops-demo-app:1.0

If using Docker Hub:
docker tag devops-demo-app <dockerhub-username>/devops-demo-app:1.0
docker push <dockerhub-username>/devops-demo-app:1.0

This repository will include:
Terraform for provisioning EKS
Kubernetes manifests for deployment
GitHub Actions for CI/CD automation

👨‍💻 Author
Your Mahendra
DevOps Engineer | AWS | Terraform | Docker | Kubernetes
