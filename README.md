We started from this standard Processing example : https://processing.org/examples/button.html
and refactored (albeit with slightly different mechanics for choosing the background-color) 
it into an objected-oriented design with an abstract `Button`-class and 2 inheriting classes :
`CircleButton` and `RectButton`.

To familiarize yourself with the code, answer these (easy) questions:

- What is the difference between `normalColor` and `highlightColor`?
- What causes `Button` to be abstract?
- Which *properties* of the button do we set with the **constructors**?
- Which *properties* of the button do we set with **setters**?
- The `draw()`-method of our methods has the same signature (`void` return type and no parameters) 
  as the default `draw()` method in Processing. 
  Is this also the case for the `mousePressed()`-method?
- What is essentially the most important variable of the program, considering it's a program
  that changes the background color? (HINT: find it with `CTRL-F` to see on which lines it is used!)

Discuss these issues:

- The code is more readable. Do you agree or disagree?
    - Note that the goal of this program is all about changing the background color (`currentColor`)
      Is this more obvious in this OO-version?
    - Also note that `currentColor` is never used inside any of the `Button`-classes! Why not?
- The code is (*slightly*) longer than the original. Why? 
    - What if we had to extend both versions with 10 more buttons (= 10 more colors)?
- The advantage of inheritance is negligible. Wouldn't just a class for each button-type suffice?

Things to try as an exercise:

- Add a `getHighlightColor()`-method so we can use this value in our main program
- Let the *normal* color of the buttons be the actual color the background will change to
- Add more buttons (= more colors to change to!)
- Add another button-type (like an *Image*-button that changes images on mouseOver)
- ...

