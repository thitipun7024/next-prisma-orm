/*
  Warnings:

  - You are about to drop the column `category` on the `Post` table. All the data in the column will be lost.
  - You are about to drop the column `content` on the `Post` table. All the data in the column will be lost.
  - You are about to drop the column `test` on the `Post` table. All the data in the column will be lost.
  - You are about to drop the column `title` on the `Post` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[email]` on the table `Post` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `createdate` to the `Post` table without a default value. This is not possible if the table is not empty.
  - Added the required column `email` to the `Post` table without a default value. This is not possible if the table is not empty.
  - Added the required column `status` to the `Post` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedate` to the `Post` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Post" DROP COLUMN "category",
DROP COLUMN "content",
DROP COLUMN "test",
DROP COLUMN "title",
ADD COLUMN     "createdate" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "email" TEXT NOT NULL,
ADD COLUMN     "name" TEXT,
ADD COLUMN     "password" TEXT,
ADD COLUMN     "status" INTEGER NOT NULL,
ADD COLUMN     "updatedate" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "user" TEXT;

-- CreateIndex
CREATE UNIQUE INDEX "Post_email_key" ON "Post"("email");
