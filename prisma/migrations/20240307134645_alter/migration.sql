/*
  Warnings:

  - You are about to drop the column `updatedate` on the `thitipun` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "thitipun" DROP COLUMN "updatedate",
ALTER COLUMN "status" SET DEFAULT 1,
ALTER COLUMN "user" DROP NOT NULL;
