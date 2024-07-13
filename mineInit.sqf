


 MineTrigger = createTrigger ["EmptyDetector", getMarkerPos "mineMarker", true];
 MineTrigger setTriggerArea [30, 10, 0, false]; 
 MineTrigger setTriggerActivation ["ANY", "PRESENT", true];

Gems = 0;
mining = false;
mineStop = true;
gemLoop =  {
    mining = true;
    mineStop = false;
    sleep 5;
    Gems = Gems + 1;
    hint format ["You mined a gem, you possess %1 gems", Gems];
    if (!mineStop) then {
        call gemLoop;
    }
};


mineinit = {
        if (triggerActivated MineTrigger) then {
            private _markerPos = getMarkerPos "mineMarker";
            private _offset = [10, 0 , 0];
            private _newpos = _markerPos vectorAdd _offset;

            "mineMarker" setMarkerPos _newpos;
        }; 

    _mine = "Land_cmp_Tower_F" createVehicle getMarkerPos "mineMarker";
    _mine spawn {
        _this addAction["Mine from machine", {call gemLoop}, [] , 6, false, true, "",  "(buyer distance _this < 5) && (mining == false)"];
        _this addAction["Stop mining", {mineStop = true; hint "Mining has been ceased on this machine."; mining = false;}, [] , 6, false, true , "", "(buyer distance _this < 5) && (mining == true)"];

    }
};

