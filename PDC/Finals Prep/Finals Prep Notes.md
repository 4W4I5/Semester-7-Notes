| Lecture<br>Number | Chapter<br>Name        | Status             |
| ----------------- | ---------------------- | ------------------ |
| 2                 | PDC Overview           | :white_check_mark: |
| 3                 | Parallel Architectures | :white_check_mark: |
| 4                 | Beowulf Cluster        | :warning:          |
| 5                 | Basic MPI              | :white_check_mark: |
| 6                 | Advanced MPI           | :white_check_mark: |
| 7.1               | OpenMP                 | :white_check_mark: |
| 7.2               | OpenCL                 | :warning:          |
| 8                 | Performance Analysis   | :white_check_mark: |
| 9                 | Dependency Analysis    | :white_check_mark: |
| 10                | Zettabytes of Data     | :white_check_mark: |
| 11                | Hadoop Intro           | :white_check_mark: |
| 12                | Hadoop Map Reduce      | :warning:          |

> [!WARNING]
> MATHJAX does not render on github mobile, view the notes for lecture 8 on the browser to see the formulae
> Chapters 9, 12 are low-effort notes. Did not bother much with clear formatting

---

# **2. Parallel and Distributed Computing (PDC) Overview**

## **Introduction to Parallel and Distributed Computing**
- ### **Parallel Computing**
	- Parallel computing involves performing multiple calculations or processes simultaneously, often using multiple cores or processors. It’s widely used in tasks requiring high performance, such as simulations or large-scale data processing.
	- Can use:
		- **Shared Memory**: All cores share a single global memory. This setup requires synchronization techniques to prevent data races.
		- **Distributed Memory**: Each process or node has its own local memory. Communication between nodes is typically achieved through message-passing interfaces (MPI). Non-Uniform Memory Access (NUMA) allows processes to share memory but with different access times depending on the node's location.
- ### **Distributed Computing**
	- Distributed computing involves connecting multiple independent computers to work on a common task, communicating over a network using message-passing. It is often used in systems like clusters, grids, and cloud computing.

## **Examples of Parallel and Distributed Systems**

| **System Type**                 | **Description**                                                                  | **Examples**                                         |
| ------------------------------- | -------------------------------------------------------------------------------- | ---------------------------------------------------- |
| **Chip Multi-Processors (CMP)** | Multiple cores on a single chip, all sharing the same memory space.              | Intel’s Core-i7, AMD Ryzen.                          |
| **Clusters**                    | Loosely coupled systems, typically in a local network, working on a common task. | High-performance computing clusters (e.g., Beowulf). |
| **Grids**                       | Geographically distributed systems working together on large tasks.              | SETI@home, Large Hadron Collider Computing Grid.     |
| **Cloud Computing**             | Distributed computing over the internet with scalable resources.                 | Amazon Web Services (AWS), Google Cloud.             |

## **Differences Between Parallel and Distributed Computing**

| **Aspect**              | **Parallel Computing**                                                             | **Distributed Computing**                                                          |
| ----------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| **Definition**          | Multiple processors or cores working simultaneously on a shared problem.           | Multiple independent systems working together to solve a common problem.           |
| **System Architecture** | Single system with multiple processors or cores.                                   | Multiple autonomous systems connected via a network.                               |
| **Communication**       | Typically shared memory or high-speed interconnects.                               | Communicates over a network, often using message passing (e.g., MPI).              |
| **Resource Location**   | Resources (CPUs, memory) are co-located, usually within the same machine.          | Resources are geographically dispersed across different systems.                   |
| **Failure Handling**    | Failure in one processor may halt the entire process.                              | Systems can continue working even if one node fails (fault-tolerant).              |
| **Scalability**         | Limited by the number of cores/processors within a single machine.                 | High scalability; more nodes can be added to the network.                          |
| **Synchronization**     | Requires tight synchronization between processors.                                 | Looser synchronization; tasks may execute asynchronously.                          |
| **Use Cases**           | High-performance computing tasks like scientific simulations, matrix calculations. | Large-scale systems like cloud computing, web services, and distributed databases. |
| **Data Sharing**        | Shared memory model, making data access faster and easier to coordinate.           | Distributed memory model, with data being transferred between nodes.               |
| **Latency**             | Low latency due to proximity of processors and shared memory.                      | Higher latency due to network communication delays.                                |

## **Why use PDC**

| **Aspect**            | **Parallel Computing**                                                    | **Distributed Computing**                               |
| --------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------- |
| **Technology Push**   | Advances in hardware (e.g., multi-core processors) enable parallelism.    | Distributed systems enable more fault tolerance.        |
| **Applications Pull** | Applications like simulations, AI, and big data need faster computations. | Distributed computing scales easily with growing needs. |

## **Challenges in Single-Core Processors**
- **Moore’s Law**: Moore's Law predicted that the number of transistors on a chip would double approximately every 18 months. However, physical limitations like heat dissipation and power consumption are slowing this down.
	- **Implicit Parallelism**: Hidden from the programmer
		- Execution Pipelines, Multiple-Functional Units
	- **Explicit Parallelism**:
		- VLIW, More Execution units
- **Power Consumption**: As clock speeds increase, power consumption grows exponentially, making it unsustainable.
- **Heat Dissipation**: Higher clock speeds generate more heat, leading to challenges in cooling processors.
- **Smaller Size of Transistors**: Harder to fabricate thinner and thinner process nodes (The thinner the nodes can be the denser they can be packed)
- **Limited Memory Size**: Each core has limited internal memory, scales in MBs. Expensive to manufacture but grants very high speed
- **Limits of Single-Core Processors**: Due to these limitations, single-core processors are unable to scale in performance as they once did, leading to the rise of multi-core processors.

## **Multi-Core and Many-Core Processors**

| **Aspect**              | **Multi-Core**                                                                                                                 | **Many-Core**                                                                               |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------- |
| **Introduction**        | Multi-core processors integrate multiple cores on a single chip, allowing for simultaneous execution of multiple instructions. | Many-core processors extend this to a much larger number of cores, typically found in GPUs. |
| **Benefits**            | Increases processing power without increasing clock speed. More efficient power use.                                           | High parallelism for specific tasks, such as graphics rendering.                            |
| **Examples**            | Intel’s multi-core processors, AMD’s Ryzen.                                                                                    | GPUs like NVIDIA CUDA cores, AMD Radeon cores.                                              |
| **The New Moore's Law** | Performance scaling by adding cores rather than increasing clock speed.                                                        | Many-core processors follow a similar trend.                                                |

## **Parallelization Strategy**
> [!NOTE]
> Pu, PRTN/DECOMP, Asgnmt, orch, map
- ### **1. Problem Understanding**
	- **Analyze Serial Code**: Understand the structure and logic of the existing serial program.
	- **Assess Parallelization Suitability**: Evaluate task dependencies, communication needs, and synchronization requirements.
	    - **Code Dependencies**: Identify task dependencies.
	    - **Communication Requirements**: Understand task communication needs.
	    - **Synchronization Needs**: Determine where synchronization is required.
	- **Identify Hotspots**: Focus on parallelizing performance-critical sections.
	    - **Profiling Tools**: Use profiling tools to identify bottlenecks and high CPU usage areas.
	    - **Solution for Bottlenecks**: Optimize slow sections, such as I/O, by restructuring or using alternative algorithms.
