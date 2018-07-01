jQuery.validator.addMethod("temArroba", function (value, element) {
    if (value.indexOf("@") >= 0) {
        return true;
    } else {
        return false;
    }
}, "Digite um @");

/*
 * Valida numeros de celular
 */
$.validator.addMethod("mobileBR", function (phone_number, element) {
    phone_number = phone_number.replace(/\s+/g, "");
    return this.optional(element) || phone_number.length > 9 &&
            phone_number.match(/^(\(\d{2}\)\s?|\d{2}[\s.-]?)\d{5}[\s-]?\d{4}$/);
}, "Por favor, digite um n&uacute;mero de celular v&aacute;lido. Por exemplo: (12)12345-1234");