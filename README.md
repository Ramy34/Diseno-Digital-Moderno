# Diseno Digital Moderno
Repositorio de las clases de laboratorio de la materia de Diseño Digital Moderno.

Este repositorio contiene los distintos proyectos y prácticas desarrollados a lo largo del curso, implementados mediante lenguajes de descripción de hardware (Verilog) y sintetizados para FPGAs.

## Entorno de Desarrollo y Hardware Target
- **Software:** Xilinx ISE Project Navigator (Versión 8.2i)
- **FPGA Target:** Xilinx Spartan-3 (XC3S200, package FT256, speed grade -5)
- **Lenguaje:** Verilog

## Contenido del Repositorio
A continuación se presenta un resumen de las prácticas desarrolladas en este repositorio:

- **Práctica 2 (`practica2`):** Implementación de módulos de lógica combinacional básica con simulación y pruebas de testbench (archivos `.ant` y `.ano`).
- **Práctica 3 (`Practica3`):** Diseño de un circuito combinacional con múltiples salidas lógicas (`F0` a `F5`).
- **Práctica 9 (`Practica9_Cyberse`):** Diseño e implementación de un módulo Divisor de Frecuencia (`Divisor`), fundamental para la adaptación de las señales de reloj (`CLK`) en la tarjeta.
- **Práctica 10 (`Practica10_cyberse`):** Sistema síncrono que genera un bus de salida de 7 bits (`Salidas[6:0]`), ideal para el control y la multiplexación de displays de 7 segmentos.
- **Práctica 11 (`Practica11_cyberse`):** Diseño de un sistema secuencial (posible máquina de estados o contador) que expone el estado actual mediante un bus de salida de 6 bits (`Q[5:0]`).

## Cómo usar este repositorio
1. Clona el repositorio en tu equipo local.
2. Abre **Xilinx ISE Project Navigator**.
3. Utiliza la opción *File -> Open Project* para cargar el archivo `.ise` u `.xise` correspondiente al directorio de cada práctica.
4. Selecciona el módulo principal (Top Module) para ejecutar la síntesis (Synthesize - XST), la implementación (Implement Design) o generar el archivo de programación (Generate Programming File).
