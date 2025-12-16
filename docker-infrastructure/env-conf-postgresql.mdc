# PostgreSQL Configuration

## 🚀 PostgreSQL Initialization

### Order of execution of PostgreSQL scripts

PostgreSQL automatically executes scripts in `/docker-entrypoint-initdb.d/` in alphabetical order:

1. **`00_setup.sh`** (postgresql_setup.sh)
   - **User**: `postgres` (superuser)
   - **Tasks**: 
     - Create directories (WAL archive, logs)
     - Configure `pg_hba.conf` for connections
     - Configure performance parameters through `ALTER SYSTEM`
     - Create a startup marker (`[application_name]_setup_completed`)

2. **`01_init_db.sh`** (init_db.sh)
   - **User**: `postgres` (superuser)
   - **Tasks**:
     - Create application database (`[application_name]_dev_db`)
     - Create all PostgreSQL extensions
     - Create security roles
     - Create users with passwords and connection limits

3. **`02_run_migrations.sh`** (run_migrations.sh)
   - **User**: application user
   - **Tasks**: Run SQL migrations

## 🔐 PostgreSQL Roles and Users

### Create PostgreSQL roles

```sql
-- Roles (NOLOGIN groups)
CREATE ROLE [application_name]_admin WITH NOLOGIN NOSUPERUSER NOCREATEDB NOCREATEROLE NOINHERIT NOREPLICATION;
CREATE ROLE [application_name]_app WITH NOLOGIN NOSUPERUSER NOCREATEDB NOCREATEROLE NOINHERIT NOREPLICATION;
CREATE ROLE [application_name]_readonly WITH NOLOGIN NOSUPERUSER NOCREATEDB NOCREATEROLE NOINHERIT NOREPLICATION;
CREATE ROLE [application_name]_backup WITH NOLOGIN NOSUPERUSER NOCREATEDB NOCREATEROLE NOINHERIT NOREPLICATION;
```

### Create PostgreSQL users

```sql
-- Users (LOGIN, inherit roles)
CREATE USER ${ADMIN_USER} WITH LOGIN INHERIT CONNECTION LIMIT 5;
CREATE USER ${APP_USER} WITH LOGIN INHERIT CONNECTION LIMIT 20;  
CREATE USER ${READONLY_USER} WITH LOGIN INHERIT CONNECTION LIMIT 10;
CREATE USER ${BACKUP_USER} WITH LOGIN INHERIT CONNECTION LIMIT 2;

-- Assign roles
GRANT [application_name]_admin TO ${ADMIN_USER};
GRANT [application_name]_app TO ${APP_USER};
GRANT [application_name]_readonly TO ${READONLY_USER};
GRANT [application_name]_backup TO ${BACKUP_USER};
```

## 🛠 PostgreSQL Extensions

All extensions are created by the superuser in `init_db.sh`:

```sql
CREATE EXTENSION IF NOT EXISTS pg_stat_statements;  -- request statistics
CREATE EXTENSION IF NOT EXISTS pg_trgm;            -- search by trigrams
CREATE EXTENSION IF NOT EXISTS btree_gin;          -- additional indexes
CREATE EXTENSION IF NOT EXISTS btree_gist;         -- additional indexes
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";        -- UUID generation
CREATE EXTENSION IF NOT EXISTS pgcrypto;           -- cryptography
```

- **`pg_stat_statements`** - statistics of request performance
- **`pg_trgm`** - search by trigrams for full-text search
- **`btree_gin`**, **`btree_gist`** - additional index types
- **`uuid-ossp`** - UUID generation
- **`pgcrypto`** - cryptographic functions

## ⚙️ PostgreSQL Configuration

### Development (postgresql-dev.conf)

