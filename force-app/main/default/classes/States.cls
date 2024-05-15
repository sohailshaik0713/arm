public class States implements someinterface {
    public void statename(){
        System.debug('telangana');
    }
    public integer num_of_cities(){
        integer i = 25;
        System.debug('Number of items : ' + i);
        return i;
    }
    public list<String> people(){
        list<String> population = new list<String>();
        population.add('all states');
        population.add('all cities');
        population.add('all district');
        System.debug('Population of country : ' + population);
        return population;
        
    }
   

}