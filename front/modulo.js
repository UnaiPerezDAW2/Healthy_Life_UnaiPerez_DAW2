function empty(value)
{
    if(value == "" || value == null || value == undefined || value == 'default'){
        return true;
    } else {
        return false;
    }
}

let emailPatron = /[\w]{1,50}[@](gmail|hotmail|yahoo|familiados)(.com|.es)$/;
let telfFijo = /[1-9]{9}/;
let telfSmart = /[+34][1-9]{9}/

function regularExpresionVeriffier(inputValue, patron)
{
    return patron.test(inputValue);
}

export {empty, regularExpresionVeriffier, emailPatron, telfFijo, telfSmart};