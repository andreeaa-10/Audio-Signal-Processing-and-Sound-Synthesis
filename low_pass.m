function signal = low_pass(signal, fs, cutoff_freq)
  signal_init = signal;
  signal = fft(signal);

  f(:, 1) = (0 : (length(signal) - 1)) * fs / (length(signal));

  mask = f < cutoff_freq;

  signal_filtered = signal .* mask;

  signal = ifft(signal_filtered);

  signal = signal / max(abs(signal));

endfunction

