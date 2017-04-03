//
//  VC1.m
//  dummyApp
//
//  Created by Ankush Kumar on 17/03/17.
//  Copyright © 2017 com.kulcare. All rights reserved.
//

#import "VC1.h"

@interface VC1 ()<UITableViewDelegate, UITableViewDataSource> {
    NSArray *arrNo;
    int number;
}


@end

@implementation VC1

- (void)viewDidLoad {
    [super viewDidLoad];
    arrNo = [NSArray arrayWithObjects:@"24", @"1", @"88", @"0", nil];
    int max = [[arrNo valueForKeyPath:@"@min.intValue"] intValue];
    NSLog(@"greater no is =%d", max);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 15;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier;
    UITableViewCell *cell;
    if (tableView.tag == 100) {
        cellIdentifier  = @"tableView1Identifier";
        cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
        cell.textLabel.text = @"table1";
    } else {
        cellIdentifier = @"tableView2Identifier";
        cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
        cell.textLabel.text = @"table2";
    }

    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}


-(IBAction)unwindToMain:(UIStoryboardSegue*)segue
{
    if ([[segue sourceViewController] respondsToSelector:@selector(getRobotPreferences)]) {

    }
}


@end
