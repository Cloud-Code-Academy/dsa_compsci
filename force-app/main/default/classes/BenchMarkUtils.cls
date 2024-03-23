/**
 * Created by bjohnson on 3/23/24.
 */

public with sharing class BenchMarkUtils {
    private static Decimal heapStart;
    private static Decimal cpuStart;
    private static Decimal timeStart;
    private static Decimal heapEnd;
    private static Decimal cpuEnd;
    private static Decimal timeEnd;


    public static void benchmarkStart() {
        heapStart = Limits.getHeapSize();
        cpuStart = Limits.getCpuTime();
        timeStart = System.currentTimeMillis();
    }

    public static void benchmarkStop() {
        heapEnd = Limits.getHeapSize();
        cpuEnd = Limits.getCpuTime();
        timeEnd = System.currentTimeMillis();
    }

    public static void logResults() {
        System.debug('Heap Start: ' + heapStart);
        System.debug('Heap End: ' + heapEnd);
        System.debug('Heap Used: ' + (heapEnd - heapStart));
        System.debug('CPU Start: ' + cpuStart);
        System.debug('CPU End: ' + cpuEnd);
        System.debug('CPU Used: ' + (cpuEnd - cpuStart));
        System.debug('Time Start: ' + timeStart);
        System.debug('Time End: ' + timeEnd);
        System.debug('Time Used: ' + (timeEnd - timeStart));
    }

    public static void logResults(Integer iterations){
        System.debug('Heap Start: ' + heapStart);
        System.debug('Heap End: ' + heapEnd);
        System.debug('Heap Used: ' + (heapEnd - heapStart));
        System.debug('CPU Start: ' + cpuStart);
        System.debug('CPU End: ' + cpuEnd);
        System.debug('CPU Used: ' + (cpuEnd - cpuStart));
        System.debug('Time Start: ' + timeStart);
        System.debug('Time End: ' + timeEnd);
        System.debug('Time Used: ' + (timeEnd - timeStart));
        System.debug('Iterations: ' + iterations);
        System.debug('Average Time Per Iteration: ' + (timeEnd - timeStart) / iterations);
        System.debug('Average CPU Per Iteration: ' + (cpuEnd - cpuStart) / iterations);
        System.debug('Average Heap Per Iteration: ' + (heapEnd - heapStart) / iterations);

    }
}