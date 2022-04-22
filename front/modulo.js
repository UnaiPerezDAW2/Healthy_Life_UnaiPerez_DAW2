function empty(value)
{
    if(value == "" || value == null || value == undefined || value == 'default'){
        return true;
    } else {
        return false;
    }
}

let emailPatron = /[.][]/;

function regularExpresionVeriffier(inputValue, patron)
{
    return patron.test(inputValue);
}

export {empty, regularExpresionVeriffier, emailPatron};