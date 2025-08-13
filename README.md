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

### 1 Clone the repository
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

### 🛠 Step 2 — Deploy AWS EKS with Terraform

cd terraform-eks
terraform init
terraform plan
terraform apply -auto-approve

After creation

aws eks update-kubeconfig --region us-east-1 --name devops-demo-cluster
kubectl get nodes

###Next Step
###Step 3 will add:

Kubernetes Deployment & Service
CI/CD pipeline to build → push to JFrog → deploy to EKS

kubectl create secret docker-registry jfrog-docker-secret \
  --namespace devops-demo \
  --docker-server=YOUR_REGISTRY \
  --docker-username=YOUR_USERNAME \
  --docker-password=YOUR_PASSWORD_OR_TOKEN \
  --docker-email=you@example.com

Example YOUR_REGISTRY: mycompany.jfrog.io

Apply EKS
aws eks update-kubeconfig --region us-east-1 --name devops-demo-cluster
kubectl get nodes

Apply all manifest

kubectl apply -f k8s/namespace.yaml
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
kubectl apply -f k8s/hpa.yaml
# kubectl apply -f k8s/ingress.yaml   # if using ingress

Check rollouts
kubectl -n devops-demo rollout status deployment/devops-app
kubectl -n devops-demo get all


How it works
You push code → GitHub Actions triggers.
AWS creds authenticate to EKS.
Docker image builds & pushes to JFrog.
Kubernetes deployment updates to new image.
Zero-downtime rollout.


👨‍💻 Author
Your Mahendra
DevOps Engineer | AWS | Terraform | Docker | Kubernetes
