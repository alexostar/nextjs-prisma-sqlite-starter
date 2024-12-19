/*
  Warnings:

  - Added the required column `id2` to the `ecosystem` table without a default value. This is not possible if the table is not empty.

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
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL
);
INSERT INTO "new_ecosystem" ("content", "createdAt", "id", "slug", "status", "title", "updatedAt") SELECT "content", "createdAt", "id", "slug", "status", "title", "updatedAt" FROM "ecosystem";
DROP TABLE "ecosystem";
ALTER TABLE "new_ecosystem" RENAME TO "ecosystem";
CREATE UNIQUE INDEX "ecosystem_slug_key" ON "ecosystem"("slug");
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