- ### **2. Partitioning/Decomposition**
	- Once the problem is well understood, the next step is to break it down into smaller tasks that can be executed simultaneously. This involves **partitioning** the data or the functionality.
	- #### **2.1. Decomposition Types**
		- **Decomposition Granularity**:
			- Refers to the size of the tasks created during decomposition.
			- Two types of granularity:
				- **Fine-Grained Tasks**:
				    - Large number of small tasks.
				    - Frequent communication between tasks.
			    - **Coarse-Grained Tasks**:
				      - Small number of large tasks.
			      - Less frequent communication, leading to reduced overhead but requiring careful load balancing.
		- **Decomposition Methods**:
			- **Domain Decomposition**:
				- Divides data across processors.
				- Each processor works on its own subset of the data.
			- **Use cases**: Simulations, matrix operations, etc.
		- **Functional Decomposition**:
			- Divides the problem based on different functions or stages of computation.
			- Each processor handles a different task or stage.
			- **Use cases**: Pipeline architectures, ecosystem modeling.
	- #### **2.2. Granularity**
		- **Granularity Types**:
			- **Fine-Grained Parallelism**:
				- Small amounts of work between communication events.
				- High load balancing potential.
				- **Advantages**:
					- Good load balancing.
				- **Disadvantages**:
					- High communication overhead can negate performance benefits.
			- **Coarse-Grained Parallelism**:
				- Large amounts of work between communication/synchronization events.
				- Infrequent communication, which results in lower overhead.
				- **Advantages**:
					- Lower communication overhead.
				- **Disadvantages**:
				    - Harder to efficiently balance the load across processors.
		- **Choosing Granularity**:
			- In most cases, **coarse-grained parallelism** is preferred because it reduces overhead from communication and synchronization.
			- **Fine-grained parallelism** can help with load balancing but may result in high communication overhead, which could outweigh the computational benefits.
- ### **3. Assignment**
    - After partitioning the problem, the next step is to assign tasks to processors. Proper task assignment is crucial for achieving efficient parallel execution.
    - #### **3.1. Task Assignment Approaches**
	    - **Static Assignment**:
	        - Tasks are assigned to processors at the beginning of execution and remain fixed throughout.
	        - **Advantages**: Low scheduling overhead.
	        - **Disadvantages**: Not flexible for dynamic workloads.
	    - **Dynamic Assignment**:
	        - Tasks are assigned dynamically as processors become available.
	        - **Advantages**: Adaptable to changes in workload and processor availability.
	        - **Disadvantages**: Higher scheduling overhead.
	- #### **3.2. Considerations for Assignment**
	    - **Load Balancing**: Distribute the tasks so that all processors have roughly equal work to avoid idle processors.
	    - **Uniform Communication**: Try to balance communication between tasks to avoid bottlenecks.
	    - **Ease of Synchronization**: Minimize the need for complex synchronization to avoid delays.
- ### **4. Orchestration**
    - Orchestration involves managing how tasks communicate, synchronize, and execute in parallel.
	- #### **4.1. Communication and Synchronization**
	    - **Inter-task Communication**:
	        - Tasks often need to share information.
	        - Methods: Shared memory (in shared memory systems) or message passing (in distributed systems).
	        - **Examples**: Message Passing Interface (MPI), shared memory models.
	    - **Synchronization**:
	        - Ensuring that tasks are properly coordinated so they work on the correct data at the right time.
	        - **Examples**: Barriers, locks, semaphores.
	    - **Barriers**: Force all tasks to reach a certain point before any can proceed, useful in phases of computation.
	    - **Locks/Semaphores**: Control access to shared resources in parallel systems to prevent data races; excessive locking can create bottlenecks.
- ### **5. Mapping**
    - Mapping refers to assigning tasks to the specific hardware resources they will run on, considering the architecture of the system.
	- #### **5.1. Task-to-Processor Mapping**
	    - **Affinity-Based Mapping**:
	        - Tasks are mapped to processors based on their data affinity, ensuring tasks are close to the data they need to access, reducing memory access times.
	        - **Use Cases**: NUMA systems where data locality impacts performance.
	    - **Task Clustering**:
	        - Grouping tasks that frequently communicate together on the same processor or node to reduce communication overhead.
	        - **Use Cases**: Systems with high inter-task communication.
	- #### **5.2. Factors in Mapping**
	    - **Inter-task Communication**: Tasks that frequently communicate should be placed on the same processor or within the same node to minimize network delays.
	    - **Data Locality**: In systems with NUMA, tasks should be mapped to processors close to the memory they will access to minimize access times.
	    - **System-Specific Considerations**: Considerations like the underlying network topology, memory access models (e.g., NUMA), and hardware cache coherence should be factored into the mapping decision.

## **Communication in Parallel and Distributed Systems**

| **Aspect**                      | **Point-to-Point Communication**                                                                                                         | **Collective Communication**                                                                                                                                                                      |
| ------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Definition**                  | Communication occurs between two specific tasks (e.g., send and receive).                                                                | Involves a group of processes communicating simultaneously, typically using broadcast, reduce, scatter, or gather operations.                                                                     |
| **Inter-Task Communication**    | Explicit communication between two tasks, typically using MPI functions like `MPI_Send` and `MPI_Recv`.                                  | Communication between all or a group of processes, sharing data via `MPI_Bcast`, `MPI_Allreduce`, etc.                                                                                            |
| **Latency and Bandwidth**       | Low latency and high bandwidth within parallel systems, but latency can increase with network distance in distributed systems.           | Latency can be minimized in collective operations when properly optimized for the underlying hardware.                                                                                            |
| **Synchronous vs Asynchronous** | Synchronous operations block until completed (e.g., `MPI_Send`), while asynchronous (`MPI_Isend`, `MPI_Irecv`) allows task continuation. | Synchronous collective communication (e.g., `MPI_Barrier`) requires all processes to reach the same point before proceeding. Asynchronous operations (e.g., `MPI_Ibcast`) allow partial progress. |
| **Communication Patterns**      | Point-to-point follows a direct communication model between two processes, either in blocking or non-blocking mode.                      | Collective communication involves a single-to-many (broadcast) or many-to-one (reduce) pattern, synchronizing all processes.                                                                      |
| **Who Needs Communication?**    | No communication required for embarrassingly parallel problems (e.g., independent image processing).                                     | Communication required for most applications (e.g., 3-D heat diffusion requiring neighboring data).                                                                                               |
| **Communication Cost**          | Inter-task communication incurs overhead due to packaging and transmission of data, leading to CPU resource usage and waiting times.     | Collective communications may also saturate available bandwidth, further reducing performance.                                                                                                    |
| **Visibility**                  | Communications are explicit and under the control of the programmer.                                                                     | Communications are implicit in shared memory models, transparently handled by the system.                                                                                                         |
| **Scope**                       | Point-to-point involves two tasks (sender/producer and receiver/consumer).                                                               | Collective involves data sharing among multiple tasks, which can include broadcast, scatter, gather, and reduction operations.                                                                    |

