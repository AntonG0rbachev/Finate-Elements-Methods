fn f(x: f64) -> f64 {
    return x.powf(3.0) * x.cos();
}

fn main() {
    println!("{}", f(4.0));
}