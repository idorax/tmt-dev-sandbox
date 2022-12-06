# [Type Checking in Python][001]

[001]: https://www.blog.pythonlibrary.org/2020/04/15/type-checking-in-python/

Type checking or hinting is a newer feature of Python that was added in Python 3.5.
Type hinting is also known as type **annotation**. Type hinting is adding special syntax
to functions and variable declarations that tell the developer what type the argument or
variable is.

类型检查或类型提示是Python3.5添加的一项较新的功能。
类型提示也称为**类型注释**。
类型提示是向函数和变量声明添加特殊语法，告诉开发人员参数或变量的类型。

Python does not enforce the type hints. You can still change types at will in Python
because of this. However some integrated development environments, such as PyCharm,
support type hinting and will highlight typing errors. You can also use a tool called
Mypy to check your typing for you. You will learn more about that tool later on
in this article.

Python不强制执行类型提示。 因此，您仍然可以在Python中随意更改类型。
然而，一些集成开发环境，如PyCharm，支持类型提示并会突出显示输入错误。
您还可以使用名为Mypy的工具来检查您的输入。
您将在本文后面了解有关该工具的更多信息。

You will be learning about the following:

* Pros and Cons of Type Hinting
* Built-in Type Hinting / Variable Annotation
* Collection Type Hinting
* Hinting Values That Could be None
* Type Hinting Functions
* What To Do When Things Get Complicated
* Classes
* Decorators
* Aliasing
* Other Type Hints
* Type Comments
* Static Type Checking

Let's get started!

## 1 - Pros and Cons of Type Hinting

**类型提示的优点和缺点**

There are several things to know about up front when it comes to type hinting in Python.
Let's look at the pros of type hinting first:

* Type hints are nice way to document your code in addition to docstrings
* Type hints can make IDEs and linters give better feedback and better autocomplete
* Adding type hints forces you to think about types, which may help you make good decisions during
  the design of your applications.

当涉及到 Python 中的类型提示时，有几件事需要预先了解。 我们先来看看类型提示的优点：

* 除了文档字符串之外，类型提示也是为代码做注解的好方法
* 类型提示可以使IDE和linter提供更好的反馈和更好的自动完成功能
* 添加类型提示会迫使您考虑类型，这可能会帮助您在应用程序设计过程中做出正确的决策

Adding type hinting isn't all rainbows and roses though. There are some downsides:

* The code is more verbose and arguably harder to write
* Type hinting adds development time
* Type hints only work in Python 3.5+. Before that, you had to use type comments
* Type hinting can have a minor start up time penalty in code that uses it, especially if you
  import the `typing` module.

不过，添加类型提示并不全是彩虹和玫瑰。 有一些缺点：

* 代码更冗长并且可能更难编写
* 类型提示增加了开发时间
* 类型提示仅适用于Python 3.5+。 在此之前，您必须使用类型注释
* 类型提示可能会在使用它的代码中产生较小的启动时间损失，特别是在导入`typing`模块时

When should you use type hinting then? Here are some examples:

* If you plan on writing short code snippets or one-off scripts, you don't need to include type
  hints.
* Beginners also don't need to add type hints when learning Python
* If you are designing a library for other developers to use, adding type hints may be a good idea
* Large Python projects (i.e. thousands of lines of code) also can benefit from type hinting
* Some core developers recommend adding type hinting if you are going to write unittests

那么什么时候应该使用类型提示呢？ 这里有些例子：
* 如果您计划编写简短的代码片段或一次性脚本，则不需要包含类型提示
* 初学者学习Python时也不需要添加类型提示
* 如果您正在设计供其他开发人员使用的库，添加类型提示可能是一个好主意
* 大型Python项目（即数千行代码）也可以从类型提示中受益
* 如果您要编写单元测试，一些核心开发人员建议添加类型提示

Type hinting is a bit of a contentious topic in Python. You don't need to use it all the time,
but there are certain cases where type hinting helps.

类型提示在Python中是一个有争议的话题。 您不需要一直使用它，但在某些情况下类型提示会有所帮助。

Let's spend the rest of this article learning how to use type hinting!

让我们在本文的其余部分学习如何使用类型提示！


## 2 - Built-in Type Hinting / Variable Annotation

**内置类型提示/变量注释**

You can add type hinting with the following built-in types:

您可以使用以下内置类型添加类型提示：

* `int`
* `float`
* `bool`
* `str`
* `bytes`

