# Para correr el programa ejecutar en la terminal: python myassembler.py "/Users/caroyepes/Desktop/nand2tetris/projects/06/add/Add.asm"


#libreria sys Python System-specific parameters and functions. #https://docs.python.org/3/library/sys.html
import sys

#Simbolos predefinidos
simbolos = {
    'R0': 0,
    'R1': 1,
    'R2': 2,
    'R3': 3,
    'R4': 4,
    'R5': 5,
    'R6': 6,
    'R7': 7,
    'R8': 8,
    'R9': 9,
    'R1O': 10,
    'R11': 11,
    'R12': 12,
    'R13': 13,
    'R14': 14,
    'R15': 15,
    'SCREEN': 16384,
    'KBD': 24576,
    'SP': 0,
    'LCL': 1,
    'ARG': 2,
    'THIS': 3,
    'THAT': 4
}
siguiente_direccion = 16


#Eliminar los comentarios y los espacios del archivo .asm
def eliminar_comentarios_espacios(linea):
    comentarios = linea.split('/')[0]
    return comentarios.replace(' ', '')


def obtener_instrucciones(archivo_asm):
    contenido_hack = open(archivo_asm, 'r')

    instrucciones = []
    for linea in contenido_hack.read().split('\r\n'):
        archivosin = eliminar_comentarios_espacios(linea)
        if archivosin:
            instrucciones.append(archivosin)

    return instrucciones


def analizar_simbolo(simbolo):
    global siguiente_direccion
    if simbolo not in simbolos:
        simbolos[simbolo] = siguiente_direccion
        siguiente_direccion += 1

    return simbolos[simbolo]


def entero_a_binario(num, bit_size=16):
    bin_num = bin(num)[2:]
    return (bit_size - len(bin_num)) * '0' + bin_num


def analizar_instruccion_A(instruccion):
    direccion = instruccion[1:]
    try:
        return entero_a_binario(int(direccion))
    except ValueError:
        return entero_a_binario(analizar_simbolo(direccion))

#Para traducir una instruccion C, hay que traducir los campos dest, comp, jump. C-instruction: dest=comp;jump
def traductor_comp(comp):
    return {
        '0': '0101010',
        '1': '0111111',
        '-1': '0111010',
        'D': '0001100',
        'A': '0110000',
        '!D': '0001101',
        '!A': '0110001',
        '-D': '0001111',
        '-A': '0110011',
        'D+1': '0011111',
        'A+1': '0110111',
        'D-1': '0001110',
        'A-1': '0110010',
        'D+A': '0000010',
        'D-A': '0010011',
        'A-D': '0000111',
        'D&A': '0000000',
        'D|A': '0010101',
        'M': '1110000',
        '!M': '1110001',
        '-M': '1110011',
        'M+1': '1110111',
        'M-1': '1110010',
        'D+M': '1000010',
        'D-M': '1010011',
        'M-D': '1000111',
        'D&M': '1000000',
        'D|M': '1010101'
    }[comp]


def traductor_dest(dest):
    dest_list = ['0', '0', '0']
    if not dest:
        return ''.join(dest_list)
    if 'A' in dest:
        dest_list[0] = '1'
    if 'D' in dest:
        dest_list[1] = '1'
    if 'M' in dest:
        dest_list[2] = '1'
    return ''.join(dest_list)


def traductor_jmp(jmp):
    if not jmp:
        return '000'
    return {
        'JGT': '001',
        'JEQ': '010',
        'JGE': '011',
        'JLT': '100',
        'JNE': '101',
        'JLE': '110',
        'JMP': '111'
    }[jmp]


def analizar_instruccion_C(instruccion):
    binario_salida = '111'
    dest = None
    jmp = None

    if '=' in instruccion:
        [dest, instruccion] = instruccion.split('=')
    if ';' in instruccion:
        [comp, jmp] = instruccion.split(';')
    else:
        comp = instruccion

    binario_salida += traductor_comp(comp)
    binario_salida += traductor_dest(dest)
    binario_salida += traductor_jmp(jmp)
    return binario_salida



#Controlar que si se ingrese un archivo .asm para analizar

try:
    archivo_asm = sys.argv[1]
except IndexError:
    sys.exit('por favor ingresa el archivo .asm ')

# Obtener las instrucciones del archivo .asm. 
instrucciones = obtener_instrucciones(archivo_asm)

# 
contador = 0
for i, val in enumerate(instrucciones):
    if val[0] == '(' and val[len(val) - 1] == ')':
        ciclo = val.replace('(', '').replace(')', '')
        simbolos[ciclo] = i - contador
        contador += 1

# Crear el archivo de salida, modificando la extension del archivo de entrada. 
nombre_archivo = archivo_asm.split('.asm')[0]

archivo_salida = nombre_archivo + '.hack'
salida = open(archivo_salida, 'w')


# Convertir cada instruccion a su representacion en binario y escribirla en el archivo de salida.
for instruccion in instrucciones:
    if instruccion[0] == '(':
        continue

    elif instruccion[0] == '@':
        instruccion_en_binario = analizar_instruccion_A(instruccion)

    else:
        instruccion_en_binario = analizar_instruccion_C(instruccion)

    salida.write(instruccion_en_binario + '\r\n')