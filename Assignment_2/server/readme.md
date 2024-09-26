# Chemical Warehouse Project | Assignment 3

## Table of Contents

- [Project Overview](#Project-Overview)
- [User Stories](#User-Stories)
- [Technologies](#Technologies)
- [setup](#Setup)
- [Purpose](#Purpose)
- [Project Board and Issue Tracking](#Project-Board-and-Issue-Tracking)
- [Team Workflow](#Team-Workflow)
- [Issues and Task Management](#Issues-and-Task-Management)

## Project Overview

The **Chemical Warehouse Project** is designed to manage the storage and auditing of chemical shipments. This system tracks shipments arriving at the depot, verifies available capacity, and records where chemicals are stored. Additionally, the system provides auditing capabilities to log and review the movement and storage of chemicals.

## User Stories

### 6.1. User Story 1: Ticket Validation

**As** gate staff,  
**I want** to validate the ticket presented by the driver,  
**So that** I can ensure the driver’s details, company name, and chemical shipment details are accurate before creating a job.

**Acceptance Criteria**

- **Given** a driver arrives at the gate with a ticket,  
  **When** the gate staff enter or scan the ticket details into the system,  
  **Then** the system should check the driver’s name, company, and chemical shipment details against the ticket.

- **Given** the ticket details are incorrect,  
  **When** the validation is performed,  
  **Then** the system should display an error message to the gate staff.

- **Given** the ticket details are correct,  
  **When** the validation is performed,  
  **Then** the system should allow the gate staff to proceed with job creation.

### 6.2. User Story 2: Job Creation

**As** gate staff,  
**I want** to create a job in the system for the delivery or collection of chemicals,  
**So that** I can track the storage location, date, and type of job (delivery or collection).

**Acceptance Criteria**

- **Given** a validated ticket,  
  **When** the gate staff create a job,  
  **Then** the system should allow the creation of a job with the required details: storage location, date, job type (delivery or collection), and status.

- **Given** the job is successfully created,  
  **When** the job details are submitted,  
  **Then** the system should generate a unique job ID and set the status to “pending”.

## Why Choose 6.1 User Story 1: Ticket Validation

We have chosen to base our work on **User Story 1: Ticket Validation** as it is easy to create GitHub issues, and they can help us build and guide the project step by step. By breaking down tasks into smaller issues, we can:

- **Organize work**: Each issue can represent a specific task or feature, making it easier to track progress and prioritize work.
- **Collaboration**: Team members can comment, suggest improvements, and assign tasks to the right people, improving collaboration.
- **Step-by-step progress**: As issues are resolved, we can steadily move the project forward, ensuring each piece is addressed properly.
- **Documentation**: GitHub issues serve as a record of decisions, challenges, and solutions, helping us stay organized and focused.

By using the user story with GitHub issues, we can make the development process more structured and efficient.

## Technologies

- NodeJS
- TypeScript
- Express Server
- Testing with Jest + Supertest, Artillery for Load Testing
- Mocking via Jest
- Static Code Analysis with ESLint [link](https://blog.logrocket.com/linting-typescript-eslint-prettier/)

## Setup

Server setup:

navigate to the server directory and run the following commands:

1. `npm i ` to install the dependencies

2. start docker desktop

3. run `docker-compose up -d` to start the database (make sure that you are in the /server directory)

4. `npm run dev` to start the server

## Purpose

This project is developed as part of a GitHub Projects & Issues assignment to manage the project using a Scrum process. Our goal is to implement core functionalities that manage chemical warehouse operations while practicing branching, automation, and team collaboration.

## Project Board and Issue Tracking

We will use the **GitHub Project Board** to manage and track the progress of tasks and user stories through their life cycle. The project board will follow the Scrum framework, where the main focus will be on:

- **User Stories**: High-level descriptions of the functionality that we aim to implement. Each user story will be broken down into smaller tasks.
- **Tasks**: Specific, actionable steps required to complete each user story.

![image](<Screenshot 2024-09-25 at 21.44.22.jpg>)

### Using the Project Board

We will use the following procedure to manage issues:

1. **Creating User Stories**: Each user story will be added as an issue with a detailed description of the functionality.
2. **Breaking Down into Tasks**: User stories will be split into individual tasks using checklists or sub-issues to track progress.
3. **Labels and Estimation**: We will use custom labels to categorize issues and tasks. For example:
   - `User Story`: Marks issues that represent user stories.
   - `Task`: Marks issues that represent individual tasks.
   - `Bug`: Marks issues for any discovered bugs.
   - `Small`, `Medium`, `Large`: Estimates the size of the task.
   - `Documentation`: Marks issues related to documentation.
4. **Priority**: Issues will be prioritized based on their importance and urgency via the following labels:
   - `P0` (Critical Priority)
   - `P1` (High Priority)
   - `P2` (Medium Priority)

![image](<Screenshot 2024-09-25 at 20.58.50.jpg>)

### Workflow and Automation

- Issues will automatically be assigned to the project board based on certain labels.
- We will use **Draft Issues** and **Draft Pull Requests** for work-in-progress features.
- We aim to set up automation that moves issues to the "Done" column once all tasks within an issue are completed.

## Team Workflow

### Branching Strategy: GitHub Flow

We will follow the **GitHub Flow** branching strategy:

- The **main** branch will always contain the most up-to-date deployable code.
- Developers will create **feature branches** from the main branch to work on individual user stories or tasks.
- Once a feature or task is complete, a **pull request** will be opened to merge the changes into the main branch.

![image](<Screenshot 2024-09-25 at 21.20.30.jpg>)

![image](<Screenshot 2024-09-25 at 21.46.09.jpg>)

## Issues and Task Management

Issues in this project will be used to track:

- **User Stories**: Represented as high-level features that the system needs to implement.
- **Tasks**: Actionable work items to implement and fulfill user stories.
- **Bug Fixes**: Any bugs discovered during or after implementation.
- **Tech Stories**: Technical improvements or refactorings that don't directly add to the product’s functionality.
