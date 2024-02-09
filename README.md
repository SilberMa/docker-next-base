# Next.js Docker Template 🚀

This project serves as a **starting point for Next.js applications using Docker**, designed to streamline both development and deployment processes. It includes a Docker configuration tailored for Next.js apps and integrates Traefik for simplified reverse proxying and SSL configuration, ensuring a smoother workflow.

## Features 🌟

- 🐳 **Docker Integration**: Simplifies the setup and isolation of the development environment.
- 📦 **Docker Compose Support**: Facilitates the management of multi-container Docker applications.
- 📚 **Pre-configured MongoDB**: Ready-to-use MongoDB service for data storage.
- 🔄 **Traefik Setup**: Provides easy reverse proxying and automated SSL configuration for secure, production-ready deployments.
- 🌐 **Development and Production Environment Setup**: Offers an easy transition from development to production settings.

## Prerequisites 📋

Before starting, please ensure the following tools are installed on your system:

- 🐳 **Docker**: [Installation Guide](https://docs.docker.com/get-docker/)
- 📦 **Docker Compose**: [Installation Guide](https://docs.docker.com/compose/install/)
- ⚙️ **Traefik**: Must be configured and running. Refer to the [Traefik Quick Start](https://doc.traefik.io/traefik/getting-started/quick-start/) for instructions. For an easy start, consider using this [Traefik Docker Compose](https://google.de) repository.

## Technology Stack 🛠️

This template is built upon a solid foundation of technologies, each serving a crucial role:

| Technology | Purpose |
|----------------|---------|
| ![Next.js](https://img.shields.io/badge/Next.js-000000?style=for-the-badge&logo=next.js&logoColor=white) | Frontend Framework |
| ![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white) | Containerization |
| ![MongoDB](https://img.shields.io/badge/MongoDB-4EA94B?style=for-the-badge&logo=mongodb&logoColor=white) | Database |
| ![Traefik](https://img.shields.io/badge/Traefik-FAE700?style=for-the-badge&logo=traefik&logoColor=black) | Reverse Proxy and SSL Termination |

Each technology is carefully chosen to ensure optimal performance, ease of use, and seamless integration for a smooth development experience and robust deployment.

## Setup Instructions 📖

### Traefik Configuration

Ensure Traefik is set up as a reverse proxy. Follow the [Traefik Documentation](https://doc.traefik.io/traefik/getting-started/quick-start/) if not already configured.

### Step 1: Clone the Repository <img src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png" width="15" height="15">



```bash
git clone https://github.com/SilberMa/docker-next-base.git your-project-name
cd your-project-name
````
### Step 2: Traefik Configuration

This template assumes that Traefik is already set up as a reverse proxy. If you haven't configured Traefik yet, please follow the [Traefik Documentation](https://doc.traefik.io/traefik/getting-started/quick-start/) to do so. Make sure Traefik is configured to listen for incoming requests and route them appropriately to your Docker containers.

### Step 2: Initialize the Next.js Application 🛠️
Navigate to the src directory and create your Next.js app:

```bash
cd src
npx create-next-app@latest .
```

### Step 3: Build and Run with Docker  🐳
Return to the root directory and start your application using Docker Compose:

```bash
cd ..
docker-compose up --build
```
This command constructs the Docker image for your Next.js app and initiates the services defined in the docker-compose.yml, including your Next.js app and MongoDB.

### Step 4: Accessing Your Application  🌐

- **Next.js Application**: The application is available at [`https://dev.docker.localhost`](https://dev.docker.localhost). Make sure your Traefik setup is correctly configured to route this domain to your application container.

- **MongoDB**: Direct database connections can be made on port `27017`.

- **Mongo Express**: This web-based MongoDB admin interface is accessible at [`http://localhost:8081`](http://localhost:8081).

## Configuration ⚙️

### Dockerfile Adjustments

You may need to adjust the `Dockerfile` to change the Node version or include additional dependencies specific to your project.

### docker-compose.yml Modifications

The `docker-compose.yml` file outlines the service definitions for your application and database. Modify MongoDB's environment variables as needed to suit your project requirements. Ensure the Traefik labels in your service definitions align with your overall Traefik configuration to facilitate correct routing and SSL termination.

## Contributing 🤝

I deeply appreciate your interest in contributing to this project! Whether it's bug fixes, feature additions, or improvements to documentation, all contributions are welcome.

### How to Contribute

1. **Fork the Repository**: Click the 'Fork' button at the top right of this page to create your own copy of this repository.

2. **Clone Your Fork**: Get a local copy of your forked repository by running:
   ```bash
   git clone https://github.com/your-username/docker-next-base.git
   ````
3. **Create a New Branch**: Navigate to your clone and checkout a new branch for your work:
```bash
cd docker-next-base
git checkout -b feature/YourFeatureName
```
4. **Make Your Changes**: Add, edit, or delete files as necessary for your contribution.

5. **Commit Your Changes**: Once you're happy with your work, commit the changes:

```bash
git commit -am "Add some amazing feature"
```
6. ***Push to Your Fork***: Upload your changes to GitHub:

```bash
git push origin feature/YourFeatureName
```
* **Submit a Pull Request**: Go to your fork on GitHub and click the 'New pull request' button. Choose your "feature/YourFeatureName" branch and ensure it's comparing against the main branch of the original repository. Fill in some details about your changes and submit the pull request.

### Contribution Guidelines 📜

When contributing to this project, please follow these guidelines:

* **Code Style**: Please adhere to the coding conventions used throughout the project to maintain consistency.
* **Commit Messages**: Write clear, concise commit messages that describe the changes you're making.
* **Documentation**: Update the README or other documentation as necessary based on your changes or new features.<br/><br/>
Your contributions are invaluable to the project, and I look forward to reviewing your pull requests!
## License

This project is open-sourced under the [MIT License](LICENSE).