script;

use sway_libs::i64::I64;

fn main() -> bool {
    let one = I64::from(1);
    let mut res = one + I64::from(1);
    assert(res == I64::from(2));

    res = I64::from(10) - I64::from(11);
    assert(res == I64::neg_from(1));

    res = I64::from(10) * I64::neg_from(1);
    assert(res == I64::neg_from(10));

    res = I64::from(10) * I64::from(10);
    assert(res == I64::from(100));

    res = I64::from(10) / I64::neg_from(1);
    assert(res == I64::neg_from(10));

    res = I64::from(10) / I64::from(5);
    assert(res == I64::from(2));

    //flip test
    assert(one.flip() == I64::neg_from(1));
    //ge test
    assert(one >= one);
    assert(I64::from(2) >= one);
    assert(one >= one.flip());
    assert(one.flip() >= I64::from(2).flip());
    //le test
    assert(one <= one);
    assert(one <= I64::from(2));
    assert(one.flip() <= one);
    assert(I64::from(2).flip() <= one.flip());

    true
}
