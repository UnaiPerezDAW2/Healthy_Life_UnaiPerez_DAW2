function empty(value)
{
    if(value == "" || value == null || value == undefined){
        return true;
    } else {
        return false;
    }
}

export {empty};