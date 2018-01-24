-- Creates user in specified group
CREATE USER [username] with password '[password]';

-- Create Group
CREATE GROUP [groupname]

-- optionally add the user to a group
ALTER GROUP [groupname]
ADD USER [username];
