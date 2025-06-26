
// Main Window Dimensions
final float RATIO = 0.8;
final int WIN_HEIGHT = 960;
final int WIN_WIDTH = int(WIN_HEIGHT * RATIO);

// Flocking Padding
final int PAD = 80;
final int L_PAD = PAD;
final int T_PAD = PAD;
final int R_PAD = WIN_WIDTH - PAD;
final int B_PAD = WIN_HEIGHT - PAD;
final int FLOCK_W = R_PAD - L_PAD;
final int FLOCK_H = B_PAD - T_PAD;

// Border Padding
final int BORDER_PAD = 30;
final int BORDER_X = L_PAD - BORDER_PAD;
final int BORDER_Y = T_PAD - BORDER_PAD;
final int BORDER_W = R_PAD - BORDER_X + BORDER_PAD;
final int BORDER_H = B_PAD - BORDER_Y + BORDER_PAD;
