public class MergeConflictExample {
    public void greet() {
        System.debug('Hello from another feature branch!');
    }

    public void farewell() {
        System.debug('Goodbye from another feature branch!');
    }

    public Integer addNumbers(Integer a, Integer b) {
        return a + b - 5; // Different modified logic
    }

    public String getGreeting(String name) {
        return 'Hello, ' + name + '! How are you?';
    }

    public String getFarewell(String name) {
        return 'Goodbye, ' + name + '! Take care!';
    }
}