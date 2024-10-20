<h1>
  Audio Signal Processing Overview
</h1>
I developed a strong understanding of <b>audio signal processing</b>, covered key concepts such as storing analog signals (stereo and mono), creating artificial sounds using oscillators, visualizing sound,
and applying filters to audio, with a focus on practical applications in music production. I investigated the <b>Fourier transformation</b> and its inverse. Learned how to analyze sound frequencies and
identify harmonic content using Fast Fourier Transformation algorithms.

<h3>
  Storing signals. From stereo to mono
</h3>
Analog signals are continuous signals, while digital signals are discrete signals. In order to store an analog signal, we need to convert it to a digital signal. This process is called analog-to
digital conversion. The process involves two main steps:
<br></br>
<ol>
  <li><b>Sampling:</b> The analog signal is sampled at regular intervals. The frequency at which the signal is sampled is called the sampling rate. The sampling rate is measured in Hertz (Hz). The higher the
sampling rate, the more accurately the digital signal represents the original analog signal.</li>
<li><b>Quantization:</b> The sampled signal is quantized. This means that the signal is divided into discrete levels. The number of levels is determined by the bit depth. The bit depth is measured in bits.
The higher the bit depth, the more accurately the digital signal represents the original analog signal.</li>
</ol>
<h3>
  Spectrogram
</h3>
A spectrogram is a visual representation of the spectrum of frequencies of a signal as it varies with time. It is a two-dimensional plot of the frequency w.r.t. time. It is a colored plot, where the color represents the amplitude of the signal at that time and frequency.
<br></br>
<p align="center">
    <img width="400" src="https://github.com/user-attachments/assets/0432dfe5-ca9f-4e6d-b406-73c5ab7a3d76">
</p>
