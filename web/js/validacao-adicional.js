/*
 * Valida numeros de telefones celulares brasileiros
 */
$.validator.addMethod("mobileBR", function (phone_number, element) {
    phone_number = phone_number.replace(/\s+/g, "");
    return this.optional(element) || phone_number.length > 9 &&
            phone_number.match(/^(\(\d{2}\)\s?|\d{2}[\s.-]?)\d{5}[\s-]?\d{4}$/);
}, "Por favor, digite um n&uacute;mero de celular v&aacute;lido. Por exemplo: (99)99999-9999");