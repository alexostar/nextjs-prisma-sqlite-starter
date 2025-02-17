-- CreateTable
CREATE TABLE "EventoEvent" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "slug" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "date" DATETIME NOT NULL,
    "organizerName" TEXT NOT NULL,
    "imageUrl" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL
);

-- CreateTable
CREATE TABLE "ecosystem" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "slug" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "EventoEvent_slug_key" ON "EventoEvent"("slug");

-- CreateIndex
CREATE UNIQUE INDEX "ecosystem_slug_key" ON "ecosystem"("slug");
