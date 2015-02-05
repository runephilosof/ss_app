	/* No constraints are defined on object 'dbo.schema_migrations', or you do not have permissions. */
	/* No foreign keys reference table 'dbo.schema_migrations', or you do not have permissions on referencing tables. */
	/* No views with schema binding reference table 'dbo.schema_migrations'. */

CREATE TABLE dbo.schema_migrations
	( version nvarchar(4000)  NOT NULL
	)

CREATE unique nonclustered INDEX unique_schema_migrations on dbo.schema_migrations(version)

	/* No foreign keys reference table 'dbo.users', or you do not have permissions on referencing tables. */
	/* No views with schema binding reference table 'dbo.users'. */

CREATE TABLE dbo.users
	( id         int             NOT NULL
	, email      nvarchar(4000)      NULL
	, name       nvarchar(4000)      NULL
	, created_at datetime        NOT NULL
	, updated_at datetime        NOT NULL
	)

ALTER TABLE dbo.users ADD CONSTRAINT PK__users__3213E83FC2BE8309 PRIMARY KEY clustered (id)

INSERT INTO schema_migrations (version) VALUES ('20150202011847');

