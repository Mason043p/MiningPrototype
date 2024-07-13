
payment   = { 
    params ["_cost"];

    if (_cost <= money) then {
    private _newCash = money - _cost;
    hint "Purchase Successful";
    money = _newCash 
}
    else 
    {
        hint "Not enough cash";
    }
};

gemSell = {
    value = gems * 10;
    money = money + value;
    hint format ["You sold your gems for %1$", value];
    gems = 0;

};