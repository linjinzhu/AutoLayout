# AutoLayout

With pure code to facilitate the realization AutoLayout technology to improve the efficiency of writing UI.

## File Directory

- AutoLayout/
- - AutoLayoutDemo/ (example)
- - src/ (source code)

## Installation

1. Drag src directory to your project folder.

## Basic Use

1. Import "UIView+AutoLayout.h" and "NSLayoutConstraint+VisualFormat" where you will use autolayout to build your interface.
2. Create UIView's subclass in your ViewController's and than apply autolayout. As follows :
	
		self.view.backgroundColor = [UIColor whiteColor];
		_redView = [[UIView alloc] init];
		_redView.backgroundColor = [UIColor redColor];
		[_redView setTranslatesAutoresizingMaskIntoConstraints:NO];
		[self.view addSubview:_redView];

		_blueView = [[UIView alloc] init];
	    _blueView.backgroundColor = [UIColor blueColor];
    	[_blueView setTranslatesAutoresizingMaskIntoConstraints:NO];
	    [self.view addSubview:_blueView];
	    
		[_redView constraintWidth:50];
	    [_redView constraintHeight:50];
    	[_redView centerHorizontallyToView:self.view];
	    [_redView centerVerticallyToView:self.view];

    	[_blueView constraintWidth:20];
	    [_blueView constraintHeight:20];
	    [_blueView centerHorizontallyToView:self.view];
    	[_blueView constraintToBottomOfView:_redView withPadding:20];