```ini
# Connections and authentication
listen_addresses = '*'
max_connections = 100
password_encryption = scram-sha-256

# Memory
shared_buffers = 256MB
work_mem = 16MB
maintenance_work_mem = 64MB
effective_cache_size = 1GB

# Write-Ahead Log (WAL)
wal_level = logical
max_wal_size = 1GB
min_wal_size = 80MB
wal_buffers = 16MB
checkpoint_timeout = 10min
checkpoint_completion_target = 0.9
synchronous_commit = off

# Background Writer
bgwriter_delay = 200ms
bgwriter_lru_maxpages = 100
bgwriter_lru_multiplier = 2.0

# Asynchronous Behavior
effective_io_concurrency = 200
max_worker_processes = 8
max_parallel_workers_per_gather = 2
max_parallel_workers = 4
max_parallel_maintenance_workers = 2

# Logging (extended for development)
log_destination = 'stderr'
logging_collector = on
log_directory = 'pg_log'
log_filename = 'postgresql-%Y-%m-%d_%H%M%S.log'
log_min_duration_statement = 1000
log_statement = 'all'
log_connections = on
log_disconnections = on
log_checkpoints = on
log_lock_waits = on
log_line_prefix = '%m [%p] %q%u@%d '

# AutoVacuum
autovacuum = on
log_autovacuum_min_duration = 0
autovacuum_max_workers = 3
autovacuum_naptime = 60s
autovacuum_vacuum_threshold = 50
autovacuum_analyze_threshold = 50
autovacuum_vacuum_scale_factor = 0.1
autovacuum_analyze_scale_factor = 0.05

# Default search
default_text_search_config = 'pg_catalog.english'
```

### Production (postgresql-prod.conf)

```ini
# Connections and authentication
listen_addresses = '*'
max_connections = 200
password_encryption = scram-sha-256

# Memory (increased values)
shared_buffers = 1GB
work_mem = 32MB
maintenance_work_mem = 256MB
effective_cache_size = 3GB

# Write-Ahead Log (production settings)
wal_level = replica
max_wal_size = 2GB
min_wal_size = 1GB
wal_buffers = 64MB
checkpoint_timeout = 15min
synchronous_commit = on

# WAL Archiving
archive_mode = on
archive_command = 'test ! -f /var/lib/postgresql/archive/%f && cp %p /var/lib/postgresql/archive/%f'
archive_timeout = 60

# Security
ssl = on
ssl_prefer_server_ciphers = on

# Logging (minimal for performance)
log_statement = 'none'
log_min_duration_statement = 5000
log_connections = off

# AutoVacuum (more aggressive for production)
autovacuum_naptime = 30s
autovacuum_vacuum_scale_factor = 0.05
autovacuum_analyze_scale_factor = 0.025
autovacuum_vacuum_cost_limit = 2000

# Timeouts for production
statement_timeout = 60000
lock_timeout = 10000
idle_in_transaction_session_timeout = 3600000
idle_session_timeout = 7200000
```

## 📋 Environment Variables (real files)

### Development (postgres.development.env)
```env
# PostgreSQL superuser
POSTGRES_DB=postgres
POSTGRES_USER=postgres
POSTGRES_PASSWORD=postgres_dev_superuser_password

# Application database
DB_NAME=[application_name]_dev_db
DB_USER=[application_name]_app_user
DB_PASSWORD=[application_name]_app_password

# Security roles (development values)
ADMIN_USER=[application_name]_admin_user
ADMIN_PASSWORD=[application_name]_admin_password
APP_USER=[application_name]_app_user
APP_PASSWORD=[application_name]_app_password
READONLY_USER=[application_name]_readonly_user
READONLY_PASSWORD=[application_name]_readonly_password
BACKUP_USER=[application_name]_backup_user
BACKUP_PASSWORD=[application_name]_backup_password

# Performance parameters
POSTGRES_SHARED_BUFFERS=256MB
POSTGRES_WORK_MEM=16MB
POSTGRES_MAINTENANCE_WORK_MEM=64MB
POSTGRES_EFFECTIVE_CACHE_SIZE=1GB
```