## **Synchronization Mechanisms**

| **Aspect**                | **Barrier Synchronization**                                                                                  | **Locks and Semaphores**                                                                               | **Synchronous Communication Operations**                                            |
| ------------------------- | ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------- |
| **Definition**            | All processes wait at a barrier until they all reach the same point.                                         | Locks prevent simultaneous access to shared resources. Semaphores are a more advanced form of locking. | Involves only those tasks executing a communication operation.                      |
| **Mechanism**             | Each task performs its work until it reaches the barrier and blocks. When the last task arrives, all resume. | Only one task at a time may own the lock/semaphore. The first task to acquire the lock "sets" it.      | Acknowledgment must be received before initiating the communication.                |
| **Use Case**              | Ensures that all tasks have completed a phase before moving to the next.                                     | Used to serialize access to shared memory or resources, protecting global data/code.                   | Ensures tasks only proceed when conditions are met, preventing premature execution. |
| **Impact on Performance** | Significant factor; can introduce delays if tasks are not synchronized efficiently.                          | Can improve performance but may cause waiting times and reduced parallelism.                           | Can enhance efficiency if used correctly, but may introduce delays if not managed.  |

---

# **3. Parallel Architectures**

>[!NOTE]
> Nothing special, copied content from slides and restructured them

## **Introduction to Parallel Architectures**
- **Definition**: Systems designed for simultaneous task execution across multiple processors.
- **Importance**: Enhances computational speed and efficiency for large-scale problems.
- **Types**:
	- Shared Memory Systems.
	- Distributed Memory Systems.
	- Hybrid Systems.

## **Flynn’s Taxonomy**
- **Overview**: Classification of parallel systems based on instruction and data streams.
	- **SISD**:
		- Single processor.
		- Single instruction on one data stream.
		- Deterministic execution.
	- **SIMD**:
		- Parallel processor architecture.
		- Single instruction applied to multiple data elements.
		- Example: GPUs.
	- **MISD**:
		- Multiple processors execute different instructions on the same data.
		- Rare in practical use.
	- **MIMD**:
		- Most common parallel architecture.
		- Multiple processors execute different instructions on separate data.
		- Examples: Multi-core processors, clusters.

## **Shared vs. Distributed Memory Systems**
- **SMP (Symmetric Multiprocessors)**:
	- Processors share memory and I/O space, communicating via shared memory (single bus).
	- All processors have the same access time to any memory region.
	- **Advantages**:
		- **Performance**: Work can be executed in parallel.
		- **Availability**: The system continues functioning even if one processor fails.
		- **Incremental Growth**: Adding more processors enhances performance.
		- **Scalability**: Products can range based on the number of processors.
	- **Multithreading**: Instruction streams are divided into smaller threads and executed in parallel.
- **NUMA (Non-Uniform Memory Access)**:
	- All processors can access all memory regions, but access times differ depending on the memory location relative to the processor.
	- **CC-NUMA (Cache-Coherent NUMA)**:
		- Cache coherence is maintained across all processors, even though memory access times vary.
	- **Motivation for NUMA**:
		- SMP systems face scalability limits due to bus traffic (typically between 16 and 64 processors).
		- NUMA allows larger-scale multiprocessing while retaining some of the benefits of SMP.
	- **Operation**:
		- Each processor has its own L1 and L2 caches, and each node has its own main memory.
		- Nodes are connected through a network, and processors view all memory as a single addressable space.
		- Memory requests are handled in order: L1 cache → L2 cache → local memory → remote memory.
	- **Pros**: Performs better at higher levels of parallelism without major software changes.
	- **Cons**: Performance degrades with excessive remote memory access.
- **Distributed Memory Systems**:
	- Each processor has private memory, and data exchange occurs explicitly through message passing (e.g., using the MPI library).
	- The user has full control over data placement and management.

## **Hybrid Systems**
- **Definition**: A hybrid system combines distributed memory with multiprocessor shared memory nodes, making it the most common parallel architecture.
- **Architecture**: Typically involves distributed memory systems where each node contains shared memory multiprocessors.
- **Example**: Supercomputers that use shared memory within individual nodes and distributed memory between nodes, connected via an interconnection network.
- **Use Case**: Commonly used to solve large-scale problems through distributed systems, utilizing paradigms such as cluster, grid, and cloud computing.

## **Cluster Computing**
- **Definition**: A loosely coupled collection of independent computers (uni-processor systems or SMPs) that work together as one unit.
- **Characteristics**:
	- High performance and availability.
	- Each computer (node) works as part of a unified resource.
	- Clusters do not have shared memory and communicate via network connections.
- **Benefits**: Scalability and superior price/performance ratio.
- **Architecture**: Nodes are interconnected, with middleware providing a unified interface, single point of entry, and unified job management system.
- **Cluster vs. SMP**:
	- SMP is easier to manage, has lower physical space requirements, and uses less power.
	- Clusters offer superior scalability and availability due to redundancy.

## **Grid Computing**
- **Definition**: A system of heterogeneous, geographically dispersed computers that provide CPU power and data storage capacity for applications executed across multiple locations.
- **Architecture**: Decentralized and distributed, with resources coordinated through general-purpose protocols and interfaces.
- **Differences from Clusters**:
	- Clusters are localized, while grids are globally distributed.
	- Grids provide more decentralized resource control compared to clusters.

## **Cloud Computing**
- **Definition**: Network-based computing that offers on-demand services via the internet, hiding the complexity of the underlying infrastructure.
- **Characteristics**:
	- Always available, anywhere, anytime.
	- Pay-as-you-use model.
	- Elasticity: Ability to scale up or down based on demand.
	- Uses a shared pool of configurable resources.
- **Service Models**:
	- **IaaS**: Infrastructure as a Service.
	- **PaaS**: Platform as a Service.
	- **SaaS**: Software as a Service.

## **Supercomputers**
- **Definition**: The most powerful computing systems in terms of processing capacity and calculation speed at the time of their introduction.
- **Performance Measurement**:
	- Measured in FLOPS (Floating Point Operations Per Second).
	- **LINPACK Benchmark**: Officially used to evaluate supercomputer speed.


---