These can be used both in functions and in variable annotation. The concept of variable annotation
was added to the Python language in 3.6. Variable annotation allows you to add type hints to
variables.

这些可以在函数和变量注释中使用。变量注释的概念是在Python 3.6中添加的。
变量注释允许您向变量添加类型提示。

Here are some examples:

```python
x: int  # a variable named x without initialization
y: float = 1.0  # a float variable, initialized to 1.0
z: bool = False
a: str = 'Hello type hinting'
```

You can add a type hint to a variable without initializing it at all, as is the case in the first
line of code. The other 3 lines of code show how to annotate each variable and initialize them
appropriately.

您可以向变量添加类型提示，而无需对其进行初始化，就像第一行代码中的情况一样。
其他3行代码展示了如何注释每个变量并适当地初始化它们。

Let's see how you would add type hinting for collections next!

接下来让我们看看如何为集合添加类型提示！

```bash
# -------------------------------------
>>> annotate    ['ænəteɪt]      v. 注解
>>> annotation  [ˌænə'teɪʃn]    n. 注解
# -------------------------------------
```

## 3 - Sequence Type Hinting

**序列类型提示**

A collection is a group of items in Python. Common collections or sequences are `list`, `dict`,
`tuple` and `set`. However, you cannot annotate variables using these built-in types. Instead,
you must use the typing module.

集合是Python中的一组项目。常见的集合或序列有`列表`、`字典`、`元组`和`集合`。
但是，您不能使用这些内置类型来注释变量。相反，您必须使用`typing`模块.

Let's look at a few examples:

```python
>>> from typing import List
>>> names: List[str] = ['Mike']
>>> names
['Mike']
```

Here you created a list with a single `str` in it. This specifies that you are creating
a list of strings. If you know the list is always going to be the same size, you can
specify each item's type in the list:

在这里，您创建了一个包含单个str的列表。这指定您正在创建一个字符串列表。如果您知道列表
始终具有相同的大小，则可以在列表中指定每个项目的类型：

```python
>>> from typing import List
>>> names: List[str, str] = ['Mike', 'James']
```

Hinting tuples is very similar:

提示元组非常相似：

```python
>>> from typing import Tuple
>>> s: Tuple[int, float, str] = (5, 3.14, 'hello')
```

Dictionaries are a little different in that you should hint types the key and values are:

字典有点不同，您应该提示键和值的类型是：

```python
>>> from typing import Dict
>>> d: Dict[str, int] = {'one': 1}
```

If you know a collection will have variable size, you can use an ellipses:

如果您知道集合的大小可变，则可以使用省略号：

```python
>>> from typing import Tuple
>>> t: Tuple[int, ...] = (4, 5, 6)
```

Now let's learn what to do if an item is of type `None`!

现在让我们了解如果项目的类型为`None`该怎么办！


```yaml
# ---------------------------------------------
>>> ellipse     [ɪ'lɪps]    n. 椭圆
>>> ellipses    [ɪ'lɪpsiːz] n. 椭圆的复数形式；
>>>                            省略号
# ---------------------------------------------
```


## 4 - Hinting Values That Could be None

**提示可能没有的值**

Sometimes a value needs to be initialized as `None`, but when it gets set later, you want it to
be something else.

有时一个值需要初始化为`None`，但当稍后设置它时，您希望它是其他值。

For that, you can use `Optional`:

为此，您可以使用**`Optional`**


```python
>>> from typing import Optional
>>> result: Optional[str] = my_function()
```

On the other hand, if the value can never be `None`, you should add an assert to your code:

另一方面，如果该值永远不可能为`None`，则应在代码中添加断言：

```python
>>> assert result is not None
```

Let's find out how to annotate functions next!

接下来我们来看看如何注释函数！


## 5 - Type Hinting Functions

**提示函数**

Type hinting functions is similar to type hinting variables. The main difference is that you can
also add a return type to a function.

类型提示函数与类型提示变量类似。主要区别在于您还可以向函数添加返回类型。

Let's take a look at an example:


```python
def adder(x: int, y: int) -> None:
    print(f'The total of {x} + {y} = {x+y}')
```

This example shows you that `adder()` takes two arguments, `x` and `y`, and that they should both
be integers. The return type is `None`, which you specify using the `->` after the ending
parentheses but before the colon.

