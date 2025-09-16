[x, fs] = audioread("E:\SOICT-HUST ICT Program\Signal Processing\LAB\welcome.wav");

t = (0:length(x) - 1) / fs;
plot(t, x);
xlabel("Times (s)");
ylabel("Amplitude");
title("Audio Signal in Times");

X = fft(x);
f = (0:length(X)-1)*fs/length(X);
plot(f, abs(X));
xlabel("Tần số (Hz)");
ylabel("|X(f)|");
title("Phổ tín hiệu âm thanh");

fc = 1000;
[b, a] = butter(6, fc/(fs/2), "low");
y = filter(b, a, x);
sound(y, fs);

[b, a] = butter(6, fc/(fs/2), "high");
y = filter(b, a, x);
sound(y, fs);

delay = round(0.3 * fs);
atten = 0.6;
echo_signal = x;
echo_signal(delay+1:end) += atten * x(1:end-delay);
sound(echo_signal, fs);

audiowrite("E:\SOICT-HUST ICT Program\Signal Processing\LAB\output.wav", echo_signal, fs);


