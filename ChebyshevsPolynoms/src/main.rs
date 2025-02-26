use integrate::integrate;
use std::f64::consts::PI;

fn f(x: f64) -> f64 {
    x.powi(3) * x.cos()
}

fn chebyshev(x: f64, n: i32) -> f64 {
    (n as f64 * x.acos()).cos()
}

fn main() {
    let a = 0.0;
    let b = PI;
    
    let integral = integrate(f, a, b, 1e-6);
    
    println!("Интеграл от f(x) на [{}, {}] ≈ {}", a, b, integral);
}