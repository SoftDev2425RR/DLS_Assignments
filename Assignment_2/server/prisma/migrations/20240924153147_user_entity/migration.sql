/*
  Warnings:

  - You are about to drop the `Tasks` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TasksLists` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Users` table. If the table is not empty, all the data it contains will be lost.

*/
-- CreateEnum
CREATE TYPE "Validation" AS ENUM ('ACCEPTED', 'REJECTED', 'PENDING');

-- CreateEnum
CREATE TYPE "JobType" AS ENUM ('DELIVERY', 'COLLECTION');

-- CreateEnum
CREATE TYPE "JobStatus" AS ENUM ('PENDING', 'IN_PROGRESS', 'COMPLETED');

-- DropForeignKey
ALTER TABLE "Tasks" DROP CONSTRAINT "Tasks_tasksListId_fkey";

-- DropForeignKey
ALTER TABLE "Tasks" DROP CONSTRAINT "Tasks_userId_fkey";

-- DropForeignKey
ALTER TABLE "TasksLists" DROP CONSTRAINT "TasksLists_userId_fkey";

-- DropTable
DROP TABLE "Tasks";

-- DropTable
DROP TABLE "TasksLists";

-- DropTable
DROP TABLE "Users";

-- DropEnum
DROP TYPE "TaskStatus";

-- CreateTable
CREATE TABLE "Ticket" (
    "id" TEXT NOT NULL,
    "driverName" TEXT NOT NULL,
    "companyName" TEXT NOT NULL,
    "chemical" TEXT NOT NULL,
    "valid" "Validation" NOT NULL DEFAULT 'PENDING',
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Ticket_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Job" (
    "id" TEXT NOT NULL,
    "ticketId" TEXT NOT NULL,
    "storageLocation" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "jobType" "JobType" NOT NULL,
    "jobStatus" "JobStatus" NOT NULL DEFAULT 'PENDING',

    CONSTRAINT "Job_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "Ticket_id_idx" ON "Ticket"("id");

-- AddForeignKey
ALTER TABLE "Job" ADD CONSTRAINT "Job_ticketId_fkey" FOREIGN KEY ("ticketId") REFERENCES "Ticket"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
