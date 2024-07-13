
money = 300;


[] execVM "mineInit.sqf";
[] execVM "payment.sqf";


// Displays HUD
cutRsc["moneyHUD", "PLAIN"];


// Mining shop GUI 
buyer addAction["Mining Shop" , {createDialog "purchaseGUI"}, [] , 6 , false , true , "", "buyer distance seller < 5"];
// Selling GUI 
buyer addAction["Sell Gems" , {createDialog "sellGUI"}, [] , 6, false , true , "", "buyer distance seller <5"];




 // loop for HUD
while {true} do {

    
    uiNamespace getVariable ["moneyHUD", displayNull] displayCtrl 1001 ctrlSetText (format ["%1$", money]);


    sleep 0.5;
};



