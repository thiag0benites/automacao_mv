##################################################################################################################################
# Autor: Thiago Benites
# Decrição: Métodos para interação com objetos desktop
##################################################################################################################################
import time
import pyautogui

def imagem_exist(img, timeout=10):
    flag = False
    cont = 1

    try:
        while cont < timeout:
            cords = pyautogui.locateOnScreen(img)
            time.sleep(1)
            cont += 1
            if cords is not None:
                flag = True
                break

        if flag == False:
            raise Exception("*** A imagem " + img + " não foi apresentada!")

    # except ValueError as e:
    except ValueError:
        print(Exception)

def imagem_visivel(img, timeout=60):
    flag = False
    cont = 1

    try:
        while cont < timeout:
            cords = pyautogui.locateOnScreen(img)
            time.sleep(1)
            cont += 1
            if cords is not None:
                flag = True
                break

        return flag

    # except ValueError as e:
    except ValueError:
        print(Exception)      

def efetuar_click(img):
    try:
        cords = pyautogui.locateOnScreen(img)
        pyautogui.click(cords)
        print("*** Click efetudo em " + img)
    except:
        print("*** Erro ao tentar efetuar o click em " + img)

def digitar_texto(img, texto):
    try:
        cords = pyautogui.locateOnScreen(img)
        pyautogui.click(cords)
        pyautogui.typewrite(texto)
        print("*** Texto " + texto + " em " + img)
    except:
        print("*** Erro ao tentar digitar " + texto + " em " + img)