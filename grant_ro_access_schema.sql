-- Grants usage to group on specific schema
grant usage on schema [schemaname] to group [groupname];
-- Grants only select priviledge to all tables in schema to this group
grant select ON ALL TABLES IN SCHEMA [schemaname] to group [groupname];
