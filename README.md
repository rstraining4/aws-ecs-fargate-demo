# ECS Fargate Demo

This project demonstrates how to deploy a Python application using AWS ECS Fargate. It includes the necessary files and configurations to build, deploy, and manage the application in a cloud environment.

## Project Structure

```
ecs-fargate-demo
├── src
│   ├── app.py          # Main application file
│   └── utils
│       └── helpers.py  # Helper functions
├── Dockerfile           # Dockerfile for building the application image
├── requirements.txt     # Python dependencies
├── terraform
│   ├── main.tf         # Main Terraform configuration
│   ├── variables.tf    # Input variables for Terraform
│   └── outputs.tf      # Outputs of the Terraform configuration
├── .gitignore           # Git ignore file
└── README.md            # Project documentation
```

## Setup Instructions

1. **Clone the repository:**
   ```
   git clone <repository-url>
   cd ecs-fargate-demo
   ```

2. **Install dependencies:**
   ```
   pip install -r requirements.txt
   ```

3. **Build the Docker image:**
   ```
   docker build -t ecs-fargate-demo .
   ```

4. **Deploy using Terraform:**
   - Navigate to the `terraform` directory.
   - Initialize Terraform:
     ```
     terraform init
     ```
   - Apply the configuration:
     ```
     terraform apply
     ```

## Usage

After deploying, the application will be accessible via the specified endpoint in the Terraform outputs. You can interact with the application as needed.

## Contributing

Feel free to submit issues or pull requests for improvements or bug fixes.

## License

This project is licensed under the MIT License.

# ECS Fargate Demo

This project demonstrates how to deploy a Python application using AWS ECS Fargate. It includes the necessary files and configurations to build, deploy, and manage the application in a cloud environment.

## Story

My team is working on building a minimal containerized web application deployed on AWS using ECS Fargate. This is our containerized service in a secure and scalable way, and my frontend is used for my finance company. I used Terraform to provision infrastructure as code so that the entire environment is reproducible. 

The application is deployed behind an Application Load Balancer (ALB), which distributes traffic to ECS tasks running in private subnets. The setup follows a basic production setup—public/private subnet separation, security groups, IAM roles for ECS task execution, and container images stored in ECR. Even though it's minimal, it reflects real-world production architecture.

## Minimum AWS Services You Should Know

### Core Compute & Application
- **Amazon ECS (Fargate launch type)**: For running containerized applications.
- **ECS Task Definition**: Defines the container configuration.
- **ECS Service**: Manages the ECS tasks.
- **Docker Container Networking**: For containerized application communication.

### Networking
- **VPC**: Virtual Private Cloud for isolating resources.
- **Public Subnet**: Hosts the ALB.
- **Private Subnet**: Hosts the ECS tasks.
- **Internet Gateway**: Allows internet access for public resources.
- **Route Tables**: Direct traffic between subnets and the internet.
- **Security Groups**: Controls inbound and outbound traffic.

### Load Balancing
- **Application Load Balancer (ALB)**: Distributes traffic to ECS tasks.
- **Target Group**: Routes traffic to specific ECS tasks.
- **Listener (HTTP :80)**: Listens for incoming traffic on port 80.

### Container Registry
- **Amazon ECR (Elastic Container Registry)**: Stores container images.

### Security
- **IAM Role (ECS Task Execution Role)**: Allows ECS tasks to pull images from ECR and write logs to CloudWatch.
- **IAM Policy**: Grants permissions for ECR and CloudWatch.

### Logging (Optional but Good)
- **CloudWatch Logs**: Captures logs from ECS tasks.

## What Terraform Modules You Are Practicing

This project uses Terraform to provision the following resources:
- **`vpc.tf`**: VPC, subnets, and internet gateway.
- **`alb.tf`**: ALB, target group, and listener.
- **`ecs.tf`**: ECS cluster, service, and task definition.
- **`iam.tf`**: IAM roles and policies for ECS task execution.
- **`ecr.tf`**: ECR repository for storing container images.
- **`security.tf`**: Security groups for ALB and ECS tasks.
- **`main.tf`**: Orchestration of all resources.

## Why This Architecture is “Interview Gold”

This architecture is ideal for interviews because it demonstrates:
- **Decoupling**: The ALB separates traffic from the ECS service, ensuring modularity.
- **Scalability**: ECS Fargate can auto-scale tasks based on demand.
- **Security**: ECS tasks run in private subnets, isolated from the public internet.
- **Reproducibility**: Terraform ensures the infrastructure can be recreated consistently.
- **Modern Deployment**: The architecture uses container-based deployment, which is widely adopted in production environments.
- **Production Realism**: Even though it's minimal, the setup reflects real-world production practices.

## Project Structure
