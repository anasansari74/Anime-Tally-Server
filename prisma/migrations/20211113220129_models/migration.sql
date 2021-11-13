-- CreateEnum
CREATE TYPE "SelectedStatus" AS ENUM ('WATCHING', 'PLANTOWATCH', 'DROPPED', 'COMPLETED');

-- CreateTable
CREATE TABLE "ShowStatuses" (
    "id" SERIAL NOT NULL,
    "showId" TEXT NOT NULL,
    "selectedStatus" "SelectedStatus" NOT NULL,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "ShowStatuses_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "FavShows" (
    "id" SERIAL NOT NULL,
    "showId" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "FavShows_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "ShowStatuses" ADD CONSTRAINT "ShowStatuses_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "FavShows" ADD CONSTRAINT "FavShows_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
