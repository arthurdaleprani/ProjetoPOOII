-- CreateTable
CREATE TABLE "Bebe" (
    "idBebe" TEXT NOT NULL PRIMARY KEY,
    "nome" TEXT NOT NULL,
    "dataNasc" TEXT NOT NULL,
    "pesoNasc" TEXT NOT NULL,
    "nomeMae" TEXT NOT NULL,
    "altura" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Medico" (
    "idMed" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "idBebe" TEXT NOT NULL,
    "crm" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "endereco" TEXT NOT NULL,
    "especialidade" TEXT NOT NULL,
    "telefone" TEXT NOT NULL,
    CONSTRAINT "Medico_idBebe_fkey" FOREIGN KEY ("idBebe") REFERENCES "Bebe" ("idBebe") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Mae" (
    "idMed" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "idBebe" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "endereco" TEXT NOT NULL,
    "telefone" TEXT NOT NULL,
    "dataNasc" TEXT NOT NULL,
    CONSTRAINT "Mae_idBebe_fkey" FOREIGN KEY ("idBebe") REFERENCES "Bebe" ("idBebe") ON DELETE RESTRICT ON UPDATE CASCADE
);
