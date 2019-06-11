# Performance and Setting/Monitoring Counters of Performance
Helpful resources found [here](https://docs.microsoft.com/en-us/previous-versions/technet-magazine/cc718984(v=msdn.10))

## Useful Performance Counters

#### __Logical Disk: % Free Space__
Should NEVER fall below 15%


#### __Memory: Cache Bytes__
If the value is greater than 300MB, there may be a bottleneck.

#### __Memory: Available Bytes__
The amount of available memory in bytes.
- If value is less than 5%, there's likely not enough memory.

#### __Memory: Available MegaBytes__
The amount of available memory in MB.
- The value should never fall below 5%.

#### __Memory: Pool Paged Bytes__
This is the amount of system memory for objects that can be written to disk when not in use.
- There may be a memory leak if the value is greater than 250MB
- Typical ```Event ID``` recorded in the log is ```2020```

#### __Memory: Pages/Sec__
This measures the amount of pages read or written from disk
- If the value is greater than 1,000 there may be a memory leak.

#### __Memory: Commited Bytes__
The amount of virtual memory currently in use.
- If greater than 80%, than there's likely insufficient memory.

#### __Network Interface: Bytes Total/Sec__ 
This measures the rate at which bytes are sent and received over each network adapter, including framing characters. 
- The network is saturated if you discover that more than 70 percent of the interface is consumed.


#### __Physical Disk: Avg. Disk sec/Read__
Measures the average read per sec from disk. 
- Should never be greater than 25ms.


#### __Physical Disk: Avg. Disk sec/Write__
Measures the average write per second to disk
- Should never be greater than 25ms.


#### __Physical Disk: Avg. Disk Queue Length__
Measures the average amount of I/O operations that are queued and waiting for the disk to become available.
- If the value is larger thant 2x the number of spindles than that disk is likely having a bottleneck issue.


#### __Physical Disk: Idle__
Measures the % of time the disk was idle.
- If this falls below 20% the disk is likely saturated. Consider replacing disk with a faster disk system.

#### __Processor: % Processor Time__
This measures the percentage of elapsed time the processor spends executing a non-idle thread. 
- If the percentage is greater than 85% , the processor is overwhelmed and the server may require a faster processor.

#### __Processor: % User Time__
This measures the percentage of elapsed time the processor spends in user mode. 
- If this value is high, the server is busy with the application. 

#### __System\Processor: Queue Length__
This indicates the number of threads in the processor queue. 
- The server doesn't have enough processor power if the value is more than two times the number of CPUs for an extended period of time.
