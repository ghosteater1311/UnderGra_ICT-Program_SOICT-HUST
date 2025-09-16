import matplotlib.pyplot as plt
import numpy as np
import wave
import sys
amthanh = wave.open(r"D:\Junior\SignalProcess\Main\Week1\sound_a.wav")
print ( "Tần số lấy mẫu là : ",amthanh.getframerate())
print ( "Số bits biểu diễn cho mẫu là : ",amthanh.getsampwidth()*8)
print( "Số kênh âm thanh là : ",amthanh.getnchannels())
signal = amthanh.readframes(-1)
signal = np.fromstring(signal, 'Int16')
fs = amthanh.getframerate()
Time=np.linspace(0, len(signal)/fs, num=len(signal))
plt.figure(1)
plt.title('Signal Wave...')
plt.plot(Time,signal)
plt.show()