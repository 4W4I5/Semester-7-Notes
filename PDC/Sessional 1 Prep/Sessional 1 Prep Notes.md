| Chapter<br>Number | Chapter<br>Name        | Status             |
| ----------------- | ---------------------- | ------------------ |
| 1                 | PDC Overview           | :white_check_mark: |
| 2                 | Parallel Architectures | :white_check_mark: |
| 3                 | MPI P2P                | :white_check_mark: | 

---

# **1. Parallel and Distributed Computing (PDC) Overview**

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
- **Power Consumption**: As clock speeds increase, power consumption grows exponentially, making it unsustainable.
- **Heat Dissipation**: Higher clock speeds generate more heat, leading to challenges in cooling processors.
- **Limits of Single-Core Processors**: Due to these limitations, single-core processors are unable to scale in performance as they once did, leading to the rise of multi-core processors.

## **Multi-Core and Many-Core Processors**

| **Aspect**              | **Multi-Core**                                                                                                                 | **Many-Core**                                                                               |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------- |
| **Introduction**        | Multi-core processors integrate multiple cores on a single chip, allowing for simultaneous execution of multiple instructions. | Many-core processors extend this to a much larger number of cores, typically found in GPUs. |
| **Benefits**            | Increases processing power without increasing clock speed. More efficient power use.                                           | High parallelism for specific tasks, such as graphics rendering.                            |
| **Examples**            | Intel’s multi-core processors, AMD’s Ryzen.                                                                                    | GPUs like NVIDIA CUDA cores, AMD Radeon cores.                                              |
| **The New Moore's Law** | Performance scaling by adding cores rather than increasing clock speed.                                                        | Many-core processors follow a similar trend.                                                |

## **Parallelization Strategy**
- ### **1. Problem Understanding**
	- The first step in developing a parallel application is to fully understand the problem you want to solve.
		- **Starting with a Serial Program**: Analyze and understand the existing serial code to determine its structure and logic.
		- **Suitability for Parallelization**: The key decision is whether the problem is suitable for parallelization. This requires analyzing:
			- **Code Dependencies**: Identify areas where tasks depend on each other.
			- **Communication Requirements**: Understand how tasks need to communicate.
			- **Synchronization Needs**: Determine where synchronization is needed to ensure correct execution.
		- **Identify Hotspots**: In most scientific and technical programs, the majority of the work happens in a few places. The focus should be on parallelizing these "hotspots" while ignoring less significant portions.
			- **Profiling Tools**: Use profilers and performance analysis tools to identify hotspots and the sections of code that consume the most CPU time.
			- **Solution for Bottlenecks**: If areas are found to be slow, such as I/O operations, consider restructuring the program, using a different algorithm, or overlapping communication with computation.
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

# **2. Parallel Architectures**

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

# **3. MPI P2P**
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