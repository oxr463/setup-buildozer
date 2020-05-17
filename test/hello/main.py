#!/usr/bin/env python 
from kivy.app import App
from kivy.uix.widget import Widget
from kivy.uix.label import Label

class helloWorld(App):
    def build(self):
        lbl=Label(text='Hello World!')
        return lbl

if __name__ == '__main__':
    helloWorld().run()
