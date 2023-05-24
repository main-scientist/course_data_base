import tkinter as tk


class App:
    def __init__(self):
        self.set_confing()
        self.window = None

    def set_confing(self):
        self.window = tk.Tk()
        self.window.title('Application')
        self.window.geometry("1700x1000")
        self.window.configure(bg='#F5F5F5')

        self.entry_name = tk.Entry(self.window)
        self.entry_name.configure(background='white', borderwidth=1, foreground='black')
        self.entry_name.insert(0, ' Name')
        self.entry_name.pack()
        self.entry_name.place(x=750, y=350, width=200, height=30)
        self.entry_name.configure(insertbackground='black')

        self.entry_surname = tk.Entry(self.window)
        self.entry_surname.configure(background='white', borderwidth=1, foreground='black')
        self.entry_surname.insert(0, ' Surname')
        self.entry_surname.pack()
        self.entry_surname.place(x=750, y=400, width=200, height=30)
        self.entry_surname.configure(insertbackground='black')

        self.entry_password = tk.Entry(self.window)
        self.entry_password.configure(background='white', borderwidth=1, foreground='black')
        self.entry_password.insert(0, ' Password')
        self.entry_password.pack()
        self.entry_password.place(x=750, y=450, width=200, height=30)
        self.entry_password.configure(insertbackground='black')

        button = tk.Button(self.window, text="Сontinue", borderwidth=1, command=self.get_input)
        button.pack()
        button.place(x=780, y=500, width=150, height=30)


        self.start_app()

    def get_input(sefl):
        name = sefl.entry_name.get()
        surname = sefl.entry_surname.get()
        password = sefl.entry_password.get()
        print('name:', name)
        print('surname:', surname)
        print('password:', password)



    def start_app(self):
        self.window.mainloop()