这个示例向您展示了函数`adder()`接受两个参数`x`和`y`，并且它们都应该是整数。
返回类型为`None`，您可以在结束括号之后、冒号之前使用`->`指定它。

Let's say that you want to assign the `adder()` function to a variable.
You can annotate the variable as a `Callable` like this:

假设您要将`adder()`函数分配给一个变量。您可以将变量注释为`Callable`，如下所示：

```python
from typing import Callable

def adder(x: int, y: int) -> None:
    print(f'The total of {x} + {y} = {x+y}')

a: Callable[[int, int], None] = adder
```

The **`Callable`** takes in a list of arguments for the function. It also allows you to specify
the return type.

**`Callable`**接受函数的参数列表。它还允许您指定返回类型。

Let's look at one more example where you pass in more complex arguments:

让我们再看一个示例，其中传递了更复杂的参数：

```python
from typing import Tuple, Optional

def some_func(x: int, y: Tuple[str, str],
              z: Optional[float]: = None): -> Optional[str]:
    if x > 10:
        return None
    return 'You called some_func'
```

For this example, you created `some_func()` that accepts 3 arguments:

在此示例中，您创建了接受3个参数的`some_func()`：

* an int
* a two-item tuple of strings
* an optional float that is defaulted to None

*Note that when you use defaults in a function, you should add a space before and after the equals
sign when using type hints.*

请注意，在函数中使用默认值时，应在使用类型提示时在等号前后添加空格。

It also returns either `None` or a string.

它还返回 None 或字符串。

Let's move on and discover what to do in even more complex situations!

让我们继续探索在更复杂的情况下该怎么做！

## 6 - What To Do When Things Get Complicated

**当事情变得复杂时该怎么办**

You have already learned what to do when a value can be `None`, but what else can you do when
things get complicated? For example, what do you do if the argument being passed in can be multiple
different types?

您已经了解了当值为`None`时该怎么做，但是当事情变得复杂时您还能做什么呢？
例如，如果传入的参数可以是多种不同的类型，该怎么办？

For that specific use case, you can use `Union`:

对于该特定用例，您可以使用`Union`：

```python
>>> from typing import Union
>>> z: Union[str, int]
```

What this type hint means is that the variable, `z`, can be either a string or an integer.

此类型提示的含义是变量`z`可以是字符串或整数。

There are also cases where a function may take in an object. If that object can be one of several
different objects, then you can use `Any`.

在某些情况下，函数可能会接收对象。如果该对象可以是多个不同对象之一，那么您可以使用`Any`。

```python
x: Any = some_function()
```

Use `Any` with caution because you can't really tell what it is that you are returning.
Since it can be "any" type, it is like catching all exceptions with a bare except.
You don't know what exception you are catching with that and you also don't know what type you
are hinting at when you use Any.

请谨慎使用`Any`，因为您无法真正分辨出您要返回的是什么。 因为它可以是"any"类型，
所以就像用一个纯粹的except捕获所有异常一样。 你不知道你用它捕获了什么异常，
你也不知道当你使用Any时你暗示什么类型。

## 7 - Classes

**类**

If you have a `class` that you have written, you can create an annotation for it as well.

如果您已经编写了一个类，您也可以为其创建一个注释。

```python
>>> class Test:
...     pass
...
>>> t: Test = Test()
```

This can be really useful if you are passing around instances of your class between functions
or methods.

如果您在函数或方法之间传递类的实例，这非常有用。


## 8 - Decorators

**装饰器**

Decorators are a special beast. They are functions that take other functions and modify them.
You will learn about decorators later on in this book.

装饰器是一种特殊的野兽。它们是接受其他函数并修改它们的函数。您稍后将在本书中了解装饰器。

Adding type hints to decorators is kind of ugly.

向装饰器添加类型提示有点丑陋。

Let's take a look:


```python
>>> from typing import Any, Callable, TypeVar, cast
>>> F = TypeVar('F', bound=Callable[..., Any])
>>> def my_decorator(func: F) -> F:
        def wrapper(*args, **kwds):
            print("Calling", func)
            return func(*args, **kwds)
        return cast(F, wrapper)
```

A `TypeVar` is a way to specify a custom type. You are creating a custom `Callable` type that can
take in any number of arguments and returns Any. Then you create a decorator and add the new type
as a type hint for the first argument as well as the return type.

`TypeVar`是一种指定自定义类型的方法。您正在创建一个自定义`Callable`类型，它可以接受任意数量的参数
并返回`Any`。然后创建一个装饰器并添加新类型作为第一个参数以及返回类型的类型提示。


