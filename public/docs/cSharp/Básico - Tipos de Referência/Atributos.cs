// Atributos servem para orientar operações
// Podem ser definidos para classes, métodos ou para propriedades
[Atributo]
public class MinhaClasse { }

// Para criar um atributo basta herdar dessa classe do System
// Assim pode-se usar [LogIgnore] ou [LogIgnoreAttribute] como um atributo
public class LogIgnoreAttribute : Attribute { }