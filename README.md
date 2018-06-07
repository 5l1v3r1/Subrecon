# Subrecon
Subrecon is a subdomain discovery tool with example wordlists.

### Subdomain Discovery Tool
Tool to return a list of subdomains found via. brute forcing with a wordlist.

Future developments:
- Recursive scanning for discovered subdomains i.e. `*.discovered_subdomain.domain.com`
- Python port

#### Usage

`$ sh dns-recon.sh [ example.com ] [ wordlist_file.txt ]`

#### Example usage and output

`$ sh dns-recon.sh ns.agency.com wordlist-mostpop-10000.txt`

`-- add output screenshot here--`

### Subdomain Wordlists
There are multiple wordlists for all purposes.

The idea is to create several wordlists that they can be used on a case-by-case basis. For example, a Government-specific subdomain wordlist for Government websites i.e. "edu.gov" or "health.gov".

#### mostpop-10000.txt
10,000 "most popular" subdomains on the internet.
