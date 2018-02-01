--** USER PERMISSIONS **--

-- Grants usage to user on specific schema
GRANT USAGE on SCHEMA [schemaname] to [username];

--Modify default schema privileges
--Use this initially if the default privileges have not been set for new objects for users
ALTER DEFAULT PRIVILEGES in SCHEMA [schemaname] GRANT ALL PRIVILEGES on TABLES to [username];

-- Grants Full Access privileges on this schema to specified user
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA [schemaname] to [username];
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA [schemaname] to [username];

-- Give Full Access for particular table to user
GRANT SELECT, UPDATE, INSERT, DELETE ON [schemaname].[tablename] to [username];


--** GROUP PERMISSIONS **--

-- Grants usage to group on specific schema
GRANT USAGE on SCHEMA [schemaname] to GROUP [groupname];

--Modify default schema privileges
--Use this initially if the default privileges have not been set for new objects for groups
ALTER DEFAULT PRIVILEGES in SCHEMA [schemaname] GRANT ALL PRIVILEGES on TABLES to GROUP [groupname];

-- Give read-only access of particular schema to group
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA [schemaname] to GROUP [groupname];
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA [schemaname] to GROUP [groupname];

-- Give Full Access for particular table to group
GRANT SELECT, UPDATE, INSERT, DELETE ON [schemaname].[tablename] to GROUP [groupname];