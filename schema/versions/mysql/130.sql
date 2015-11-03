BEGIN;

CREATE TABLE `ttrss_sphinx_counters` (
	`counter_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`max_doc_id` VARCHAR(255) NULL DEFAULT NULL,
	`max_doc_id_delta` VARCHAR(255) NULL DEFAULT NULL,
	`lastrun_delta` VARCHAR(255) NULL DEFAULT NULL,
	`lastrun_main` VARCHAR(255) NULL DEFAULT NULL,
	PRIMARY KEY (`counter_id`)
)
ENGINE=InnoDB DEFAULT CHARSET=UTF8;

insert into ttrss_sphinx_counters (counter_id) values (1);

UPDATE ttrss_version SET schema_version = 130;

COMMIT;
