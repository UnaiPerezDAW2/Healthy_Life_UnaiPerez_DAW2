function empty(value)
{
    if(value == "" || value == null || value == undefined || value == 'default'){
        return true;
    } else {
        return false;
    }
}

let emailPatron = /[\w]{1,50}[@](gmail|hotmail|yahoo|familiados)(.com|.es)$/;
let tel = /^9[0-9]{10}$/;
let telfefonoPatron = /[+34][0-9]{9}/

function regularExpresionVeriffier(inputValue, patron)
{
    return patron.test(inputValue);
}

export {empty, regularExpresionVeriffier, emailPatron, telfefonoPatron};