-- CreateTable
CREATE TABLE "thitipun" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "content" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "thitipun_pkey" PRIMARY KEY ("id")
);