The `cast` function is used by Mypy, the static code checker utility only. It is used to cast
a value to the specified type. In this case, you are casting the `wrapper` function as a type `F`.

强制转换函数`cast`仅由静态代码检查实用程序Mypy使用。
它用于将值转换为指定类型。 在本例中，您将`wrapper`函数转换为类型`F`。


## 9 - Aliasing

**别名**

You can create a new name for a type. For example, let's rename the `List` type to `Vector`:

您可以为类型创建新名称。 例如，我们将`List`类型重命名为`Vector`：

```python
>>> from typing import List
>>> Vector = List[int]
>>> def some_function(a: Vector) -> None:
...     print(a)
```

Now `Vector` and `List` refer to the same type hint. Aliasing a type hint is useful for
complex types.

现在`Vector`和`List`引用相同的类型提示。类型提示的别名对于复杂类型很有用。

The `typing` documentation has a good example that is reproduced below:

`typing`文档中有一个很好的例子，如下：

```python
from typing import Dict, Tuple

ConnectionOptions = Dict[str, str]
Address = Tuple[str, int]
Server = Tuple[Address, ConnectionOptions]
```

This code allows you to nest types inside of other types while still being able to write
appropriate type hints.

此代码允许您将类型嵌套在其他类型中，同时仍然能够编写适当的类型提示。


## 10 - Other Type Hints

**其他类型提示**

There are several other type hints that you can use as well. For example, there are generic
mutable types such as MutableMapping that you might use for a custom mutable dictionary.

您还可以使用其他几种类型提示。例如，您可以将通用可变类型（例如MutableMapping）用于自定义可变字典。

There is also a ContextManager type that you would use for context managers.

还有一个 ContextManager 类型可用于上下文管理器。

Check out the full documentation for all the details of all the various types:

查看完整文档，了解所有不同类型的所有详细信息：

* https://docs.python.org/3/library/typing.html


## 11 - Type Comments

**Type注释**

Python 2.7 development ended January 1, 2020. However, there will be many lines of legacy
Python 2 code that people will have to work with for years to come. Type hinting was never
added to Python 2. But you can use a similar syntax as comments.

Python 2.7开发已于2020年1月1日结束。然而，人们在未来几年中仍将不得不使用许多行遗留的Python 2代码。
类型提示从未添加到Python 2中。但是您可以使用类似的语法作为注释。

Here is an example:

```python
def some_function(a):
    # type: str -> None
    print(a)
```

To make this work, you need to have the comment start with `type:`. This line must be on the same
or following line of the code that it is hinting. If the function takes multiple arguments, then
you would separate the hints with commas:

为了使其工作，您需要让注释以`type:`开头。此行必须位于它所提示的代码的同一行或后续行。
如果函数接受多个参数，那么您可以用逗号分隔提示：

```python
def some_function(a, b, c):
    # type: (str, int, int) -> None
    print(a)
```

Some Python IDEs may support type hinting in the docstring instead. PyCharm lets you do the
following for example:

某些Python IDE可能支持文档字符串中的类型提示。 例如，PyCharm允许您执行以下操作：

```python
def some_function(a, b):
    """
    @type a: int
    @type b: float
    """
```

Mypy will work on the other comments, but not on these. If you are using PyCharm, you can use
either form of type hinting.

Mypy将处理其他注释，但不会处理这些注释。 如果您使用PyCharm，则可以使用任一形式的类型提示。

If your company wants to use type hinting, you should advocate to upgrade to Python 3 to get
the most out of it.

如果您的公司想要使用类型提示，您应该提倡升级到Python 3以充分利用它。


## 12 - Static Type Checking

**静态类型检查**

You have seen Mypy mentioned several times already. You can read all about it here:

您已经多次看到Mypy被提及。 你可以在这里读到所有和它有关的：

* http://mypy-lang.org/

If you would like to run Mypy on your own code, you will need to install it using `pip`:

如果您想在自己的代码上运行Mypy，则需要使用`pip`安装它：

```bash
$ pip install mypy
```

Once you have `mypy` installed, you can run the tool like this:

安装`mypy`后，您可以像这样运行该工具：

```bash
$ mypy my_program.py
```

Mypy will run against your code and print out any type errors that it finds.
When Mypy runs, it does so without running your code. This works much like a linter does.
A linter is a tool for statically checking your code for errors.

