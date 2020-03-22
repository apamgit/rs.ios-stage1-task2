#import "Blocks.h"

@implementation Blocks {
    NSArray* _array;
    BlockC _block;
}

- (BlockA) blockA {
    return [^(NSArray *array) {
        _array = [array copy];
    } copy];
}

- (BlockB) blockB {
    return [^(Class class) {} copy];
}

- (void) setBlockC: (BlockC) block {
    _block = [block copy];
};

@end



