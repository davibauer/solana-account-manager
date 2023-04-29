# Solana Account Manager

This is a Solana account management application that allows you to add, update, and fetch accounts based on various criteria.

## Table of Contents

- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Running the Application](#running-the-application)
- [Running Tests](#running-tests)
- [Running with Docker](#running-with-docker)
- [Code Formatting](#code-formatting)
- [Environment Variables](#environment-variables)
- [Design Patterns](#design-patterns)
  - [Singleton](#singleton)
  - [Observer](#observer)
- [Observability](#observability)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Node.js (>= 14.x.x)
- npm (>= 6.x.x)

### Installation

1. Clone the repository

```bash
git clone https://github.com/davibauer/solana-account-manager.git
```

2. Install the dependencies

```bash
cd solana-account-manager
npm install
```

## Running the Application

To run the application, simply execute the following command:

```bash
npm start
```

## Running Tests

To run the test suite, execute the following command:

```bash
npm test
```

### Test Coverage

To access the test coverage report, go to `coverage/lcov-report/index.html` in your browser.

## Running with Docker

Build the Docker image:

```bash
docker build -t solana-account-manager .
```

Run a Docker container from the image:

```bash
docker run -it -p 3000:3000 solana-account-manager
```

## Code Formatting

The project uses Prettier for code formatting. You can format the code by running:

```bash
npm run format
```

## Environment Variables

The following environment variables are used in the application:

| Name       | Description                                         |
| ---------- | --------------------------------------------------- |
| `NODE_ENV` | The environment in which the application is running |

For running production optimized build, set `NODE_ENV` to `production`. For example:

```bash
NODE_ENV=production npm start
```

## Design Patterns

### Singleton

The Singleton pattern is used in the `SolanaAccountManager` class to ensure that there's only one instance of the manager, which is responsible for managing all accounts. This makes it easy to share the account data across different parts of the application without the risk of creating multiple instances or duplicating the data.

### Observer

The Observer pattern is used to provide a callback mechanism when accounts are updated. This allows different parts of the application to be notified of account changes and react accordingly.

## Observability

If this was a production system, we would add the following observability measures:

1. **Logging**: Implement structured logging to capture important events and errors. This would help in debugging issues and understanding the impact of those issues.

2. **Metrics**: Integrate with a monitoring system (e.g., Prometheus) to collect and analyze performance metrics. This would help in identifying performance bottlenecks and scaling the application.

3. **Tracing**: Implement distributed tracing (e.g., Jaeger) to track the flow of requests through the system. This would help in identifying issues with the application and understanding the impact of those issues.

4. **Alerting**: Set up alerting rules based on the collected metrics to notify the team of any issues. This would help in identifying and resolving issues before they impact the users.

5. **Health checks**: Implement health check endpoints to monitor the application's health and readiness. This would help in identifying issues with the application and ensure that it's ready to serve traffic.
