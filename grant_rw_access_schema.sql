-- Grants usage to group on specific schema
grant usage on schema [schemaname] to group [groupname];
-- Grants Select, Update and Delete priviledges on this schema to specified group
grant select ON ALL TABLES IN SCHEMA [schemaname] to group [groupname];
grant update ON ALL TABLES IN SCHEMA [schemaname] to group [groupname];
grant delete ON ALL TABLES IN SCHEMA [schemaname] to group [groupname];
