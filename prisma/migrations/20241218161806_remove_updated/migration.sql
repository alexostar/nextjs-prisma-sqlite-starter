/*
  Warnings:

  - You are about to drop the column `updatedAt` on the `ecosystem` table. All the data in the column will be lost.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_ecosystem" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "id2" INTEGER NOT NULL,
    "title" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "slug" TEXT NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO "new_ecosystem" ("content", "createdAt", "id", "id2", "slug", "status", "title") SELECT "content", "createdAt", "id", "id2", "slug", "status", "title" FROM "ecosystem";
DROP TABLE "ecosystem";
ALTER TABLE "new_ecosystem" RENAME TO "ecosystem";
CREATE UNIQUE INDEX "ecosystem_slug_key" ON "ecosystem"("slug");
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
