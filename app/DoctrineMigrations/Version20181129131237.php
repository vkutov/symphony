<?php

namespace Application\Migrations;

use Doctrine\DBAL\Migrations\AbstractMigration;
use Doctrine\DBAL\Schema\Schema;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
class Version20181129131237 extends AbstractMigration
{
    /**
     * @param Schema $schema
     * @throws \Doctrine\DBAL\Migrations\AbortMigrationException
     */
    public function up(Schema $schema)
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE cars (id INT AUTO_INCREMENT NOT NULL, make VARCHAR(255) NOT NULL, model VARCHAR(255) NOT NULL, travelledDistance BIGINT NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE cars_parts (car_id INT NOT NULL, part_id INT NOT NULL, INDEX IDX_F30DF478C3C6F69F (car_id), INDEX IDX_F30DF4784CE34BEC (part_id), PRIMARY KEY(car_id, part_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE customers (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, birtDate DATE NOT NULL, isYoungDriver TINYINT(1) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE parts (id INT AUTO_INCREMENT NOT NULL, supplier_id INT DEFAULT NULL, name VARCHAR(255) NOT NULL, price NUMERIC(10, 2) NOT NULL, quantity INT NOT NULL, INDEX IDX_6940A7FE2ADD6D8C (supplier_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE parts_cars (part_id INT NOT NULL, car_id INT NOT NULL, INDEX IDX_2BFFFFA14CE34BEC (part_id), INDEX IDX_2BFFFFA1C3C6F69F (car_id), PRIMARY KEY(part_id, car_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE sales (id INT AUTO_INCREMENT NOT NULL, car_id INT DEFAULT NULL, customer_id INT DEFAULT NULL, discount DOUBLE PRECISION NOT NULL, UNIQUE INDEX UNIQ_6B817044C3C6F69F (car_id), INDEX IDX_6B8170449395C3F3 (customer_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE suppliers (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, isImporter TINYINT(1) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('ALTER TABLE cars_parts ADD CONSTRAINT FK_F30DF478C3C6F69F FOREIGN KEY (car_id) REFERENCES cars (id)');
        $this->addSql('ALTER TABLE cars_parts ADD CONSTRAINT FK_F30DF4784CE34BEC FOREIGN KEY (part_id) REFERENCES parts (id)');
        $this->addSql('ALTER TABLE parts ADD CONSTRAINT FK_6940A7FE2ADD6D8C FOREIGN KEY (supplier_id) REFERENCES suppliers (id)');
        $this->addSql('ALTER TABLE parts_cars ADD CONSTRAINT FK_2BFFFFA14CE34BEC FOREIGN KEY (part_id) REFERENCES parts (id)');
        $this->addSql('ALTER TABLE parts_cars ADD CONSTRAINT FK_2BFFFFA1C3C6F69F FOREIGN KEY (car_id) REFERENCES cars (id)');
        $this->addSql('ALTER TABLE sales ADD CONSTRAINT FK_6B817044C3C6F69F FOREIGN KEY (car_id) REFERENCES cars (id)');
        $this->addSql('ALTER TABLE sales ADD CONSTRAINT FK_6B8170449395C3F3 FOREIGN KEY (customer_id) REFERENCES customers (id)');
    }

    /**
     * @param Schema $schema
     * @throws \Doctrine\DBAL\Migrations\AbortMigrationException
     */
    public function down(Schema $schema)
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE cars_parts DROP FOREIGN KEY FK_F30DF478C3C6F69F');
        $this->addSql('ALTER TABLE parts_cars DROP FOREIGN KEY FK_2BFFFFA1C3C6F69F');
        $this->addSql('ALTER TABLE sales DROP FOREIGN KEY FK_6B817044C3C6F69F');
        $this->addSql('ALTER TABLE sales DROP FOREIGN KEY FK_6B8170449395C3F3');
        $this->addSql('ALTER TABLE cars_parts DROP FOREIGN KEY FK_F30DF4784CE34BEC');
        $this->addSql('ALTER TABLE parts_cars DROP FOREIGN KEY FK_2BFFFFA14CE34BEC');
        $this->addSql('ALTER TABLE parts DROP FOREIGN KEY FK_6940A7FE2ADD6D8C');
        $this->addSql('DROP TABLE cars');
        $this->addSql('DROP TABLE cars_parts');
        $this->addSql('DROP TABLE customers');
        $this->addSql('DROP TABLE parts');
        $this->addSql('DROP TABLE parts_cars');
        $this->addSql('DROP TABLE sales');
        $this->addSql('DROP TABLE suppliers');
    }
}
