/*
  Warnings:

  - You are about to drop the column `content` on the `thitipun` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `thitipun` table. All the data in the column will be lost.
  - You are about to drop the column `title` on the `thitipun` table. All the data in the column will be lost.
  - Added the required column `status` to the `thitipun` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedate` to the `thitipun` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user` to the `thitipun` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "thitipun" DROP COLUMN "content",
DROP COLUMN "createdAt",
DROP COLUMN "title",
ADD COLUMN     "creatdate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "email" TEXT,
ADD COLUMN     "name" TEXT,
ADD COLUMN     "password" TEXT,
ADD COLUMN     "status" INTEGER NOT NULL,
ADD COLUMN     "updatedate" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "user" TEXT NOT NULL;
