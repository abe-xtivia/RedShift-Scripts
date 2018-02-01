-- Create Group
CREATE GROUP admins;

-- Grants usage to group on specific schema
GRANT USAGE on SCHEMA [schemaname] to GROUP admins;

-- Give read-only access of particular schema to group
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA [schemaname] to GROUP admins;
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA [schemaname] to GROUP admins;

--Modify default schema privileges
--Use this initially if the default privileges have not been set for new objects for groups
ALTER DEFAULT PRIVILEGES in SCHEMA [schemaname] GRANT ALL PRIVILEGES on TABLES to GROUP admins;
ALTER DEFAULT PRIVILEGES in SCHEMA admin GRANT ALL PRIVILEGES on FUNCTIONS to GROUP admins;