/*
  Warnings:

  - Added the required column `updatedAt` to the `ecosystem` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_ecosystem" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "slug" TEXT NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL
);
INSERT INTO "new_ecosystem" ("content", "id", "slug", "status", "title") SELECT "content", "id", "slug", "status", "title" FROM "ecosystem";
DROP TABLE "ecosystem";
ALTER TABLE "new_ecosystem" RENAME TO "ecosystem";
CREATE UNIQUE INDEX "ecosystem_slug_key" ON "ecosystem"("slug");
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
