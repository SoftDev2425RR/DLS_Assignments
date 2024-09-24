# Chemical Warehouse Project | Assignment 3

## Project Overview

The **Chemical Warehouse Project** is designed to manage the storage and auditing of chemical shipments. This system tracks shipments arriving at the depot, verifies available capacity, and records where chemicals are stored. Additionally, the system provides auditing capabilities to log and review the movement and storage of chemicals.

## Technologies

- NodeJS
- TypeScript
- Express Server
- Testing with Jest + Supertest, Artillery for Load Testing
- Mocking via Jest
- Static Code Analysis with ESLint [link](https://blog.logrocket.com/linting-typescript-eslint-prettier/)

## Purpose

This project is developed as part of a GitHub Projects & Issues assignment to manage the project using a Scrum process. Our goal is to implement core functionalities that manage chemical warehouse operations while practicing branching, automation, and team collaboration.

## Project Board and Issue Tracking

We will use the **GitHub Project Board** to manage and track the progress of tasks and user stories through their life cycle. The project board will follow the Scrum framework, where the main focus will be on:

- **User Stories**: High-level descriptions of the functionality that we aim to implement. Each user story will be broken down into smaller tasks.
- **Tasks**: Specific, actionable steps required to complete each user story.

### Using the Project Board

We will use the following procedure to manage issues:

1. **Creating User Stories**: Each user story will be added as an issue with a detailed description of the functionality.
2. **Breaking Down into Tasks**: User stories will be split into individual tasks using checklists or sub-issues to track progress.
3. **Labels and Estimation**: We will use custom labels to categorize issues and tasks. For example:
   - `User Story`: Marks issues that represent user stories.
   - `Task`: Marks issues that represent individual tasks.
   - `Bug`: Marks issues for any discovered bugs.
   - `Enhancement`: For improvements beyond the initial scope.

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

## Issues and Task Management

Issues in this project will be used to track:

- **User Stories**: Represented as high-level features that the system needs to implement.
- **Tasks**: Actionable work items to implement and fulfill user stories.
- **Bug Fixes**: Any bugs discovered during or after implementation.
- **Tech Stories**: Technical improvements or refactorings that don't directly add to the product’s functionality.

## User Stories

### 1. Lorry Arrival at the Gate

- A lorry arrives at the gate, and the driver presents a ticket with shipment details.
- If there is enough capacity in the depot, the shipment is accepted, and a job is created specifying where the chemicals will be stored.

### 2. Auditing Information

- The system provides auditing information regarding the storage and movement of chemicals.
- It tracks all storage locations and logs the movement of chemicals throughout the depot.
