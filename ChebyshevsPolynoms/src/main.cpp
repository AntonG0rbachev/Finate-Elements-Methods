include <functional>
include <stdio.h>
include <math.h>

double f(x) {
    return pow(x, 3) * math::cos(x);
}

double simpsonIntegral(double a, double b, int n, const std::function<double (double)> &f) {
    const double width = (b - a) / n;

    double simpson_integral = 0;
    for(int step = 0; step < n; step++) {
        const double x1 = a + step * width;
        const double x2 = a + (step + 1) * width;

        simpson_integral += (x2 - x1) / 6.0 * (f(x1) + 4.0 * f(0.5 * (x1 + x2)) + f(x2));
    }

    return simpson_integral;
}

double chebyshev(double x, int n) {
    return math::cos(n * math::acos(x));
}