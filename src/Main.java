import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/**
 * OOM class test to test JMC profiler
 */
public class Main {

    static BlockingQueue<byte[]> queue = new LinkedBlockingQueue<>();

    public static void main(String[] args) {
        new Thread(new Consumer()).start();
        new Thread(new Producer()).start();
    }

    static class Producer implements Runnable {

        public void run() {
            while (true) {
                queue.offer(new byte[3 * 1024 * 1024]);

                try {
                    Thread.sleep(50);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }

    }

    static class Consumer implements Runnable {
        public void run() {
            while (true) {
                try {
                    queue.take();
                    Thread.sleep(100);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}


///Library/Java/JavaVirtualMachines/jdk-11.0.5.jdk/Contents/Home/bin
