https://www.python.org/dev/peps/pep-0008/

https://google.github.io/styleguide/pyguide.html

https://docs.python-guide.org/writing/style/

---

## cheatsheet
https://www.pythoncheatsheet.org/


style guide
4 spaces as per PEP8

operators with spaces

Leave a blank line after blocks and before the next statement.

Do not add spaces inside parentheses.

Do not add spaces inside brackets or braces.

Avoid having lines of code that are longer than 79 characters (including whitespace) as per PEP8. 

Leading commas: Nope

Additional trailing comma: Yup.


Use snake_case when naming variables, functions, and instances.

Use PascalCase only when naming classes.

Use descriptive and meaningful names - tell what the function does, or what data type an object is

Avoid using close naming to prevent typo and confusion.

Use singular or base words in naming; avoid using plural and instead append singular with the data type.

Use abbreviations if they are clear and make for more readable and writable code.

**original

Use line breaks after open and before close dictionary braces only if a dictionary has multiple lines.

list spreads *

dict_list = [
    {'id': 1},
    {'id': 2},
]

Use single quotes '' for strings.

Do not use complex data type as default parameter.

No spacing in a function signature.

Never reassign parameters.

# good
some_fn(
  foo,
  bar,
  baz,
)

duplicate class members.


imports above non-import statements.

imports by import then from, and sort alphabetically.

UPPERCASE to declare constant

Declare one constant per line.

underscore _ when naming variables that are unused. Also a part of PEP8.


'''...''' for multi-line comments.

# for single line comments.

Put an empty line before the comment unless it’s on the first line of a block.

Start all comments with a space to make it easier to read.
