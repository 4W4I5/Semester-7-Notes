# Parallel vs Distributed Computing
- **Parallel**
	- Requires at least 1+ processors
	- Must have a way to sync processors and cores
	- Only the processors and cores within the computer share the memory
- **Distributed**
	- Networked/Clustered computers
	- Requires media i.e. a connection is required be it a wired or wireless one.
	- Follows Master/Slave model via MPI
	- Memory is shared in cluster

### Communication Media
- **Buses**
	- Hardware
- **Message Passing (MPI)**
	- Software based

### Parallelization
- **Provides**
	- Large problems in same/less time
	- Faster process time for fixed size problems
- **Scale**
	- CMP -> Chip Multi-processor, multiple cores on a single chip
	- Cluster -> Few computers connected together
	- Grid -> Cluster on the internet
	- Cloud -> Also a cluster?

## Why PDC
- **Technology Push**
	- Hardware limitations reached
	- Moore's Law
- **Application Pull**
	- Processing demand increases