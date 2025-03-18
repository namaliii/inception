# Inception - Docker Infrastructure Project
![](inception.png)

## Description

The **Inception** project is focused on creating a small infrastructure using several services running in isolated Docker containers, all managed via **Docker Compose**. The main objective is to design and configure a system composed of multiple interconnected services, which includes setting up a secure NGINX container, a WordPress container, and a MariaDB database container. The project aims to simulate a real-world environment where different services work together seamlessly, allowing for a more efficient development and deployment process.

### Project Overview

- **NGINX** container configured to serve as the entry point for all incoming HTTPS traffic with **TLSv1.2/TLSv1.3** encryption.
- **WordPress** container with **PHP-FPM** running as the website management platform.
- **MariaDB** container hosting the database for the WordPress site.
- Docker volumes for storing persistent data, including the database and website files.
- A custom **Docker network** ensuring communication between containers in a secure manner.

### Key Concepts

This project was an excellent exercise in understanding how Docker and Docker Compose simplify infrastructure management. Some key aspects include:

- **Self-Built Docker Images**: All Docker images were built from scratch, providing hands-on experience with creating Dockerfiles and understanding how containers work from the ground up.
- **Service Isolation & Networking**: It required configuring isolated environments for each service while ensuring that these containers could securely communicate with one another.
- **Security Practices**: Configuring secure HTTPS connections with NGINX, ensuring only encrypted communication is allowed.
- **Automation & Resilience**: The containers were configured to automatically restart in case of failure, reflecting production-grade infrastructure practices.

This project allowed for the creation of an entire web infrastructure from scratch, simulating real-world DevOps workflows. The use of **Docker Compose** significantly improved the efficiency of managing and deploying multiple services together, and learning the intricacies of Docker networking enhanced the overall understanding of containerized applications.

### Important Takeaways

- **Docker Compose** offers an efficient way to manage and scale multiple containers, reducing complexity and increasing maintainability.
- **Networking** between containers allows for a secure and efficient communication system, making it easier to integrate various services.
- The **NGINX** configuration with SSL/TLS ensured that all traffic was handled securely, making this project a great exercise in web security practices.
- Creating and managing containers manually, without relying on prebuilt images (apart from Alpine/Debian), provided valuable insights into how Docker works under the hood.

### Setup

To set up the project, make sure to configure your domain to point to the local IP address of your virtual machine. For example, if your login is `anamieta`, the domain `anamieta.42.fr` should redirect to your local machine's IP.

Additionally, you need to create a `.env` file located in the `srcs` directory for everything to work properly. A sample `.env` file is provided in the `srcs` folder.

### Contact

For any questions or inquiries, please contact the repository owner at [anamieta@student.42heilbronn.de](mailto:anamieta@student.42heilbronn.de).

**Note:** This repository is part of the 42 school curriculum and contains exercises designed to teach and test various multithreading and synchronization concepts.
