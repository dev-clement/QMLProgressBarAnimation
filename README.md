# QML ProgressBar Animation

This repository is about using animation for some kind of circular progress bar. That's kind of a simple idea, actually you are making the followings:
1. You make a `Shape` that will going to be the root component that is going to be drawn to the screen as a progress bar. This shape is going to be configured with a `width` and `height` values, as long with a property named `progress` that will keep the percentage (value between 0 and 1) for the next delay to be recomputed.
2. You are using `ShapePath` that will be used for drawing the shape onto the screen thanks to given Path. As we will create a circular progress bar, it's okay to pass a `PathAngleArc` component in order to draw the shape onto the screen.
3. For kind of beauty of this animation, we also set a `Text` component inside of the `Shape`, that will display the percentage of the progress onto the screen along with the circular progress.

## Result

![Progress Animaiton](./assets/progressbarAnimation.gif)

