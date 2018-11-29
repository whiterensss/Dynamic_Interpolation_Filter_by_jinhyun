function [] = fft_plot(data,fs,fftpoint)
%FFT_PLOT �� �Լ��� ��� ���� ��ġ
%   �ڼ��� ���� ��ġ
fftdat=abs(fftshift(fft(data,fftpoint)));
figure;plot(linspace(-fs/2/1e6,fs/2/1e6,fftpoint),db(fftdat/max(fftdat(:))));
xlim([0,fs/2/1e6]);
xlabel('Freq (Mhz)');
ylabel('db');
end

