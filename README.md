# Trabajo práctico: Enmascarar con SIMD

## Objetivos
Para comparar el rendimiento de las instrucciones SIMD con el de las instrucciones aritméticas y lógicas de la ALU, se desarrolló una aplicación de línea de comandos que combina dos imágenes usando una máscara de selección. Se implementaron dos versiones para esta operación, una en lenguaje C y otra utilizando instrucciones SIMD en lenguaje ensamblador.

Para ver en detalle el enunciado del TP puede leer el siguiente [PDF](https://github.com/Ging1991/ASM_MEZCLADOR/blob/master/Enunciado%20TP.pdf)

## Ficha técnica
- Sistema Operativo: Linux 32 bits
- Ensamblador: NASM
- Otros lenguajes: C

## Para ejecutar en casa
Desde Linux de 32 bits abrir una terminal en la carpeta de su preferencia y clonar el proyecto con GIT
```bash
git clone git@github.com:Ging1991/ASM_MEZCLADOR.git
```
Luego ir dentro de la carpeta de proyecto creada y ejecutar los siguientes comandos:
```bash
nasm -f elf32 enmascarar_asm.asm -o enmascarar_asm.o;
gcc -m32 -o main enmascarar_asm.o main.c;
./main "imagenes/RGB/imagen1.rgb" "imagenes/RGB/imagen2.rgb" "imagenes/RGB/mascara.rgb";
```
Notar que al ejecutar el main, las cadenas que siguen son las rutas validas para imágenes RGB que harán de imagen 1, imagen 2 y mascara. Estas están provistas en este repositorio, pero puede probar con imágenes RGB propias colocando la ruta allí. Recuerden que si lo hacen las imágenes deben tener las mismas dimensiones.

También puede ejecutar este programa simplemente llamando al archivo _compilacion.sh_
```bash
./compilacion.sh;
```

Es recomendable, aunque no necesario, eliminar los archivos _salida_c.rgb_ y _salida_asm.rgb_ antes de ejecutar el programa. Estos son los archivos de salida, si ya existen serán pisados, al borrarlos tenemos confirmación de que el programa esta efectivamente creándolos de nuevo.

Finalmente para poder visualizar los archivos de salida se debe usar el programa [Graphics Magick](http://www.graphicsmagick.org/) con los siguientes comandos
```bash
gm convert -size 500x500 -depth 8 salida_c.rgb salida_c.jpg
gm convert -size 500x500 -depth 8 salida_asm.rgb salida_asm.jpg
```

## Ejemplo de uso
Luego de haber clonado el proyecto, abro una terminal en la carpeta raíz donde se ven los siguientes archivos:

![Captura 1](/imagenes/capturas/tp_captura_1.png)

Vamos a utilizar para este ejemplo una imagen de Goku SSB, una de Vegeta SSB y como mascara un bloque mitad negro mitad blanco.

![Captura 2](/imagenes/capturas/tp_captura_2.png)

Luego de ejecutar el comando de compilación, veo que se crearon los archivos llamados _salida_c.rgb_ y _salida_asm.rgb_.

![Captura 3](/imagenes/capturas/tp_captura_3.png)

Finalmente para visualizar esto archivos usamos los comandos del GM

![Captura 4](/imagenes/capturas/tp_captura_4.png)

## Contribuciones
No se aceptan **pull request**. Este es un trabajo para entregar a la facultad. Una vez termine el periodo de pruebas ya no se no le hará mantenimiento.

Eventualmente, si todo sale bien, crearé algunos ejemplos funcionales en ensamblador, y entre ellos estará este trabajo, pero será un proyecto a parte con otros objetivos.
## Licencia
[Sin licencia](https://choosealicense.com/licenses/unlicense/)
## Enlaces útiles
[Ver perfil GitHub](https://github.com/Ging1991)

[Canal de Youtube](https://www.youtube.com/channel/UCsdNi2EY87x7vPVA9nNtyvA)