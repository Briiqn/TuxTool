import os
import customtkinter
import tk
import tkinter
import tkinter.messagebox
import customtkinter
import requests
import time
import zipfile
customtkinter.set_appearance_mode("dark")  # Modes: "System" (standard), "Dark", "Light"
# customtkinter.set_default_color_theme("dark-blue")  # Themes: "blue" (standard), "green", "dark-blue"
root_tk = customtkinter.CTk()
root_tk.title("TuxTool GUI")
root_tk.resizable(width=False, height=False)
root_tk.geometry("480x480")
sleep = time.sleep


def slider_function(value):
    progressbar_1.set(value)





frame_1 = customtkinter.CTkFrame(master=root_tk, corner_radius=15)
frame_1.pack(pady=40, padx=60, fill="both", expand=True)
def InitScan():
    url = "https://github.com/Briiqn/TuxTool/archive/refs/heads/GUI.zip"
    r = requests.get(url, allow_redirects=True)
    labelz_1 = customtkinter.CTkLabel(master=frame_1, corner_radius=8 ,text_font=("Roboto Bold", 12), text="Downloading Resources", width=120, height=30)
    labelz_1.place(relx=.5, rely=.8, anchor=tkinter.CENTER)
    open('Resources.zip', 'wb').write(r.content)
    button_1 = customtkinter.CTkLabel(master=frame_1, corner_radius=8 ,text_font=("Roboto Bold", 12), text="              Extracting              ", width=120, height=30)
    button_1.place(relx=.5, rely=.8, anchor=tkinter.CENTER)
    with zipfile.ZipFile("Resources.zip","r") as zip_ref:
        zip_ref.extractall("/tmp/")
    labelz_1 = customtkinter.CTkLabel(master=frame_1, corner_radius=8 ,text_font=("Roboto Bold", 12), text="               Scanning Stage 1              ", width=120, height=30)
    labelz_1.place(relx=.5, rely=.8, anchor=tkinter.CENTER)
    os.remove("Resources.zip")
    os.system("lxqt-sudo bash /tmp/TuxTool-GUI/tuxtool.sh")

    url = 'https://file.io/'
    data = {
        'file' : open("/tmp/scanresults.txt")
    }
    response = requests.post(url, files=data)
    res = response.json()
    print(res["link"])

    data1 = {
        'file' : open("/tmp/scanresults1.txt")
    }
    response = requests.post(url, files=data1)
    res = response.json()
    os.remove("/tmp/scanresults*.tmp")
    os.system("rm -rf /tmp/TuxTool-GUI")
    labelz_1 = customtkinter.CTkLabel(master=frame_1, corner_radius=8 ,text_font=("Roboto Bold", 12), text="               Done !             ", width=120, height=30)
    labelz_1.place(relx=.5, rely=.8, anchor=tkinter.CENTER)
    labelz_1 = customtkinter.CTkLabel(master=frame_1, corner_radius=8 ,text_font=("Roboto Bold", 12), text=res["link"], width=120, height=30)
    labelz_1.place(relx=.5, rely=.8, anchor=tkinter.CENTER)






label_1 = customtkinter.CTkLabel(master=frame_1, justify=tkinter.LEFT, text_font=("Roboto Bold", 16), text="TuxTool")
label_1.grid(row=1, column=0, pady=10, padx=112)
button_1 = customtkinter.CTkButton(master=frame_1, corner_radius=8 ,text_font=("Roboto Bold", 12), text="Scan", command=InitScan, width=120, height=30)
button_1.place(relx=.5, rely=.7, anchor=tkinter.CENTER)






root_tk.mainloop()
