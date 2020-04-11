# docker-tools

Docker-Tools is part of the SrvAdm Project

# Usage

**Imapsync**

```bash
docker run --rm srvadm/tools:imapsync                                                   \
  –-host1 server1.example.com –-user1 mail@example.com –-passfile1 file_with_password1  \
  –-host2 server2.example.com –-user2 mail@example.com –-passfile2 file_with_password2
```

**passwd**

The -s switch is always given

```bash
docker run --rm srvadm/tools:pwgen
```
corresponds
```bash
pwgen -s -c -n -1 16
```
and

```bash
docker run --rm srvadm/tools:pwgen -c 10
```
corresponds
```bash
pwgen -s -c 10
```
