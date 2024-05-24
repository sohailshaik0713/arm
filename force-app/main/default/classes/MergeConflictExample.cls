public class MergeConflictExample {
    public void greet() {
        System.debug('Hello from the feature branch!');
    }

    public void farewell() {
        System.debug('Goodbye from the feature branch!');
    }

    public Integer addNumbers(Integer a, Integer b) {
        return a + b + 10; // Modified logic
    }

    public String getGreeting(String name) {
        return 'Hi, ' + name + '! Welcome to the feature branch.';
    }

    public String getFarewell(String name) {
        return 'See you, ' + name + '! Have a great day!';
    }
}