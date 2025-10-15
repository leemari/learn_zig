const std = @import("std");

pub fn divide(x: i32, y: i32) void {
    const result: i32 = @divExact(x, y);
    std.debug.print("{d} / {d} = {d}\n", .{ x, y, result });
}

pub fn greatest(x: i32, y: i32) i32 {
    return if (x >= y) x else y;
}