# 4. Beowulf Cluster
## **Introduction**
- **Beowulf Cluster**: A high-performance computing cluster.
- **Virtual Machines (VMs)**: Can be used instead of physical machines; steps remain identical.
- ### **Step 0: Setup**
	1. **Install VirtualBox**: [Download link](https://www.virtualbox.org/wiki/Downloads).
	2. **Download Ubuntu Desktop/Server**: Example: `ubuntu-14.04.4-desktop-amd64`.
	3. **Create a Virtual Machine (VM)**:
	    - OS: Linux (Ubuntu 64-bit).
	    - Name: `master`.
	    - Default settings.
	4. **Install Ubuntu**:
	    - Follow default options; set a memorable username/password.
	5. **Enhancements**:
	    - For screen scaling: Insert Guest Additions CD Image and install.
	    - For shared folders: Add user to `vboxsf` group using:
	        `sudo adduser <user-name> vboxsf`
	6. **Networking Setup**:
	    - Use **Bridged Adapter** in VirtualBox.
	- ### **Networking Basics**
		- **DHCP**: Dynamically assigns IP addresses; addresses can be reused.
		- **NAT (Network Address Translation)**:
		    - Allows multiple devices to use a single public IP.
		    - Default mode for VirtualBox.
		- **Bridged Networking**: Enables VMs to access the host's physical network.
- ### **Step 1: Connectivity**
	1. **Static IP Assignment**:
	    - Use Network Settings for Ubuntu Desktop.
	    - Ensures consistent IPs across reboots.
	2. **Add a Slave Node**:
	    - Clone the `master` VM (name it `slave1`).
	    - Update its IP address.
	    - Test connectivity using `ping`.
	3. **Access by Name**:
	    - Edit `/etc/hosts` file on both nodes:

	        ```
	        127.0.0.1 localhost
	        192.168.8.109 master
	        192.168.8.110 slave1
	        ```

	    - Test using `ping <node-name>`.
- ### **Step 2: NFS (Network File System)**
	1. **Purpose**: Share content (e.g., programs) across nodes.
	2. **Setup on Master**:
	    - Install NFS server: `sudo apt-get install nfs-server`.
	    - Create a shared folder: `sudo mkdir /mirror`.
	    - Edit `/etc/exports`:

	        ```
	        /mirror *(rw,sync)
	        ```

	    - Restart NFS: `sudo service nfs-kernel-server restart`.
	3. **Setup on Slave**:
	    - Install NFS client: `sudo apt-get install nfs-client`.
	    - Mount shared folder:
	        `sudo mount master:/mirror /mirror`.
	    - Persist mount in `/etc/fstab`:
	        `master:/mirror /mirror nfs`.
- ### **Step 3: SSH Setup**
	1. **Install OpenSSH**:
	    - `sudo apt-get install openssh-server` on all nodes.
	2. **User Setup**:
	    - Create a user (`mpiuser`) with a shared home directory:

	        ```
	        sudo useradd -d /mirror mpiuser
	        sudo passwd mpiuser
	        sudo chown mpiuser /mirror
	        ```

	3. **SSH Key Generation**:
	    - On `master` as `mpiuser`:
	        `ssh-keygen -t rsa` (empty passphrase).
	    - Add key to `authorized_keys`:

	        ```
	        cd .ssh
	        cat id_rsa.pub >> authorized_keys
	        ```

	4. **Testing**:
	    - SSH into `slave1` using `ssh <slave-name>`.
- ### **Step 4: MPICH (Message Passing Interface)**
	1. **Install Prerequisites**:
	    - `sudo apt-get install build-essential`.
	2. **Install MPICH**:
	    - Install on all nodes.
# **5. Basic MPI**
- MPI is MIMD/SPMD type of parallelism

| **MPI Function** | **Type**                | **Use**                                                                    | **Functional Definition**                                                                                                          | **Arguments**                                                                                             | **Returns**                                                                  |
| ---------------- | ----------------------- | -------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| `MPI_Init`       | Initialization          | Initializes the MPI environment.                                           | Prepares the MPI environment for use and must be called before any other MPI function.                                             | `(int *argc, char ***argv)`                                                                               | `MPI_SUCCESS` on success, or an error code.                                  |
| `MPI_Finalize`   | Termination             | Terminates the MPI environment.                                            | Cleans up the MPI environment and must be called after all other MPI functions.                                                    | `void`                                                                                                    | `MPI_SUCCESS` on success, or an error code.                                  |
| `MPI_Comm_size`  | Query                   | Determines the number of processes in a communicator.                      | Provides the size of the specified communicator (number of processes).                                                             | `(MPI_Comm comm, int *size)`                                                                              | `MPI_SUCCESS` on success, or an error code.                                  |
| `MPI_Comm_rank`  | Query                   | Determines the rank of the calling process in a communicator.              | Provides the rank (ID) of the calling process within the specified communicator.                                                   | `(MPI_Comm comm, int *rank)`                                                                              | `MPI_SUCCESS` on success, or an error code.                                  |
| `MPI_Send`       | Blocking                | Sends a message from one process to another.                               | Waits until the data has been copied out of the send buffer and is ready for the receiving process.                                | `(void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm)`                         | `MPI_SUCCESS` on success, or an error code.                                  |
| `MPI_Recv`       | Blocking                | Receives a message sent by another process.                                | Waits until the incoming message is completely copied into the receive buffer before returning.                                    | `(void *buf, int count, MPI_Datatype datatype, int source, int tag, MPI_Comm comm, MPI_Status *status)`   | `MPI_SUCCESS` on success, or an error code.                                  |
| `MPI_Isend`      | Non-blocking            | Initiates sending a message without waiting for the operation to complete. | The function returns immediately, allowing the sender to continue its execution. The actual send completes in the background.      | `(void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request *request)`   | `MPI_SUCCESS` on success, or an error code.                                  |
| `MPI_Irecv`      | Non-blocking            | Initiates receiving a message without blocking the process.                | Starts receiving data and allows the receiving process to continue other operations while the receive completes in the background. | `(void *buf, int count, MPI_Datatype datatype, int source, int tag, MPI_Comm comm, MPI_Request *request)` | `MPI_SUCCESS` on success, or an error code.                                  |
| `MPI_Wait`       | Non-blocking Completion | Waits for a non-blocking send or receive to complete.                      | Blocks until the operation associated with a `MPI_Request` is completed.                                                           | `(MPI_Request *request, MPI_Status *status)`                                                              | `MPI_SUCCESS` on success, or an error code.                                  |
| `MPI_Test`       | Non-blocking Completion | Checks if a non-blocking operation has completed.                          | Non-blocking check to see if the operation associated with `MPI_Request` has finished.                                             | `(MPI_Request *request, int *flag, MPI_Status *status)`                                                   | `MPI_SUCCESS` on success, or an error code. Returns `flag = 1` if completed. |
| `MPI_Probe`      | Blocking                | Allows a process to check for incoming messages.                           | Determines if a message is available to be received without actually receiving it.                                                 | `(int source, int tag, MPI_Comm comm, MPI_Status *status)`                                                | `MPI_SUCCESS` on success, or an error code.                                  |

## Explanation of Arguments:
- `buf`: Pointer to the buffer containing data to be sent or received.
- `count`: Number of elements in the buffer.
- `datatype`: The type of data (e.g., `MPI_INT`, `MPI_FLOAT`).
- `dest/source`: Rank of the destination or source process.
- `tag`: Message identifier for matching send and receive operations.
- `comm`: Communicator specifying the group of processes involved.
- `status`: (For `MPI_Recv`, `MPI_Wait`, and `MPI_Probe`) Provides information on the completed operation.
- `request`: (For non-blocking functions) Used to track the status of the non-blocking operations.
- `argc`: Pointer to the argument count for the program (usually from `main`).
- `argv`: Pointer to the argument vector for the program (usually from `main`).
- `size`: Pointer to store the number of processes in the communicator.
- `rank`: Pointer to store the rank of the calling process.
- **Question**: What is the one extra parameter used in MPI_Recv() that is not used in MPI_Send(), and in what circumstances would it be of greater importance?
	- **Answer**:
		- The status parameter (of MPI_Status type) is the extra parameter. It may be of greater importance when we call the MPI_Recv() using wildcards for either source or tag, or possibly both. This parameter provides us with information on the (i) source, (ii) tag, and (iii) error from the incoming message from another process.
- **Question**: Single-Program-Multiple-Data (SPMD) is similar to what in Flynn's taxonomy. Hint: This is what MPI is.
	- **Answer**:
		- MIMD

---
# Lecture 6: Advanced MPI
- ## Communications
	- ### Broadcast (MPI_Bcast)
		- 1-Many Comms
		- Same value/array is sent to every proc including itself i.e. buffer can be overwritten during sending
		- Sending buffer is also used as a receiving buffer
	- ### Scatter (MPI_Scatter)
		- Send a portion(send_count) of a given array to each proc
		- Separate buffers for sending and receiving
	- ### ScatterV (MPI_ScatterV)
		- Similar to Scatter, defines an array for send_count to specify which proc gets how many elements
		- use of `displs`, determines the offset for the proc results. i.e. a displs value of 3 for proc 2 would mean to store the first result at index 3 in the result arr
			- its a cumulative sum of the send_count arr, if no gap is to be taken in b/w proc results
	- ### Gather (MPI_Gather)
		- Receive data from each proc and store into an array on calling proccess
		- send_count/recv_count is used to specify how many elements are _gathered_ and stored from each proc simultaneously
			- if each proc had arr of size 2, the resulting array would be `p1-0, p1-1, p2-0, p-1...` where pX is the process
	- ### AllGather (MPI_Allgather)
		- Similar to Gather, however the result is received by each and every process incl itself
	- ### AllToAll (MPI_Alltoall)
		- - Similar to AllGather, however the result is sent to each and every process incl itself and then received by all.
	- ### GatherV (MPI_GatherV)
		- Similar to Gather, defines an array for send_count to specify which proc receives how many elements
		- use of `displs`, determines the offset for the proc results. i.e. a displs value of 3 for proc 2 would mean to store the first result at index 3 in the result arr
			- its a cumulative sum of the send_count arr, if no gap is to be taken in b/w proc results
	- ### AllGatherV (MPI_AllgatherV)
		- Similar to AllGather, defines a send_count buffer and a displs buffer
	- ### AllToAllV (MPI_AlltoallV)
		- Similar to AllToAll, defines a send_count buffer and a displs buffer
- ## Synchronization
	- ### Barrier (MPI_Barrier)
		- Wait until all procs have called MPI_Barrier
- ## Reductions
	- **Types**
		- Result only available @ root proc
		- Result available @ all procs
	- **Operations**
		- Max, Min, Sum, Prod, LAND, BAND, LOR, BOR, LXOR, BXOR, MAXLOC, MINLOC
			- L/B Binary operators -> Logical/Binary
			- LOC -> Location
	- **Requirements**
		- Count, Operation and Root have to be the same in all sending and receiving procs
	- ### Reduce (MPI_Allreduce)
		- Gather values from all procs and perform an operation in calling proc
		- #### Scalar reduction
			- Operation combines all values of the processes
		- #### Array reduction
			- Elements of the arrays are combined in an element-wise fashion, returned result is an array
	- ### AllReduce (MPI_Allreduce)
		- Gather values from all procs and perform an operation in calling proc before sending to all procs
# Lecture 7.1: OpenMP
- ## Introduction
	- Directive set for C/C++ compiler, included as standard
		- Requires `-fopenmp` switch during compilation and/or the `include <omp.h>` header include
- ## Num of Threads to use
	- Can be in set in a number of ways (in order of precedence)
		- IF clause
		- `NUM_THREADS(threadNum)` Clause
		- `omp_set_num_threads(threadNum);`
		- exporting `OMP_NUM_THREADS` with `threadNum`
		- Default Implementation
- ## Function Calls
	- ### Set \# of Threads
		- `omp_set_num_threads(threadNum)`
			- Call before entering a parallel region
	- ### Get ID of Current Threads
		- `omp_get_thread_num()`
			- Note that worker threads i.e. threads spawned from work-sharing clauses, cannot spawn new threads
	- ### Get total number of threads for current block
		- `omp_get_num_threads()`
	- ### Check Parallel region is active
		- `omp_in_parallel()`
			- Call within a parallel region, returns true if yes, false if no
- ## PRAGMA Calls
	- ### Basic Structure
		- `#pragma omp clause1[clause2[...]]` -> OpenMP Compiler Directive
			- All code within these blocks will run even if it fails some condition or has an execution error, it just will not be parallel
	- ### Parallel Region
		- `#pragma omp parallel {Code body}` -> All code within this body is duplicated and run by a set number of threads
			- Can call `omp_set_num_threads()` above this to set the max number of allowed threads to execute that specific block
	- ### IF Clause
		- `#pragma omp parallel if (someStatement) {Code Body}`
			- Executes in parallel if statement is true, otherwise runs in serial.
	- ### NUM_Threads
		- `#pragma omp parallel if (someStatement) num_threads(np) {Code Body}`
			- where np is a value that stores the required number of threads
	- ### Shared & Private Data (Access Mode)
		- By default `shared` is used, each thread can globally address the same memory address i.e. `a[5]`
			- `#pragma omp parallel shared(threadData)`
		- For private access where each thread works on its own copy of the memory address contents, use
			- `#pragma omp parallel private(threadData)` -> threadData is just a var that is being passed to each of the threads
		- To use the initialized values the variable had before entering the parallel region
			- `#pragma omp parallel firstprivate(threadData)`
		- For loop exclusive use, the final iteration updates the value of the `threadData`
			- `#pragma omp parallel for lastprivate(threadData)`
	- ### Alter Default Access Behavior
		- For each var passed to this clause, specify an Access mode
		- By default no vars are shared
			- `#pragma omp parallel default(none) shared(thisIsThreadGlobal) private(thisIsThreadLocal)`
		- By default all vars are shared unless marked private (No need to do what was done above and mark a global thread, its already there)
			- `#pragma omp parallel default(shared) private(thisIsThreadLocal)`
		- By default all vars are private unless marked shared(Safest option)
			- `#pragma omp parallel default(private) private(thisIsThreadLocal)`
	- ### Loops
		- Share iterations of a given loop among the running threads, note that no new threads are spawned for this
			- `#pragma omp for schedule()`
		- `Schedule()`, determines the mechanism used and how many threads will be assigned to the total execution
			- `schedule(static, 10)` -> RoundRobin + 10 threads assigned to complete this loop
			- `schedule(dynamic, 10)` -> Chunks are auto-assigned based on how much a previous thread was able to finish. Increases overhead.
		- Sync or not to be in Sync
			- Can set the loop iterations split among the threads to run without waiting for the other, there is an implicit barrier at the end of the loop when in sync
			- `#pragma omp for nowait`
	- ### Master thread
		- Used to run code on the main thread, all other threads ignore this section
			- `#pragma omp master`
	- ### Critical (Thread Mutex)
		- Used to force a Code Block to use a single thread at a time i.e. mutexes
		- Section that uses Critical must be an atomic section, needs to be as simple as possible
			- `#pragma omp critical`
	- ### Barrier
		- Similar to OpenMPI, all threads will be blocked after completion until the final thread reaches that code block too
			- `#pragma omp barrier`
	- ### Reduction
		- Similar to OpenMPI, operators are specified within clause. Operators are `max`, `min`, `+`, `-`, `*`, etcetc. Creates a private copy that is then shared
			- `#pragma omp parallel reduction(max:someArrayOrVar)`
# Lecture 7.2: OpenCL
## OpenCL Architecture
- Application Layer
	- OpenCL Kernels
- Framework
	- OpenCL API
	- OpenCL C Language
- OpenCL runtime
- Device Driver
- Accelerator Hardware
	- GPU, CPU, FPGA
# Lecture 8: Performance Analysis
> [!WARNING]
> Only the formulae seem important enough to come in the sessional

- ## Performance
	- ### Performance Metrics
		- User CPU time: capturing the time that the CPU spends for executing A
		- System CPU time: capturing the time that the CPU spends for the execution of routines of the operating system issued by A
		- Waiting time: caused by waiting for the completion of I/O operations and by the execution of other programs because of time sharing
	- ### Measuring Performance
		- Done via Clock ticks in time and Clock Rate in hertz
		- Formula:
			- $Clock Cycle (CC) = \frac{1}{Clock Rate (CR)}$
		- Best metric to use is Floating-Point Operations per Second (FLOPS) + Millions of Instructions Per Second (MIPS)
- ## Benchmarks
	- ### Why Do Benchmarks?
		- Represent performance of a large class of important programs
		- Evaluated by testing
			- Different systems
			- Changes to a single system
	- ### Microbenchmarks
		- Measure one performance dimension or aspect
			- Cache bandwidth
			- Memory bandwidth
			- Procedure call overhead
			- FP performance
		- Insight into the underlying performance factors
		- Not a good predictor of overall application performance
	- ### Macrobenchmarks
		- Application execution time
			- Measures overall performance, using one application
			- Need application suite
	- ### Popular Benchmark Suites
		- Desktop
			- SPEC CPU2000 - CPU intensive, integer & floating-point
			applications
			- SPECviewperf, SPECapc - Graphics benchmarks
			- SysMark, Winstone, Winbench
		- Embedded
			- EEMBC - Collection of kernels from 6 application areas
			- Dhrystone - Old synthetic benchmark
		- Servers
			- SPECweb, SPECfs
			- TPC-C - Transaction processing system
			- TPC-H, TPC-R - Decision support system
			- TPC-W - Transactional web benchmark
		- Parallel Computers
			- SPLASH - Scientific applications & kernels
- ## Performance Metrics - Parallel Systems
	- ### Amdahl's Law
		- $Speedup = \frac{1}{(1 - p)}$
			- p is section of code that can be parallelized
			- Max Speedup is 1/p, can't go higher than that
		- Only for a fixed problem size, as there is a limit to the parallelization
		- Possible to get Super-Linear Speedup i.e. a speedup value greater than `p`
			- Extra memory available in multi-processor system
			- Nondeterministic Algorithm
		- $S(p) = \frac{t_s}{t_p}$
			- t<sub>s</sub> -> execution time on a single processor
			- t<sub>p</sub> -> execution time on a multi processor
		- Can also use computational steps instead of time in this formula
		- $$S(p) = \frac{t_s}{f*t_s + (1-f)\frac{t_s}{p}}$$
		- $$S(p) = \frac{p}{1 + (p - 1)f}$$
		- #### Speedup given N number of CPUs (EZ Amdahl's)
			- $S(numOfProc) = \frac{1}{f_s + \frac{f_p}{numOfProc}}$
	- ### Gustafson’s Law (Scaled)
		- $S(p) = p + s(1-p)$
			- where p -> numOfProc
	- ### Efficiency
		- $Efficiency = \frac{Speedup S(p)}{numOfProc}$
- ## Scalability
	- ### Strong vs Weak Scalability
		- **Strongly Scalable** -> Increase in numOfProc/Threads with no change in problem size leads to same efficiency
			- Governed by Amdahl's law, concerned with a fixed problem size
		- **Weakly Scalable** -> Increase in problem size + numOfProc/Threads leads to no change in efficiency
			- Governed by Amdahl's law, concerned with a scaled problem size

---

# 9. Dependency Analysis
Compilers determine dependencies based only on the direction vector
Anti dependencies can be eliminated via renaming

Problem Shortcut:
```
 A[i-1][j+1][k-1] = A[i+1][j+1][k-1]
```
check if leftmost `[]` is negative i.e `'i-1'`
- if so then dependency=`Anti`
	- L.H.S is the sink with the R.H.S being the source
- else dependency=`True`
	- L.H.S is the source with the R.H.S being the sink
```
A[i-1][j+1][k-1] = A[i+1][j+1][k-1]
       ^                   ^
       |                   |
      sink              source
```
Lets assume any value for N, 10 for example

```
N=10 ;This is the end result
```
sub N for all vars in LHS & RHS but ensure it gives the result as intended earlier where we need to inc/dec N to reach our target of 10

```
A[11-1][9+1][11-1] = A[9+1][9+1][11-1]
```

End result should be N in all iterations of A
```
A[10][10][10] = A[10][10][10]
```

Distance vector will be calculated Sink - Source (Use adjusted values of N)
```
> Sink: A[11][9][11]
> Source: A[9][9][11]
> DistVec: 2, 0, 0
```

Direction vector is based on negative sign
> if distance is positive then "<"
> if distance is negative then ">"
> if distance is 0 for all vector elements then "=" and loop dependency will be set to 'loop independent'

```
DirVec = (>, =, =)
```

Loop dependency is based on direction vec, it will always be loop carried unless the above case is present

```
DirVec = (=, =, =)
Loop-Dependency == 'Loop Independent'
```


## Invalid Cases
### Case 1: No dependency
```
A[][][] = B[][][] / C[][][] + D[][][]
```
No known arrays are dependent on each other for their assignments

### Case 2: Invalid dependency
```
A[i][j-1][k+1] = A[i][j-1][k-1]
```
Cases where the dependency is "inline" so to speak, are invalid
- Input
- Output
	- Focus on the `i` part where both sides have the same value for `i`

---

# 10. Zettabytes of Data
## Data Accumulation
- Assume you have a piece of paper.
	- ### How Data Accumulates
		- If you folded this piece of paper in half, it would now be twice as thick as it was before.
		- So my question is this: How many times would you have to fold this paper onto itself to reach the Moon?
	- ### How It Can Be Done?
		- 500-page reams are about 2 inches (5 cm) high.
		- That means one page is about 0.01 cm high.
	- ### Mean Distance to the Moon?
		- The mean distance from Earth to the Moon is about **384,000 km**, or **3.84 x 10¹² pages** away.
		- So you’d expect that you’ll need an awful lot of foldings to get there, right?
		- **41 foldings** will get me slightly more than halfway to the Moon.
		- So how many foldings would be needed, then?

## Data!
- We live in the data age, and it is difficult for a single system to store, process, and analyze all of it!
	- Facebook hosts more than **240 billion photos**, growing at **7 petabytes per month**.
	- In **2020**, it was about **4 petabytes per day**.
	- By **2025**, **463 exabytes** of data will be generated by humans each day.
	- By **2024**, the number of emails will reach **361 billion** every day.
	- **Cloud storage by 2025** will exceed **200+ zettabytes**.

## The Zettabytes of Data
- It’s not easy to measure the total volume of data stored electronically.
	- An estimate of the "digital universe" was **4.4 zettabytes** in **2013**.
	- Forecasting a tenfold growth by **2020**, reaching **44 zettabytes**.
	- ### What Is a Zettabyte?
		- In **2009**, the data universe was **0.8 ZB**, growing by a factor of **44**.
		- **One Zettabyte (ZB)** = **1 trillion gigabytes**.
			- By **2020**, this reached **44 Zettabytes**.

## How Big Is A Petabyte, Exabyte, Zettabyte, or A Yottabyte?

| Unit          | Value                                                                              |
| ------------- | ---------------------------------------------------------------------------------- |
| **1 bit**     | A binary decision                                                                  |
| **1 byte**    | A single character                                                                 |
| **8 bytes**   | A single word                                                                      |
| **Kilobyte**  | 1,000 Bytes (1,024 for memory)                                                     |
| **1 KB**      | A very short story                                                                 |
| **10 KB**     | An encyclopedic page                                                               |
| **50 KB**     | A compressed document image page                                                   |
| **100 KB**    | A low-resolution photograph                                                        |
| **Megabyte**  | 1,000,000 Bytes                                                                    |
| **2 MB**      | A high-resolution photograph                                                       |
| **20 MB**     | A box of floppy disks                                                              |
| **700 MB**    | A CD-ROM                                                                           |
| **Gigabyte**  | 1,000,000,000 Bytes                                                                |
| **1 GB**      | A movie at TV quality                                                              |
| **Terabyte**  | 1,000,000,000,000 Bytes                                                            |
| **1 TB**      | 50,000 trees made into paper and printed                                           |
| **2 TB**      | My external (pathetic) hard drive                                                  |
| **10 TB**     | The printed collection of the US Library of Congress                               |
| **Petabyte**  | 1,000,000,000,000,000 Bytes                                                        |
| **2 PB**      | All US academic research libraries                                                 |
| **200 PB**    | All printed material                                                               |
| **Exabyte**   | 1,000,000,000,000,000,000 Bytes                                                    |
| **5 EB**      | All words ever spoken by human beings                                              |
| **Zettabyte** | 1,000,000,000,000,000,000,000 Bytes                                                |
| **1.9 ZB**    | Informational equivalent to every person on Earth receiving 174 newspapers per day |
| **42 ZB**     | All human speech ever spoken if digitized as 16 kHz, 16-bit audio                  |

## Google in 2010
- **Eric Schmidt (CEO Google 2001–2011)**: *"Every 2 days, we create as much information as we did up to 2003."*
- *"The real issue is user-generated content,"* he noted, adding that pictures, instant messages, and tweets all contribute to this explosion of data.

## Internet Traffic
- **Internet Traffic** reached around **1.1 Zettabytes** in **2016**.

| Year | Global Internet Traffic |
|------|-------------------------|
| 1992 | 100 GB per day          |
| 1997 | 100 GB per hour         |
| 2002 | 100 GBps                |
| 2007 | 2,000 GBps              |
| 2015 | 20,235 GBps             |
| 2020 | 61,386 GBps             |


## Data, Data, Data!!
- Too much data is being produced (which should not be considered a problem).
- All this creates several challenges in the storage environment.

## The Future of Data
- Organizations no longer have to merely manage their own data.
- Success in the future will be dictated to a large extent by their ability to extract value from other organizations’ data.

## So the Data is Big!!
- What should it be called? Obviously, **Big Data**. 😄
- **Big Data** is a term that describes the large volume of data.
- It’s not the amount of data that’s important. It’s what organizations do with the data that matters.

## The Big Data Explosion
There are three types of Big Data:
1. **Big Structured Data**
2. **Big Semi-structured Data**
3. **Big Unstructured Data**

- ### The Big Data Explosion and the 3 V’s
	- All three types of data require one or more of the following **Three V’s**:
		- **Volume**: Large amounts of data.
		- **Variety**: Different types of data.
		- **Velocity**: Data generated at high speed.
	- With the increasing complexity of data, we now have **5 Vs**.
- ### Big Structured Data
	- Data that can be stored in a database, with rows and columns.
	- Accounts for only **5–10%** of all data.
- ### Big Semi-Structured Data
	- Doesn’t reside in a relational database but has organizational properties.
	- Examples: **CSV**, **XML**, **JSON**, and **NoSQL** databases.
	- Accounts for **5–10%** of all data.
- ### Big Unstructured Data
	- Data that is best understood as files.
	- Often includes text and multimedia content (e.g., emails, photos, videos, presentations, webpages).
	- Accounts for **around 80%** of all data.

## Data, Data, Data!!
- The good news is that **Big Data** is here.
- The bad news is that we are struggling to store and analyze it.
- ### Why Can’t We Just Load and Analyze?
	- The core of the problem:
		- **Storage capacities** of hard drives have increased.
		- **Access speeds**, however, have not kept up.
	- In **1990**, a 1,370 MB drive with a transfer speed of 4.4 MB/s could read all data in around **5 minutes**.
	- However, **20 years later**, 1TB drives are common, but the transfer speed is around **100 MB/s**, meaning it now takes over **2.5 hours** to read all the data on a single drive.

## What Can Be Done?
- ### Concurrent Access
	- The obvious solution is to **read from multiple disks** at once.
	- Imagine if we had **100 drives**, each holding **1/100th of the data**. Working in parallel, we could read the data in under **2 minutes**.
	- However, using only **one hundredth** of a disk seems wasteful.
		- But we can store **100 datasets**, each 1 terabyte, and provide **shared access** to them.
	- #### Problems with Concurrent Access
		1. **Hardware failure**: As soon as you start using many pieces of hardware, the chance of failure increases.
		    - A common solution: **Replication**.
		    - Replication means **redundant copies** of the data are kept so that in case of failure, there is another copy available.
		2. **Data integration**: Most analysis tasks require combining data from multiple sources.
		    - Data read from one disk may need to be combined with data from another.
		    - Various distributed systems allow data to be combined, but doing this correctly is notoriously challenging.


# 11. Hadoop Introduction
- ### **Why Hadoop?**
	- **Need to process huge datasets** on large clusters of computers.
	- Building **reliability** into each application is **very expensive**.
	- **Node failures** are common in distributed systems.
	- A **common infrastructure** is needed:
	    - Efficient, reliable, and easy to use.
	    - Open Source.
- ### **What is Hadoop?**
	- A **framework** for **distributed processing** of large datasets across clusters of computers using simple programming models.
	- **Scalable** from a single server to thousands of machines, each providing local computation and storage.
	- **Detects and handles failures** at the application layer, ensuring highly available services on clusters of computers.

- ### **Who Uses Hadoop?**
	- Prominent users include **Amazon**, **Facebook**, **Google**, **Twitter**, **New York Times**, **Yahoo!**, and many more.

- ### **Core Components of Hadoop**
1. **Hadoop Common**:
    - Utilities supporting other Hadoop modules.
2. **HDFS (Hadoop Distributed File System)**:
    - A distributed file system providing high-throughput access to application data.
3. **Hadoop YARN**:
    - A framework for job scheduling and cluster resource management.
4. **Hadoop MapReduce**:
    - A programming model for large-scale data processing.

- ### **Hadoop Ecosystem**
	- Management & Monitoring.
	- Coordination among modules.
	- **Batch and Iterative Processing**.
	- NoSQL Databases.
	- Tools for:
	    - Data collection (e.g., **Sqoop**).
	    - Workflow scheduling.
	    - Data analysis and processing.
	    - Data warehousing.
	    - Query processing frameworks.
	    - Cluster and stream data management.
	    - Event processing.

## **HDFS (Hadoop Distributed File System)**
- ### Goals of HDFS:
	- A file system designed for:
	    - **Storing very large files** (hundreds of MBs, GBs, or TBs).
	    - **Streaming data access patterns** (write once, read-many).
	- **Batch Processing** support with no need for synchronization.
	- **Production scalability**:
	    - Up to 200 PB of storage and clusters of 4500 servers.
	    - A billion files and blocks.
	- **Key Features**:
	    - Scalable, fault-tolerant, and distributed storage system.
- ### Data Distribution Example:
	- **Large input data** is split across nodes:
	    - Node 1: Slice of input.
	    - Node 2: Slice of input.
	    - Node 3: Slice of input.

## **Hadoop MapReduce**
- A **framework** for writing applications to process large data stored in HDFS.
- **Two Phases**:
    1. **Map Phase**:
        - Processes input data into key-value pairs.
    2. **Reduce Phase**:
        - Aggregates and computes final results from key-value pairs.
- **Developer Specifications**:
    - Define the **map function** and **reduce function**.
- **Benefits**:
    - **Simplicity**: Supports Java, C++, Python, etc.
    - **Scalability**: Processes petabytes of data in one cluster.
    - **Speed**: Parallel processing shortens computation times.
    - **Recovery**: Handles node failures with redundancy.
    - **Minimal Data Motion**: Processes data locally, reducing network I/O.

## **YARN (Yet Another Resource Negotiator)**

- Primarily provides **resource management** for Hadoop clusters.
- Enables **multiple data processing engines**:
    - Interactive SQL.
    - Real-time streaming.
    - Batch processing.
- **Framework**:
    - YARN (Cluster Resource Management).
    - HDFS (Redundant, reliable storage).
    - Data Processing Engines (e.g., MapReduce, Spark).
## **Five Pillars of Hadoop Ecosystem**

| **Pillar**                             | **Component**        | **Description**                                                                        |
| -------------------------------------- | -------------------- | -------------------------------------------------------------------------------------- |
| **1. Data Management**                 | **HDFS**             | Scalable and reliable Java-based storage.                                              |
|                                        | **YARN**             | Provides resource management and scheduling architecture.                              |
| **2. Data Access**                     | **Apache Hive**      | Data warehousing with SQL-like queries for HDFS datasets.                              |
|                                        | **Apache Pig**       | High-level scripting (Pig Latin) for data analysis.                                    |
|                                        | **Apache Spark**     | In-memory data processing for iterative algorithms (e.g., clustering, classification). |
|                                        | **Apache Storm**     | Real-time computation for fast data streams.                                           |
|                                        | **Apache HBase**     | NoSQL column-oriented storage with real-time read/write access.                        |
|                                        | **Apache Tez**       | Alternative to MapReduce for speeding up query processing.                             |
|                                        | **Apache Kafka**     | Publish-subscribe messaging with fault tolerance.                                      |
|                                        | **Apache Solr**      | Full-text search and real-time indexing.                                               |
|                                        | **Apache Mahout**    | Scalable machine learning for clustering and classification.                           |
|                                        | **Apache Accumulo**  | High-performance data storage and retrieval.                                           |
| **3. Data Governance and Integration** | **Apache Falcon**    | Data lifecycle management.                                                             |
|                                        | **Apache Flume**     | Log aggregation and movement.                                                          |
|                                        | **Apache Sqoop**     | Efficient data transfer to/from Hadoop.                                                |
| **4. Security**                        | **Apache Knox**      | Centralized authentication and access.                                                 |
|                                        | **Apache Ranger**    | Security policy administration, authorization, and accounting.                         |
| **5. Operations**                      | **Apache Ambari**    | Web-based cluster monitoring.                                                          |
|                                        | **Apache Oozie**     | Workflow scheduling for Hadoop jobs.                                                   |
|                                        | **Apache ZooKeeper** | Coordinates distributed processes and stores configuration updates.                    |

## Hadoop Setup/Installation
- ### Points To Note
	- Easy to setup, Only Java 8 can be used however
	- Can run in 3 modes
		- Standalone
			- Debug mode essentially
		- Pseudo-Distributed
			- Simulation of processes
			- Each instance is its own java process
		- Fully-Distributed
	- Supposed to compile the jar ourselves
		- Used `com.sun.tools.javac` to compile the file
		- Used `java cf wc.jar WordCount*.class` to convert the class to a jarfile
	- Can use `bin/hadoop fs -cat <filename>` to cat files just as i would normally
	- Its a simple wordcount example and it does so pretty quickly, nothing special to note besides the compile steps
# 12. Hadoop Map Reduce
- A programming model for data processing
- Breaks the processing into two phases determined by the programmer
	- Each phase has key-value pairs as input & output
		- **Map Phase**:
			- A **mapper** function is used to transform input data into Key-Value pairs
				- The function can filter, parse and/or transform the data
		- **Reduce Phase**:
			- A **reducer** function groups and aggregates the key-value pairs
- Suitable data category: Large Semi-Structured data i.e JSON, XML, logs
- Process Overview
	- Input: Large amount of words
	- Splitting: Each node gets a section of the list
	- Mapping: Each node creates KV-Pairs
	- Shuffling: Nodes interact and shuffle/sort KV-Pairs until each have the same one
	- Reducing: Similar KV-Pairs are added together
	- Final Result: File with sum of each KV-Pair

- Example: Log Analysis
	- Mapper:
		- Reads log entries
		- Extract relevant data via string matching (IP addr, timestamps, etc etc)
		- Emits key-value pairs of each occurance
	- Reducer:
		- Shuffle & Sort:
			- All KV-pairs are shuffled and sorted by key
		- Reducer then aggregates the KV-pairs