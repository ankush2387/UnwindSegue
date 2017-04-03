//
//  ViewController.m
//  dummyApp
//
//  Created by Ankush Kumar on 17/03/17.
//  Copyright © 2017 com.kulcare. All rights reserved.
//

#import "ViewController.h"
#import "MenuVC.h"

@interface ViewController () {
    NSArray *arrMenu, *arrTable2;
}

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *viewListing1WidthConstraint;

@property (strong, nonatomic) IBOutlet UITableView *tableView2;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *viewListing2WidthConstraint;
@property (strong, nonatomic) IBOutlet UIImageView *userImage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //set image
    self.userImage.image = [UIImage imageNamed:@"calendar_photo"];
    self.userImage.layer.cornerRadius = self.userImage.frame.size.width / 2;
    self.userImage.clipsToBounds = YES;
    arrMenu = [NSMutableArray array];
    arrTable2 = [NSMutableArray array];
    arrMenu = [[NSArray alloc]initWithObjects:@"News",@"Comments",@"Photo",nil];
    arrTable2 = [[NSArray alloc]initWithObjects:@"Ankush",@"Address",@"Job", @"Work Location", @"Title",nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (tableView.tag == 100) {
        return arrMenu.count;
    } else {
        return arrTable2.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier;
    UITableViewCell *cell;
    if (tableView.tag == 100) {
        cellIdentifier  = @"tableView1Identifier";
        cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
        cell.textLabel.text = arrMenu[indexPath.row];
    } else {
        cellIdentifier = @"tableView2Identifier";
        cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
        cell.textLabel.text = arrTable2[indexPath.row];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (tableView.tag == 200) {
        self.viewListing1WidthConstraint.constant = 100;
        self.viewListing2WidthConstraint.constant = 250;
    } else {
        MenuVC *objVC = [self.storyboard instantiateViewControllerWithIdentifier:@"MenuVC"];
        if (indexPath.row == 2) {
            objVC.imageName = @"tag_photo";
        }

        objVC.strValue = arrMenu[indexPath.row];
        [self.navigationController pushViewController:objVC animated:YES];
    }

}

#pragma mark Navigation
- (void)navigateToAddOrSelectConditionVC {

}
- (IBAction)onClickMenuButton:(id)sender {
    if (self.viewListing1WidthConstraint.constant == 240) {
        self.viewListing1WidthConstraint.constant = 100;
        self.viewListing2WidthConstraint.constant = 240;
    } else {
        self.viewListing1WidthConstraint.constant = 240;
        self.viewListing2WidthConstraint.constant = 100;

    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
