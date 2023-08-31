-- CreateTable
CREATE TABLE "Medico" (
    "idMed" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "crm" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "endereco" TEXT NOT NULL,
    "especialidade" TEXT NOT NULL,
    "telefone" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Mae" (
    "idMae" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "endereco" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "telefone" TEXT NOT NULL,
    "dataNasc" DATETIME NOT NULL
);

-- CreateTable
CREATE TABLE "Bebe" (
    "idBebe" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "idMed" INTEGER NOT NULL,
    "idMae" INTEGER NOT NULL,
    "nome" TEXT NOT NULL,
    "dataNasc" TEXT NOT NULL,
    "pesoNasc" TEXT NOT NULL,
    "nomeMae" TEXT NOT NULL,
    "altura" TEXT NOT NULL,
    CONSTRAINT "Bebe_idMed_fkey" FOREIGN KEY ("idMed") REFERENCES "Medico" ("idMed") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Bebe_idMae_fkey" FOREIGN KEY ("idMae") REFERENCES "Mae" ("idMae") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "Medico_crm_key" ON "Medico"("crm");
