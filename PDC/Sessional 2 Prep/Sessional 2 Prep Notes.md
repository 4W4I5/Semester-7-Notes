| Lecture Number | Lecture Title        | Status             |
| -------------- | -------------------- | ------------------ |
| 6              | Advanced MPI         | :warning:          |
| 7              | OpenMP               | :warning:          |
| 8              | Performance Analysis | :white_check_mark: |

> [!WARNING]
> MATHJAX does not render on github mobile, view the notes on the browser to see the formulae

# Lecture 6: Advanced MPI
- ## Communications
	- ### Broadcast (MPI_Bcast)
		- 1-Many Comms
		- Same value/array is sent to every proc including itself i.e. buffer can be overwritten during sending
		- Sending buffer is also used as a receiving buffer
	- ### Scatter (MPI_Scatter)
	- ### ScatterV (MPI_ScatterV)
	- ### Gather (MPI_Gather)
	- ### AllGather (MPI_Allgather)
	- ### AllToAll (MPI_Alltoall)
	- ### GatherV (MPI_GatherV)
	- ### AllGatherV (MPI_AllgatherV)
	- ### AllToAllV (MPI_AlltoallV)
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
	- ### Reduce (MPI_Allreduce)
		- #### Scalar reduction
			- Operation combines all values of the processes
		- #### Array reduction
			- Elements of the arrays are combined in an element-wise fashion, returned result is an array
	- ### AllReduce (MPI_Allreduce)
# Lecture 7: OpenMP
## preserve h3
- ### Parallel and Distributed Computing
- ### OpenMP
- ### Memory Models
- ### Goals
- ### Release History
- ### Programming Shared Memory Systems
- ### Hello World - pthreads based version
- ### Hello World - OpenMP version
- ### Compiling
- ### OpenMP - User Interface Model
- ### OpenMP - Syntax
- ### Fork/Join Execution Model
- ### Using OpenMP
- ### OpenMP Directives
- ### Supported Clauses for the Parallel Construct
- ### OpenMP Constructs
- ### OpenMP: Parallel Regions
- ### The parallel directive
- ### How Many Threads?
- ### IF clause
- ### NUM_THREADS clause
- ### omp_set_num_threads() function
- ### OMP_NUM_THREADS - Environment Variable
- ### Execution Status in Parallel Region
- ### Shared and Private Data
- ### Shared and Private Data - Example (1/4)
- ### Shared and Private Data - Example (2/4)
- ### Shared and Private Data - Example (3/4)
- ### Shared and Private Data - Example (4/4)
- ### Getting ID of Current Thread
- ### Work-Sharing Constructs
- ### Do/For Work-Sharing Construct
- ### Problems with Static Scheduling
- ### Dynamic Scheduling
- ### Threads share Global variables!
- ### ThreadCount: A better implementation
- ### ThreadCount: OpenMP Implementation
- ### Critical-Section (CS) Problem
- ### Critical Section
- ### OpenMP - Synchronization Constructs
- ### Barrier Synchronization
- ### Reduction (Data-sharing Attribute Clause)

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