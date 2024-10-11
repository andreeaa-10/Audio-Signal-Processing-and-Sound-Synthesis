function x = oscillator(freq, fs, dur, A, D, S, R)

  x = 0;
  t = 0 : 1 / fs : dur - 1 /fs;

  sine_wave = sin(2 * pi * freq * t);

  total_samples = length(t);

  attack_samples = floor(A * fs);
  decay_samples = floor(D * fs);
  release_samples = floor(R * fs);
  sustain_samples = total_samples - (attack_samples + decay_samples + release_samples);

  attack_envelope = linspace(0, 1, attack_samples);
  decay_envelope = linspace(1, S, decay_samples);
  sustain_envelope = ones(1, sustain_samples) * S;
  release_envelope = linspace(S, 0, release_samples);
  final_envelope = [attack_envelope, decay_envelope, sustain_envelope, release_envelope];

  x = sine_wave .* final_envelope;
  x = x';

endfunction

