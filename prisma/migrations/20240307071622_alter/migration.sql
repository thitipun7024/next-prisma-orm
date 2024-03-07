/*
  Warnings:

  - You are about to drop the column `createdate` on the `Post` table. All the data in the column will be lost.
  - You are about to drop the column `email` on the `Post` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `Post` table. All the data in the column will be lost.
  - You are about to drop the column `password` on the `Post` table. All the data in the column will be lost.
  - You are about to drop the column `status` on the `Post` table. All the data in the column will be lost.
  - You are about to drop the column `updatedate` on the `Post` table. All the data in the column will be lost.
  - You are about to drop the column `user` on the `Post` table. All the data in the column will be lost.
  - Added the required column `title` to the `Post` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "Post_email_key";

-- AlterTable
ALTER TABLE "Post" DROP COLUMN "createdate",
DROP COLUMN "email",
DROP COLUMN "name",
DROP COLUMN "password",
DROP COLUMN "status",
DROP COLUMN "updatedate",
DROP COLUMN "user",
ADD COLUMN     "content" TEXT,
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "title" TEXT NOT NULL;