### Production (postgres.production.env)
```env
# PostgreSQL superuser (from secrets)
POSTGRES_DB=postgres
POSTGRES_USER=postgres
POSTGRES_PASSWORD=${POSTGRES_SUPERUSER_PASSWORD}

# Application database (from secrets)
DB_NAME=${[APPLICATION_NAME]_DB_NAME}
DB_USER=${[APPLICATION_NAME]_APP_USER}
DB_PASSWORD=${[APPLICATION_NAME]_APP_PASSWORD}

# Security roles (secure values)
ADMIN_USER=${[APPLICATION_NAME]_ADMIN_USER}
ADMIN_PASSWORD=${[APPLICATION_NAME]_ADMIN_PASSWORD}
APP_USER=${[APPLICATION_NAME]_APP_USER}
APP_PASSWORD=${[APPLICATION_NAME]_APP_PASSWORD}

# Performance parameters (production values)
POSTGRES_SHARED_BUFFERS=1GB
POSTGRES_WORK_MEM=32MB
POSTGRES_MAINTENANCE_WORK_MEM=256MB
POSTGRES_EFFECTIVE_CACHE_SIZE=3GB
POSTGRES_MAX_CONNECTIONS=200
```

## 🔧 PostgreSQL Commands

### Monitoring and Diagnostics
```sql
-- View roles and users
SELECT rolname, rolcanlogin, rolconnlimit, rolsuper 
FROM pg_roles 
WHERE rolname LIKE '[application_name]_%' 
ORDER BY rolcanlogin, rolname;

-- View active connections
SELECT usename, application_name, client_addr, state 
FROM pg_stat_activity 
WHERE usename LIKE '[application_name]_%';

-- Database sizes
SELECT datname, pg_size_pretty(pg_database_size(datname)) as size
FROM pg_database 
WHERE datname = '[application_name]_dev_db';

-- Top slow requests (requires pg_stat_statements)
SELECT query, calls, total_time, mean_time
FROM pg_stat_statements 
ORDER BY total_time DESC 
LIMIT 10;
```

### Backup and Restore
```bash
# Create dump
docker-compose exec postgres pg_dump -U [application_name]_backup_user [application_name]_dev_db > backup.sql

# Restore
docker-compose exec -i postgres psql -U postgres -d [application_name]_dev_db < backup.sql

# Custom format dump (compressed)
docker-compose exec postgres pg_dump -U [application_name]_backup_user -Fc [application_name]_dev_db > backup.dump

# Restore from custom format
docker-compose exec postgres pg_restore -U postgres -d [application_name]_dev_db backup.dump
```

## 🛠 Fine Tuning

### Memory Settings (rules)
```ini
# Basic memory settings
shared_buffers = 25% of RAM (max 8GB)
work_mem = RAM / max_connections / 4
maintenance_work_mem = RAM / 16
effective_cache_size = 75% of RAM

# For SSD disks
random_page_cost = 1.1
seq_page_cost = 1.0

# For HDD disks  
random_page_cost = 4.0
seq_page_cost = 1.0
```

### WAL Optimization
```ini
# For high write load
wal_buffers = 16MB
checkpoint_completion_target = 0.9
checkpoint_timeout = 15min
max_wal_size = 2GB

# For reliability
synchronous_commit = on
fsync = on
full_page_writes = on
```

### AutoVacuum Tuning
```ini
# Aggressive AutoVacuum for high load
autovacuum_max_workers = number of CPU cores / 2
autovacuum_naptime = 30s
autovacuum_vacuum_scale_factor = 0.05
autovacuum_analyze_scale_factor = 0.025
autovacuum_vacuum_cost_limit = 2000
```

## 📋 Production Checklist

- [ ] SSL certificates configured
- [ ] Passwords changed from development values  
- [ ] pg_hba.conf limited by IP
- [ ] Logging configured for production
- [ ] Monitoring pg_stat_statements configured
- [ ] AutoVacuum optimized for load
- [ ] Backup procedures automated
- [ ] Connection pooling configured
- [ ] Replication configured (if needed)


---
