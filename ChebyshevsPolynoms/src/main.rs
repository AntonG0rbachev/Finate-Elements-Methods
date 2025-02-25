fn f(x: f64) -> f64 {
    return x.powf(3.0) * x.cos();
}

fn chebyshev(x: f64, n: i32) -> f64 {
    return (x.acos() * f64::from(n)).cos();
}

fn main() {
    println!("{}", chebyshev(f(4.0), 3));
}