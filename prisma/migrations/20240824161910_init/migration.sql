-- CreateTable
CREATE TABLE `Clients` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `pfp` VARCHAR(191) NOT NULL,
    `cpf` VARCHAR(191) NOT NULL,
    `birth` DATETIME(3) NOT NULL,

    UNIQUE INDEX `Clients_email_key`(`email`),
    UNIQUE INDEX `Clients_pfp_key`(`pfp`),
    UNIQUE INDEX `Clients_cpf_key`(`cpf`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Address` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `cep` INTEGER NOT NULL,
    `city` VARCHAR(191) NOT NULL,
    `street` VARCHAR(191) NOT NULL,
    `state` VARCHAR(191) NOT NULL,
    `number` INTEGER NOT NULL,
    `neighborhood` VARCHAR(191) NOT NULL,
    `clientsId` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Address` ADD CONSTRAINT `Address_clientsId_fkey` FOREIGN KEY (`clientsId`) REFERENCES `Clients`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
