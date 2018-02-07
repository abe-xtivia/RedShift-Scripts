-- Create Group
CREATE GROUP admins;

-- Grants usage to group on specific schema
GRANT USAGE on SCHEMA [schemaname] to GROUP admins;

-- Grants Create on database for admin group (enables creation of schemas)
GRANT CREATE on DATABASE [database] TO GROUP admins;

-- Give all access of particular schema to group
GRANT ALL ON SCHEMA [schemaname] to GROUP admins;

--Modify default schema privileges
--Use this initially if the default privileges have not been set for new objects for groups
ALTER DEFAULT PRIVILEGES in SCHEMA [schemaname] GRANT ALL PRIVILEGES on TABLES to GROUP admins;
ALTER DEFAULT PRIVILEGES in SCHEMA admin GRANT ALL PRIVILEGES on FUNCTIONS to GROUP admins;