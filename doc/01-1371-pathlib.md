# [Why You Should Start Using Pathlib as an Alternative to the OS Module][001]

[001]: https://towardsdatascience.com/why-you-should-start-using-pathlib-as-an-alternative-to-the-os-module-d9eccd994745

![p01](https://miro.medium.com/max/720/1*6EIYly3MdTgOzXD2XRJyJQ.webp)

As a data scientist, I manipulate paths and files on a daily basis to read and write data.

作为一名数据科学家，我每天都会操作路径和文件进行数据读写。


To do this, I typically use the `os.path` Python module to perform operations such as joining
paths, checking the content of a directory, or creating folders.

为此，我通常使用`os.path`这一Python 模块来执行路径连接、目录内容检查或文件夹创建等操作。

In fact, using the `os.path` module seems like a natural choice to access the filesystem.

事实上，使用`os.path`模块似乎是访问文件系统的自然选择。

> In this post, I'm challenging this practice by introducing another path management library called
> Pathlib. We'll see how this library works, how it differs from the os.path module, what features
> and advantages it provides, and when you should (or not) use it.

> 在本文中，我通过介绍另一个名为 Pathlib 的路径管理库来挑战这种做法。我们将看到这个库是如何工作的，
> 它与os.path模块有何不同，它提供了哪些特性和优势，以及何时应该（或不应该）使用它。

Without much further ado, let's have a look.

废话不多说了，一起来看看吧。


```python
### http://www.dict.cn/manipulate
>>> manipulate            [mə'nɪpjuleɪt]      vt. 操作；操纵

###
>>> on a daily basis                          以一天为周期；每天

### http://www.dict.cn/ado
>>> ado                 [ə'duː]             n. 麻烦；忙乱；纷扰
```


## 1 - The "issue" with the os module `OS模块的"问题"`

The os module is popular: it's been around for a while. However, I've always thought that it
handled paths in an unnatural way.

OS模块很流行：它已经存在了一段时间。但是，我一直认为它是以不自然的方式在处理路径。

These are the reasons that made me question its use:

下面是让我质疑其用途的原因：

* `os` is a large module: it sure has a `path` submodule to manage paths and join them but once you
  need to perform system operations over these paths (creating a folder, listing the content
  inside it, or renaming and deleting a file) you'll have to use other methods that are either
  present somewhere else in the package hierarchy: (os.makedirs, os.listdir, os.rename, etc.) or
  imported from other modules likes `shutil` or `glob`.  You can still find these methods after
  some digging, but this seems like an unnecessary effort.

  `os`是一个大模块：它肯定有一个路径子模块来管理路径并连接路径。但是一旦你需要对这些路径执行
  系统操作（创建一个文件夹，列出其中的内容，或者重命名和删除一个文件）你必须使用其他方法，
  这些方法要么存在于包层次结构中的其他地方：（os.makedirs、os.listdir、os.rename 等），要么
  从其他模块（如shutil或glob）导入。经过一番挖掘，您仍然可以找到这些方法，
  但这似乎是一种不必要的努力。

* `os` represents paths in their rawest format: string values. This is quite limiting: it doesn't
  give you direct access to information such as the file properties or its metadata nor does it
  allow you to perform operations on the filesystem by calling some special methods. For example,
  to check if a path exists, you'd do something like `os.path.exists(some_path)` which is fine.
  But wouldn't be easier if this information was accessed more directly from the path object via
  a class method or attribute?

  `os`以最原始的格式表示路径：字符串值。这是非常有限的：它不会让您直接访问文件属性
  或其元数据等信息，也不会允许您通过调用一些特殊方法对文件系统执行操作。例如，要
  检查路径是否存在，您可以执行类似`os.path.exists(some_path)`的操作。
  但是，如果通过类方法或属性更直接地从路径对象访问此信息，岂不是更容易？

* The os module doesn't natively allow you to find paths that match a given pattern inside a
  hierarchy. Let's say that you want, for example, to recursively find all the `__init__.py` files
  inside a very nested folder structure. To do that, you'd have to combine `os` with another
  module called `glob`. You can sure get used to that, but do you really need two modules to
  perform such a task?

  `os`模块本身不允许您在层次结构中查找与给定模式匹配的路径。例如，假设您想要递归地查找
  非常嵌套的文件夹结构中的所有`__init__.py`文件。 为此，您必须将`os`与另一个名为`glob`
  的模块结合起来。您肯定会习惯这一点，但您真的需要两个模块来执行这样的任务吗？

* This is more of a personal preference, but I've always found the `os` syntax a bit clunky.
  You can read it, you can write it, but for some reason, I always felt that some improvements
  could be made to make it lighter.

  这更多是个人喜好，但我总是发现`os`语法有点笨拙。你可以读它，你可以写它，但出于某种原因，
  我总觉得可以做一些改进，让它更轻便。


```python
### http://www.dict.cn/hierarchy
hierarchy           ['haɪərɑːki]        n. 等级制度；统治集团
### http://www.dict.cn/recursively
recursively         [rɪ'kəsɪvlɪ]        adv. 递归地
### http://www.dict.cn/clunky
clunky              ['klʌŋki]           adj. 笨重的；笨拙的
```

## 2 - What is Pathlib? `什么是Pathlib`

**Pathlib** is part of the standard Python library and has been introduced since
Python 3.4 (see [PEP 428][201]) with the goal of representing paths not as simple strings
but as supercharged Python objects with many useful methods and attributes under the hood.

[201]: https://www.python.org/dev/peps/pep-0428

**Pathlib**是标准Python库的一部分，自Python 3.4（参见 PEP 428）起引入，
目的是将路径表示为不是简单的字符串，而是具有许多有用处的方法和属性的格外强劲的Python对象。


As the official documentation states:

正如官方文档所述：

> "The aim of this library is to provide a simple hierarchy of classes to handle filesystem
> paths and the common operations users do over them."

> "这个库的目的是提供一个简单的类层次结构来处理文件系统路径和用户对它们进行的常见操作。"

Pathlib is meant to alleviate the aforementioned frustrations faced when using the os module.
Let's have a look at some of its features.

Pathlib旨在减轻上述使用os模块时遇到的挫败感。让我们来看看它的一些功能。

This post is not an in-depth overview of Pathlib. To learn more about this library, I recommend
you check the official documentation or the resources I listed at the end.

这篇文章不是对Pathlib的深入概述。要了解有关此库的更多信息，
我建议您查看官方文档或我在最后列出的资源。

```python
### http://www.dict.cn/supercharged
>>> supercharged            ['suːpətʃɑːdʒd]     adj. 增加动力的；精力过人的

###
>>> hood                    [hʊd]               n. 头巾；遮罩；引擎盖
>>> under the hood                              conj. 在底层
                                                字面上指的是"引擎盖下面的那些平常看不到的构造，
                                                主要是引擎、再加上那些乱七八糟的管线等"。
                                                引申的含义是"藏在表面之下的机制或结构"，
                                                或"表面之下的、内在的、深入的东西"。
    e.g. 1) The IonRouterOutlet component uses the popular Vue Router library under the hood.
            IRO部件内部使用的是比较流行的VR库。（内部环节）
         2) Let's now look under the hood to see how the software goes about transmitting data
            so quickly. 我们来仔细看一下这个软件是如何快速传送数据的。（更深层次的看，仔细看）

### http://www.dict.cn/alleviate
>>> alleviate               [ə'liːvieɪt]        vt. 减轻；使...缓和

### http://www.dict.cn/aforementioned
>>> aforementioned          [əˌfɔː'menʃənd]     adj. 上述的；前述的

### http://www.dict.cn/frustration
>>> frustration             [frʌ'streɪʃn]       n. 挫折；失败；令人沮丧的东西
>>> frustrate               [frʌ'streɪt]        vt. 挫败；击败；使沮丧；使灰心

### http://www.dict.cn/in-depth
>>> in-depth                                    adj. 深入的；彻底的
    e.g. 1) This is an interview conducted in great depth.  这是一次深入的采访。
```


## 3 - Pathlib has a more intuitive syntax `Pathlib具有更直观的语法`

To construct a path with Pathlib, you essentially need to import the Path class and
pass it a string. This string points to a path on the filesystem that doesn't
necessarily have to exist.

要使用Pathlib构建路径，基本上需要导入Path类并向其传递一个字符串。
该字符串指向文件系统上的一个路径，该路径不一定存在。

```python
from pathlib import Path
path = Path("/Users/ahmed.besbes/projects/posts")
path
# PosixPath('/Users/ahmed.besbes/projects/posts')
print(cwd)
# /Users/ahmed.besbes/projects/posts
```

Now that you have access to a `Path` object. How would you perform simple operations?

现在您可以访问Path对象。您将如何执行简单的操作？

### 3.1 - Join paths

Pathlibuses the `/` operator to join paths. This may look funny at first but it really makes
the code easier to read.

Pathlib使用`/`运算符连接路径。一开始这可能看起来很有趣，但它确实让代码更容易阅读。

Let's make a comparison.

让我们做一个比较。

To join paths using with `os` module, you'd do something like this:

要使用`os`模块连接路径，可以执行以下操作：

```python
1   import os
2
3   in_file = os.path.join(os.getcwd(), "raw_data", "input.xlsx")
4   out_file = os.path.join(os.getcwd(), "processed_data", "output.xlsx")
```

Using Pathlib, the same code translates into:

使用Pathlib，相同的代码转换为：

```python
1   from pathlib import Path
2
3   in_file = Path.cwd() / "raw_data" / "input.xlsx"
4   out_file = Path.cwd() / "processed_data" / "output.xlsx"
```

Essentially, Pathlib has supercharged the `/` operator to perform path joins.

从本质上讲，Pathlib增强了`/`运算符以执行路径连接。


```python
### http://www.dict.cn/essentially
>>> essentially             [ɪ'senʃəli]     adv. 本质上；实质上
    e.g. Market economy is essentially a legal economy. 市场经济本质上是法制经济。

###
>>> comparison              [kəmˈpærɪsn]    n. 比较;对比
```

### 3.2 - Get the current working directory / the home directory

Methods are already implemented to do that.

已经实现了这些方法。

```python
from path import Pathlibcwd = Path.cwd()
home = Path.home()
```

### 3.3 - Read a file

You can either use `open` with a context manager like you'd do with a typical path,
or use `read_text` or `read_bytes`.

您可以像对待典型路径那样，在上下文管理器中使用`open`，也可以使用`read_text`或`read_bytes`。

```python
>>> path = pathlib.Path.home() / file.txt'
>>> path.read_text()
```

There's obviously much more features to cover. Let's cover the most interesting ones
in the next sections.

显然还有更多的功能要涵盖。让我们在下一节中介绍最有趣的内容。


## 4 - It easily creates files and directories `轻松创建文件和目录`

Once a Path object is created, it can perform filesystem operations on its own by calling
its internal methods. For example, it can create a folder or pop up a file, just by calling
the `mkdir` and `touch` methods.

创建Path对象后，它可以通过调用其内部方法自行执行文件系统操作。 例如，它可以通过调用
`mkdir`和`touch`方法来创建文件夹或文件。

Here's how a Path object can create a folder:

以下是Path对象如何创建文件夹：

```python
 1      from pathlib import Path
 2
 3      random_folder = Path("random_folder")
 4
 5      random_folder.exists()
 6      # False
 7
 8      random_folder.mkdir(exist_ok=True)
 9
10      random_folder.exists()
11      # True
```

The same goes for files:

创建文件也是如此：

```python
 1      from pathlib import Path
 2
 3      random_file = Path("random_file.txt")
 4
 5      random_file.exists()
 6      # False
 7
 8      random_file.touch()
 9
10      random_file.exists()
11      # True
```

Of course, you can still perform these operations using the `os` module,
but this requires calling another function like makedirs.

当然，您仍然可以使用`os`模块执行这些操作，但这需要调用另一个函数，如`makedirs`。


## 5 - It navigates the filesystem hierarchy by accessing the parents `通过访问父文件来导航文件系统层次结构`

Each Path object has a property called `parent` that returns a Path object of the parent folder.
This makes it easier to manipulate large folder hierarchies. In fact, since Paths are objects
we can chain methods to reach the desired parent.

每个Path对象都有一个名为`parent`的属性，该属性返回父文件夹的`Path`对象。
这使得操作大型文件夹层次结构变得更加容易。事实上，由于路径是对象，
我们可以链接方法以到达所需的父对象。

```python
 1      from pathlib import Path
 2
 3      path = Path("/Users/ahmed.besbes/Downloads/")
 4
 5      path
 6      # PosixPath('/Users/ahmed.besbes/Downloads')
 7
 8      path.parent
 9      # PosixPath('/Users/ahmed.besbes')
10
11      path.parent.parent
12      # PosixPath('/Users')
13
14      path.parent.parent.parent
15      # PosixPath('/')
```

If you want to avoid chaining the `parent` properties to access the n-th previous parent you can
call the `parents` property that returns a list of all the parents preceding the current folder.

如果您想避免链接父属性来访问第n个前一个父级，您可以调用`parents`属性，
该属性返回当前文件夹之前的所有父级的列表。

```python
 1      import pathlib
 2
 3      path = Path("/Users/ahmed.besbes/Downloads/")
 4
 5      list(path.parents)
 6      # [PosixPath('/Users/ahmed.besbes'), PosixPath('/Users'), PosixPath('/')]
```

## 6 -  It allows you to iterate on directories and perform pattern matching `允许您迭代目录并执行模式匹配`

Let's assume you have a Path object that points to a directory.

假设您有一个指向目录的Path对象。

Pathlib allows you to easily iterate over that directory's content and also get files
and folders that match a specific pattern.

Pathlib允许您轻松地遍历该目录的内容，还可以获取与特定模式匹配的文件和文件夹。

Remember the globmodule that you used to import along with the `os` module to get paths
that match a pattern?

还记得用来与`os`模块一起导入以获取与模式匹配的路径的glob模块吗？

Well, Path objects have a `glob` method and a recursive version (called `rglob`) to perform
similar tasks, but with a much lighter syntax.

Path对象有一个`glob`方法和一个递归版本`rglob`来执行类似的任务，但语法要轻得多。

Let's say that I want to count the number of Python files in a given folder,
here's how you can do it:

假设我想计算给定文件夹中Python文件的数量，你可以这样做：

```python
     1  from pathlib import Path
     2
     3  # A quite large folder indeed!
     4  path = Path("/Users/ahmed.besbes/anaconda3/")
     5
     6  python_files = path.rglob("**/*.py")
     7
     8  next(python_files)
     9  # PosixPath('/Users/ahmed.besbes/anaconda3/bin/rst2xetex.py')
    10
    11  next(python_files)
    12  # PosixPath('/Users/ahmed.besbes/anaconda3/bin/rst2latex.py')
    13
    14  next(python_files)
    15  # PosixPath('/Users/ahmed.besbes/anaconda3/bin/rst2odt_prepstyles.py')
    16
    17  ...
    18
    19  len(list(python_files))
    20  # 67481
```

## 7 - Each Path object has multiple useful attributes `每个Path对象都有多个有用的属性`

Each Path object has multiple useful methods and attributes that perform operations
previously handled by other libraries than `os` (think `glob` or `shutil`)

每个Path对象都有多个有用的方法和属性，这些方法和属性执行以前由`os`以外的其他库处理
的操作（想想`glob`或`shutil`）

* `exists()`      : To check if the path really exists on the filesystem
* `is_dir()`      : To check if the path corresponds to a directory
* `is_file()`     : To check if the path corresponds to a file
* `is_absolute()` : To check if the path is absolute
* `chmod()`       : To change the file mode and permissions
* `is_mount()`    : To check if the path is a mount point
* `suffix`        : Get the extension of a file

There's more methods. You can check all the list [here][701].

更多的方法请通过[此处][701]查看所有列表。

[701]: https://docs.python.org/zh-cn/3/library/pathlib.html

## Resources `更多资源`

If you wish to learn more about Pathlib and the differences with the native `os.path` module,
you can have a look at this list of curated resources: it's 100% free of charge,
and it's good quality. I promise.

如果您想了解有关Pathlib的更多信息以及与`os.path`模块的差异，
可以查看此精选资源列表：它100%免费，而且质量很好。我保证。

* [pathlib — Object-oriented filesystem paths](https://docs.python.org/3/library/pathlib.html)
* [Why you should be using pathlib](https://treyhunner.com/2018/12/why-you-should-be-using-pathlib/)
* [No really, pathlib is great](https://treyhunner.com/2019/01/no-really-pathlib-is-great/)
* [PEP 519 – Adding a file system path protocol](python.org/dev/peps/pep-0519/#standard-library-changes)
* [How to Use Pathlib in Python | Quickstart Guide or Beginners](https://youtu.be/YwhOUyTxXVE)
* [No Really, Python's Pathlib is Great](https://rednafi.github.io/digressions/python/2020/04/13/python-pathlib.html)
* [Python 3's pathlib Module: Taming the File System](https://realpython.com/python-pathlib/)

## Thanks for reading `谢谢阅读`

This was a quick post covering some of Pathlib's features.

这是一篇简短的文章，涵盖了Pathlib的一些功能。

If you think of transitioning to this library, and assuming you're using Python 3.4+,
go ahead and do it: migrating from os to Pathlib is quite easy.

如果您考虑过渡到这个库，并假设您使用的是Python 3.4+，请继续这样做：从`os`迁移到`Pathlib`非常容易。

That'll be all for me today. Until next time for more programming tips and tutorials.

今天对我来说就这些了。 下次再见更多编程技巧和教程。
