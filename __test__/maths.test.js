import { sumar, multiplicar, restar, dividir} from '../maths.js';

describe('Calculos matematicos sumas', () => {
    test('Prueba de sumas', () => {
        expect(sumar(1,1)).toBe(2);
    });
    test('Prueba suma negativos', () => {
        expect(sumar(-5,3)).toBe(-2);
    });
});

describe('Calculos matematicos restas', () => {
    test('Prueba de resta', () => {
        expect(restar(1,1)).toBe(0);
    });
    test('Prueba resta negativos', () => {
        expect(sumar(-5,-3)).toBe(-8);
    });
});