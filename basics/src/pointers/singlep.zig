// Single item pointers contain the address of a single item in memory.
const std = @import("std");

pub fn doSingleItemPointer() void {
    var x: i32 = 99;
    std.debug.print("x is {}\n", .{x});

    // A pointer takes on the mutability of the value it references.
    // You are allowed to coerce a mutable pointer to a constant point because a const is a narrower type. A type that is narrower
    // than another type has more constraints.
    const x_ptr = &x;
    x_ptr.* = x_ptr.* * 2;
    std.debug.print("*x is {}\n", .{x_ptr.*});
    std.debug.print("x is {}\n", .{x});

    // *i32 is a mutable pointer
    // it can be coerced to an immutable one like so
    const x_ptr_immutable: *const i32 = x_ptr;
    // if we uncomment the next line we'd get - error: cannot assign to constant
    // make not of this for your function signatures, i.e., do not demand a mutable pointer where an immutable one will do, this
    // not only makes your code more reliable but also more maintainable as a developer can tell by the signature what to do.
    // x_ptr_immutable.* = 100;
    _ = x_ptr_immutable;
}
