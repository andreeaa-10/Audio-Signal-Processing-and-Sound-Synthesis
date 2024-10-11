function [S f t] = spectrogram(signal, fs, window_size)
  signal_size = length(signal);
  num_windows = floor(signal_size / window_size);

	S = zeros(window_size, num_windows);

    for i = 1 : num_windows
        hann_window = hanning(window_size);

        window = signal((i - 1) * window_size + 1 : i * window_size);

        window_hann = window .* hann_window;

        fft_result = fft(window_hann, window_size * 2);

        fft_result = abs(fft_result(1:window_size));

        S(:, i) = fft_result;
    endfor

    f(:, 1) = (0:(window_size - 1))' * fs / (2 * window_size);

    t(:, 1) = ((0:(num_windows - 1)) * window_size) / fs;

endfunction


