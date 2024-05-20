//Test Class
@isTest
public class BusTicketTest {
    static testmethod void main(){
    BusTicket bt1 = new BusTicket();
    bt1.input('bt1','twopm','srnagar','charger','ticketamount2');
    bt1.output();
    }
}