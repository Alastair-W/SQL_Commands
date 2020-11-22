-- find all clients (first and last name) billing anounts and charegd data
select clients.first_name, clients.last_name, billing.amount, billing.charged_datetime
from clients
join billing on clients.id = billing.clients_id;

-- list all domain names and leads (first and last name) for each site
select sites.domain_name, leads.first_name, leads.last_name
from sites
join leads on sites.id = leads.sites_id; 

-- get client names, domain names and first names of leads generated from sites
select clients.first_name AS client_first_name, clients.last_name, sites.domain_name, leads.first_name AS leads_first_name
from clients
join sites on clients.id = sites.clients_id
join leads on sites.id = leads.sites_id;

-- list all clients and sites each client has, even if client hasn't landed a site yet
-- adding a new client that has no site first (john doe)
insert into clients (first_name, last_name, email, joined_datetime)
values ('John', 'Doe', 'johndoe@her.com', NOW());
select clients.first_name, clients.last_name, sites.domain_name
from clients
left join sites on clients.id = sites.clients_id;
-- right join would be 'from sites' and would show any sites that exist that don't belong to a client

-- find all clients (first and last name) and their total billing amount
select clients.first_name, clients.last_name, sum(billing.amount) AS total, avg(billing.amount) AS average
from clients
join billing on clients.id = billing.clients_id
group by clients.id;

-- list all the domain names associated with each client
select  group_concat(' ', sites.domain_name) as domains, clients.first_name, clients.last_name
from clients
join sites on clients.id = sites.clients_id
group by clients.id;

-- find the total number of leads for each site
select count(leads.id) as num_of_leads, sites.domain_name
from sites
join leads ON sites.id = leads.sites_id
group by sites.id;

-- when grouping records if you want to show a column that displays how many records were grouped use 'count(*)'

select * from sites;
select * from clients;
