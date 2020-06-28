<a name="to_lift"><h2>Game Snake</h2></a>

#### Test task. Ruby with Ruby 2D gem.

#### List of contents
  - *[Task](#task)*
  - *[Description](#description)*
  - *[How to use](#how_to_use)*
  - *[System requirements](#requirements)*

<a name="task"><h4>Task</h4></a>

- Snake game only in Ruby.
- Use the Ruby 2d version > 0.9.2 library.
- The size of the game window is 250 by 250 pixels.
- Initial state of the snake - 3 elements.
- If the snake hit itself or the edge of the screen - the game ends.
- At the end of the game, points are counted and displayed in the console.
- Every time the snake “eats” an Apple - the speed increases by 1.

[Up](#to_lift)

<a name="description"><h4>Description</h4></a>

The game process consists in controlling a chain of consecutive pixels ("snakes") moving along a marked area of the screen, using the arrow keys of the keyboard: left, right, up and down. The goal of the game: to direct the "snake" to randomly appear on the screen points, in order to "eat" them. For each point, the player receives one point, the number of which is not stored outside the game and is output to the console after the game ends. The winner is the one who gets the most points.

[Up](#to_lift)

<a name="how_to_use"><h4>How to use</h4></a>

To install you will need a library manager. Run
following commands:

  + clone the program from the repository:

    `git clone https://github.com/occmium/snake.git`

  + go to the program folder:

    `cd snake`

  + to install Bundler:

    `gem install bundler`

  + install all of the required gems:

    `bundle install`

  + *if necessary, install the libraries that the Ruby 2d library depends on:*

    `sudo apt-get install aptitude`

    `sudo aptitude install libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev`

      *and install all of the required gems again*

      `bundle install`

  + start the game:

    `ruby snake.rb`

[Up](#to_lift)

<a name="requirements"><h4>System requirements</h4></a>

program|version
:---:|:---:
Ruby|2.7.0

[Up](#to_lift)
