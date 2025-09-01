{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": [],
      "authorship_tag": "ABX9TyO1xAXBYia3PPzsXQAMVvOy",
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "python3",
      "display_name": "Python 3"
    },
    "language_info": {
      "name": "python"
    }
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/mtouscarrascal/Prog_Civil_2025_2/blob/main/lol\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "code",
      "execution_count": 26,
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 110
        },
        "id": "6DyPtGK636dD",
        "outputId": "040c8824-4ae4-49b3-9ddf-cda87ddc0b50"
      },
      "outputs": [
        {
          "output_type": "error",
          "ename": "IndentationError",
          "evalue": "unexpected indent (ipython-input-2269178227.py, line 82)",
          "traceback": [
            "\u001b[0;36m  File \u001b[0;32m\"/tmp/ipython-input-2269178227.py\"\u001b[0;36m, line \u001b[0;32m82\u001b[0m\n\u001b[0;31m    elif opcion == \"2\":\u001b[0m\n\u001b[0m    ^\u001b[0m\n\u001b[0;31mIndentationError\u001b[0m\u001b[0;31m:\u001b[0m unexpected indent\n"
          ]
        }
      ],
      "source": [
        "# Calculadora de Costos de Materiales\n",
        "# Autor : []\n",
        "# Fecha : []\n",
        "# Descripcion : Programa para estimar cantidad y costo de materiales para un cimiento de concreto simple.\n",
        "\n",
        "# Diccionario con precios unitarios de materiales (USD)\n",
        "precios = {\n",
        "    \"cemento\": 8, # por saco de 42.5 kg\n",
        "    \"arena\": 20, # por m³\n",
        "    \"grava\": 25, # por m³\n",
        "    \"agua\": 1 # por m³\n",
        "}\n",
        "\n",
        "# Diccionario con dosificacion estandar por 1 m³ de concreto\n",
        "dosificacion = {\n",
        "    \"cemento\": 7, # sacos\n",
        "    \"arena\": 0.6, # m³\n",
        "    \"grava\": 0.8, # m³\n",
        "    \"agua\": 0.2 # m³\n",
        "}\n",
        "\n",
        "# Funcion para calcular el volumen del cimiento\n",
        "def calcular_volumen(largo, ancho, alto):\n",
        "    return largo * ancho * alto\n",
        "\n",
        "# Funcion para calcular la cantidad de cada material segun el volumen\n",
        "def calcular_materiales(volumen):\n",
        "  materiales = {material: volumen * cantidad for material, cantidad in dosificacion.items()}\n",
        "  return materiales\n",
        "\n",
        "# Funcion para calcular el costo total de los materiales\n",
        "def calcular_costo(materiales):\n",
        "  total = 0\n",
        "  for material, cantidad in materiales.items():\n",
        "    total += cantidad * precios[material]\n",
        "    return total\n",
        "\n",
        "# Funcion para mostrar resultados de manera clara con unidades\n",
        "def mostrar_resultados(volumen, materiales, costo_total):\n",
        "  print(\"\\n--- Resumen del Cimiento ---\")\n",
        "  print(f\"Volumen total: {volumen:.2f}m³\")\n",
        "  print(\"Cantidades de materiales requeridos:\")\n",
        "  for material, cantidad in materiales.items():\n",
        "    unidad = \"sacos\" if material == \"cemento\" else \"m³\"\n",
        "    print(f\"- {material.capitalize()}: {cantidad:.2f} {unidad}\")\n",
        "    print(f\"Costo total estimado de los materiales: ${costo_total:.2f} USD\\n\")\n",
        "\n",
        "    # Funcion para obtener una dimension numerica y positiva del usuario\n",
        "    def obtener_dimension_valida(prompt):\n",
        "      while True:\n",
        "        try:\n",
        "          valor = float(input(prompt))\n",
        "          if valor <= 0:\n",
        "            print(\"Error: El valor debe ser un número positivo.\")\n",
        "          continue\n",
        "          return valor\n",
        "        except ValueError:\n",
        "          print(\"Error: Entrada no válida. Por favor, ingrese un número.\")\n",
        "\n",
        "# --- Programa principal con menu ---\n",
        "def main ():\n",
        "  while True:\n",
        "    print(\"=== Calculadora de Costos de3 Materiales para Cimientos ===\")\n",
        "    print(\"1. Calcular un cimiento\")\n",
        "    print(\"2. Salir\")\n",
        "    opcion = input(\"Seleccione una opcion: \")\n",
        "\n",
        "    if opcion ==\"1\":\n",
        "      # Solicitar dimensiones\n",
        "      largo = obtener_dimension_valida(\"Ingrese el largo del cimiento en metros: \")\n",
        "      ancho = obtener_dimension_valida(\"Ingrese el ancho del cimiento en metros: \")\n",
        "      alto = obtener_dimension_valida(\"Ingrese el alto del cimiento en metros: \")\n",
        "\n",
        "      # Calcular volumen, materiales y costo\n",
        "      volumen = calcular_volumen(largo, ancho, alto)\n",
        "      materiales = calcular_materiales(volumen)\n",
        "      costo_total = calcular_costo(materiales)\n",
        "\n",
        "      # Mostrar resultados\n",
        "      mostrar_resultados(volumen, materiales, costo_total)\n",
        "\n",
        "        elif opcion == \"2\":\n",
        "           print(\"Saliendo del programa...\")\n",
        "           break\n",
        "        else:\n",
        "          print(\"Opcion no valida. Por favor, seleccione una opcion valida.\")\n",
        "\n",
        "if __name__ == \"__main__\":\n",
        "  main()\n"
      ]
    }
  ]
}