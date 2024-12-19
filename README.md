## Project Overview
The Example Social Research Organization is a fictitious nonprofit organization dedicated to providing global development statistics to social science researchers through its website. The site allows users to query and retrieve data such as the life expectancy of any country over the past 10 years. Initially developed with PHP and MySQL, the site has grown in popularity and was moved to AWS for better performance and scalability. This project involves implementing a secure and robust website using Ruby on Rails to meet the organization's requirements.

---

## Requirements
### Key Objectives
1. **Secure the Website**:
   - Ensure the application follows best security practices.
   - Prevent unauthorized access to the database and mitigate vulnerabilities.

2. **Improve Performance**:
   - Optimize query execution for faster response times.
   - Enhance scalability and handle increased traffic.

3. **Migrate to Ruby on Rails**:
   - Rebuild the website with Ruby on Rails.
   - Ensure all functionality is replicated and improved where possible.

4. **AWS Infrastructure**:
   - Use AWS services for hosting and database management.
   - Implement a secure and scalable architecture.

---

## Installation and Setup

### Prerequisites
- Ruby (version 3.0.0 or higher)
- Rails (version 7.0 or higher)
- MySQL Server
- AWS CLI (configured with necessary permissions)
- Git

### Installation Steps
1. **Clone the Repository**:
   ```bash
   git clone <repository_url>
   cd example-social-research-org
   ```

2. **Install Dependencies**:
   ```bash
   bundle install
   ```

3. **Database Setup**:
   - Update the `config/database.yml` file with your MySQL credentials.
   - Run the following commands to set up the database:
     ```bash
     rails db:create
     rails db:migrate
     rails db:seed
     ```

4. **Environment Variables**:
   - Create a `.env` file in the root directory.
   - Add the following environment variables:
     ```env
     DATABASE_USERNAME=your_username
     DATABASE_PASSWORD=your_password
     SECRET_KEY_BASE=your_secret_key
     AWS_ACCESS_KEY_ID=your_aws_access_key
     AWS_SECRET_ACCESS_KEY=your_aws_secret_key
     ```

5. **Start the Server**:
   ```bash
   rails server
   ```
   Access the site at `http://localhost:3000`.

---

## Features
1. **User-Friendly Query Interface**:
   - Search global development statistics by country and year.

2. **Secure Architecture**:
   - Implements Rails security best practices (e.g., CSRF protection, secure headers).
   - Uses AWS services to enhance security (e.g., RDS, private subnets).

3. **Scalability**:
   - Optimized database queries for high traffic.
   - Deployed on AWS EC2 instances with load balancing.

4. **Admin Panel**:
   - Admins can manage data entries and user permissions.

---

## AWS Architecture
- **EC2 Instances**:
  - Hosts the Ruby on Rails application.
  - Configured in private subnets for enhanced security.

- **RDS (MySQL)**:
  - Manages the database securely in a private subnet.
  
- **Elastic Load Balancer**:
  - Distributes traffic across multiple instances.

- **IAM Roles and Policies**:
  - Grants least privilege access to AWS resources.

---

## Testing
1. **Run Tests**:
   - Execute unit and integration tests:
     ```bash
     rails test
     ```

2. **Manual Testing**:
   - Verify all query pages load data correctly.
   - Confirm secure access to the database.

---

## Deployment
1. **Build and Push Docker Image**:
   ```bash
   docker build -t example-social-research-org .
   docker push <docker_registry_url>
   ```

2. **Deploy on AWS**:
   - Use Elastic Beanstalk or an EC2-based deployment.
   - Ensure environment variables are correctly set in the hosting environment.

---

## Troubleshooting
- **Database Connection Issues**:
  - Verify `config/database.yml` and `.env` credentials.
  - Ensure the database instance is accessible from the Rails server.

- **AWS Access Issues**:
  - Confirm IAM roles and policies are properly configured.
  - Check AWS CLI configuration.

---

## Contributors
- Shirley Rodriguez (Initial Development)
- Your Team (Ruby on Rails Migration)
- Mateo Jackson (Supervisor)

---

## License
This project is open-source and available under the MIT License.

