@isTest
public class WifiRouterTest {
    static testmethod void main(){
        WifiRouter WR = new WifiRouter();
        WR.input('Netgear',100,'actfiber_1','dualband_1','tworooms');
        WR.output();
    }

}