Mypy将针对您的代码运行并打印出它发现的任何类型错误。 当Mypy运行时，它不会运行您的代码。
这与linter的工作原理非常相似。 linter是一种静态检查代码错误的工具。

If there is no type hinting in your program, Mypy will not print report any errors at all.

如果您的程序中没有类型提示，Mypy将根本不会打印报告任何错误。

Let's write a badly type hinted function and save it to a file named `bad_type_hinting.py`:

让我们编写一个错误的类型提示函数并将其保存到名为`bad_type_hinting.py`的文件中：

```python
# bad_type_hinting.py

def my_function(a: str, b: str) -> None:
    return a.keys() + b.keys()
```

Now that you have some code, you can run Mypy against it:

现在您已经有了一些代码，您可以对其运行Mypy：

```bash
$ mypy bad_type_hinting.py
bad_type_hinting.py:4: error: "str" has no attribute "keys"
Found 1 error in 1 file (checked 1 source file)
```

This output tells you that there is an issue on line 4. Strings do not have a `keys()` attribute.

此输出告诉您第4行存在问题。字符串没有`keys()`属性。

Let's update the code to remove the calls to the nonexistent keys() method. You can save these
changes to a new file named `bad_type_hinting2`.py:

让我们更新代码以删除对不存在的keys()方法的调用。
您可以将这些更改保存到名为`bad_type_hinting2.py`的新文件中：

```python
# bad_type_hinting2.py

def my_function(a: str, b: str) -> None:
    return a + b
```

Now you should run Mypy against your change and see if you fixed it:

现在您应该针对您的更改运行Mypy并查看是否修复了它：

```bash
$ mypy bad_type_hinting2.py
bad_type_hinting2.py:4: error: No return value expected
Found 1 error in 1 file (checked 1 source file)
```

Whoops! There's still an error. This time you know that you weren't expecting this function to
return anything. You could fix the code so that it doesn't return anything or you could fix the
type hint so that it returns a `str`.

哎呀！ 还是有错误。 这次你知道你并不期望这个函数返回任何东西。
您可以修复代码，使其不返回任何内容，也可以修复类型提示，使其返回`str`。

You should try doing the latter and save the following code to `good_type_hinting.py`:

您应该尝试执行后者并将以下代码保存到`good_type_hinting.py`：

```python
# good_type_hinting.py

def my_function(a: str, b: str) -> str:
    return a + b
```

Now run Mypy against this new file:

现在针对这个新文件运行Mypy：

```bash
$ mypy good_type_hinting.py
Success: no issues found in 1 source file
```

This time your code has no issues!

这次你的代码没有问题了！

You can run Mypy against multiple files or even an entire folder. If you dedicated to using
type hinting in your code, then you should be running Mypy on your code frequently to make
sure your code is error free.

您可以针对多个文件甚至整个文件夹运行Mypy。如果您致力于在代码中使用类型提示，
那么您应该经常在代码上运行Mypy以确保您的代码没有错误。


## 13 - Wrapping Up

**结语**

You now know what type hinting or annotation is and how to do it. In fact, you have learned all
the basics that you need to do type hinting effectively.

您现在知道什么是类型提示或注释以及如何执行它。 事实上，您已经学习了有效进行类型提示所需的所有基础知识。

In this article, you learned about:

在本文中，您了解了：

* Pros and Cons of Type Hinting
* Built-in Type Hinting / Variable Annotation
* Collection Type Hinting
* Hinting Values That Could be None
* Type Hinting Functions
* What To Do When Things Get Complicated
* Classes
* Decorators
* Aliasing
* Other Type Hints
* Type Comments
* Static Type Checking

If you get stuck, you should check out the following resources for help:

如果您遇到困难，您应该查看以下资源来寻求帮助：

* The Type Hinting [Cheatsheet from Mypy](https://mypy.readthedocs.io/en/stable/cheat_sheet_py3.html)
* [Typeshed](https://github.com/python/typeshed)
* The documentation on Python's [typing module](https://docs.python.org/3/library/typing.html)

Type hinting is not necessary in Python. You can write all your code without ever adding any
annotations to your code. But type hinting is good to understand and may prove handy to have
in your toolbox.

Python中不需要类型提示。您可以编写所有代码，而无需向代码添加任何注释。
但类型提示很容易理解，并且在您的工具箱中使用可能会很方便。
