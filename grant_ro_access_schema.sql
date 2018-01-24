--** USER PERMISSIONS **--

-- Give access to particular schema to user
GRANT USAGE on SCHEMA [schemaname] to [username];

--Modify default schema privileges
--Use this initially if the default privileges have not been set for new objects for users
ALTER DEFAULT PRIVILEGES in SCHEMA [schemaname] GRANT ALL PRIVILEGES on TABLES to [username];

-- Give read-only access of particular schema to user
GRANT SELECT ON ALL TABLES IN SCHEMA [schemaname] to [username];
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA [schemaname] to [username];

-- Give read-only access for particular table to user
GRANT SELECT ON [schemaname].[tablename] to [username];

--** GROUP PERMISSIONS **--

-- Give access for particular schema to group
GRANT USAGE on SCHEMA [schemaname] to GROUP [groupname];

--Modify default schema privileges
--Use this initially if the default privileges have not been set for new objects for groups
ALTER DEFAULT PRIVILEGES in SCHEMA [schemaname] GRANT SELECT on TABLES to GROUP [groupname];

-- Give read-only access of particular schema to group
GRANT SELECT ON ALL TABLES IN SCHEMA [schemaname] to GROUP [groupname];
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA [schemaname] to GROUP [groupname];

-- Give read-only access for particular table to group
GRANT SELECT ON [schemaname].[tablename] to GROUP [groupname];