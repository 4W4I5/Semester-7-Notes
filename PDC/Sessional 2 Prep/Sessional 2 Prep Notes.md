| Lecture Number | Lecture Title        | Status             |
| -------------- | -------------------- | ------------------ |
| 6              | Advanced MPI         | :white_check_mark: |
| 7              | OpenMP               | :warning:          |
| 8              | Performance Analysis | :white_check_mark: |

> [!WARNING]
> MATHJAX does not render on github mobile, view the notes for lecture 8 on the browser to see the formulae

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
# Lecture 7: OpenMP
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