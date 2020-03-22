#import "Dates.h"

@implementation Dates

- (NSString *)textForDay:(NSString *)day month:(NSString *)month year:(NSString *)year {
    
    
    NSDateFormatter *date_format = [[NSDateFormatter alloc] init];
    date_format.dateFormat = @"dd/MM/yyyy";
        
    NSString *date_string = [NSString stringWithFormat:@"%@, %@, %@", day, month, year];
    
    NSDate *date = [date_format dateFromString:date_string];
    
        date_format.locale = [[NSLocale alloc] initWithLocaleIdentifier: @"ru_RU"];;
        date_format.dateFormat = @"dd MMMM, EEEE";
        
        if (date) {
            return [date_format stringFromDate:date];
        } else {
            return @"Такого дня не существует";
        }
    }

@end
