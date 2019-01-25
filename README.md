# LogParserKata

I agree with Katrina Owen when she says, "Practice doesn't make perfect. Practice makes permanent." Which is her way of saying it's important to practice in order to get better at something, but this practice needs to be deliberate. You need to make a concious decision about what you want to practice and how before you start. Thus, I've used this little project as an opportunity to practice separation of concerns and behaviour driven design as a means of getting to a cleanly designed piece of software that serves one purpose and does it well.

One other thing I tried while writing this code was following an approach originally reffered to as stacked diffs (see https://jg.gg/2018/09/29/stacked-diffs-versus-pull-requests/). But when using GitHub or similar tools, the way to simulate this approach is through stacked pull requests (see https://graysonkoonce.com/stacked-pull-requests-keeping-github-diffs-small/). The “stacked diff” workflow is a branching model that allows to build potentially big features as a whole without overwhelming the reviewer(s) by allowing them to review everything step by step. It also forces you into a more structured approach while writing the code, because every commit has to be meaningful and able to act as a building block for the code that follows. It was my first time trying this approach, so not every single commit was self-contained, but I've still learned something along the way. If you're interested you can see the progression through pull requests 1 – 3.

Usually it's a good idea to solve a fairly simple problem when practicing to not distract from the goal of the practice too much. Hence, this exercise revolves around a simple web server log file. The code I've written processes it to answer two questions:

1. How many total views has every logged path accumulated?
2. How many unique views has every logged path accumulated?

I've set the whole thing up as a Ruby gem, because I could then follow the conventional structure this approach provides. Again, fewer distractions meant I could better focus on the actual practice.

## Usage

In the root folder of the project simply execute either `bundle install` or `bin/setup` to pull in the libraries needed to run the code. Please note that you'll need Ruby version 2.3 or higher to be able to run this.

Once you've bundled the dependencies, simply run the programme passing it a web server log file. There's an exemplary file included in the project, so the following works:

`bin/parse spec/fixtures/webserver.log`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).


