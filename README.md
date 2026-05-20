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