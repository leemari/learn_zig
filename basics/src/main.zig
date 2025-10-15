const std = @import("std");
const mu = @import("./utils/math_utils.zig");
const sp = @import("./pointers/singlep.zig");

pub fn main() void {
    // divide(10, 3);
    // std.debug.print("Greater of 11 and 10 = {d}\n", .{mu.greatest(11, 10)});
    sp.doSingleItemPointer();
}
