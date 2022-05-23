
import os
import customtkinter
import tk
import tkinter
import tkinter.messagebox
import customtkinter
import requests
import time
import zipfile
root_tk = customtkinter.CTk()
root_tk.title("TuxTool GUI")
root_tk.resizable(width=False, height=False)
root_tk.geometry("480x480")
sleep = time.sleep

customtkinter.set_appearance_mode("dark")
customtkinter.set_default_color_theme("blue")

def slider_function(value):
    progressbar_1.set(value)

#frame = customtkinter.CTkFrame(master=root_tk,width=1920,height=1080,corner_radius=0,fg_color="#3A3B3C")
#frame.place(anchor=tkinter.CENTER)


frame_1 = customtkinter.CTkFrame(master=root_tk, corner_radius=15)
frame_1.pack(pady=40, padx=60, fill="both", expand=True)
def InitScan():
    button_1 = customtkinter.CTkLabel(master=frame_1, corner_radius=8 ,text_font=("Roboto Bold", 12), text="              Extracting              ", width=120, height=30)
    button_1.place(relx=.5, rely=.8, anchor=tkinter.CENTER)
    url = "https://github.com/Briiqn/TuxTool/archive/refs/heads/GUI.zip"
    r = requests.get(url, allow_redirects=True)
    labelz_1 = customtkinter.CTkLabel(master=frame_1, corner_radius=8 ,text_font=("Roboto Bold", 12), text="Downloading Resources", width=120, height=30)
    labelz_1.place(relx=.5, rely=.8, anchor=tkinter.CENTER)
    open('Resources.zip', 'wb').write(r.content)
    with zipfile.ZipFile("Resources.zip","r") as zip_ref:
        zip_ref.extractall("/tmp/")
    os.remove("Resources.zip")
    labelz_4 = customtkinter.CTkLabel(master=frame_1, corner_radius=8 ,text_font=("Roboto Bold", 12), text="               Scanning Stage 1              ", width=120, height=30)
    labelz_4.place(relx=.5, rely=.8, anchor=tkinter.CENTER)
    os.system("touch /tmp/scanresults.txt")
    os.system("pkexec su "+os.getlogin()+" -c echo $(whoami) && bash /tmp/TuxTool-GUI/generic/clearhist.sh && bash /tmp/TuxTool-GUI/generic/minecraftgeneric1.sh && bash /tmp/TuxTool-GUI/generic/minecraftgeneric2.sh && bash /tmp/TuxTool-GUI/generic/minecraftgeneric3.sh && bash /tmp/TuxTool-GUI/generic/minecraftgeneric4.sh")
    labelz_1 = customtkinter.CTkLabel(master=frame_1, corner_radius=8 ,text_font=("Roboto Bold", 12), text="               Scanning Stage 2              ", width=120, height=30)
    labelz_1.place(relx=.5, rely=.8, anchor=tkinter.CENTER)
    os.system("cd /tmp/TuxTool-GUI/check/ &&  bash memcheck.sh && bash modcheats.sh && bash NativeJavaAgentCheck.sh && pkexec bash /tmp/TuxTool-GUI/check/vmcheck.sh && bash vpncheck.sh && bash winecheck.sh ")
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
    res1= response.json()
    labelz_ = customtkinter.CTkLabel(master=frame_1, corner_radius=8 ,text_font=("Roboto Bold", 12), text="               Done !             ", width=120, height=30)
    labelz_.place(relx=.5, rely=.7, anchor=tkinter.CENTER)
    labelz_1 = customtkinter.CTkLabel(master=frame_1, corner_radius=8 ,text_font=("Roboto Bold", 12), text=res["link"], width=120, height=30)
    labelz_1.place(relx=.5, rely=.8, anchor=tkinter.CENTER)
    labelz_2 = customtkinter.CTkLabel(master=frame_1, corner_radius=8 ,text_font=("Roboto Bold", 12), text=res1["link"], width=120, height=30)
    labelz_2.place(relx=.5, rely=.7, anchor=tkinter.CENTER)
    os.system("rm -rf /tmp/TuxTool-GUI/")
    os.system("rm /tmp/TuxTool*.tmp")
    os.remove("/tmp/scanresults.txt")
    os.remove("/tmp/scanresults1.txt")






label_1 = customtkinter.CTkLabel(master=frame_1, justify=tkinter.LEFT, text_font=("Roboto Bold", 16), text="TuxTool")
label_1.grid(row=1, column=0, pady=10, padx=112)
button_1 = customtkinter.CTkButton(master=frame_1, corner_radius=8 ,text_font=("Roboto Bold", 12), text="Scan", command=InitScan, width=120, height=30)
button_1.place(relx=.5, rely=.7, anchor=tkinter.CENTER)






root_tk.mainloop()
