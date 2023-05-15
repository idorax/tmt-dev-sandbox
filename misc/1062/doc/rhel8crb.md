# [Introducing CodeReady Linux Builder](https://developers.redhat.com/blog/2018/11/15/introducing-codeready-linux-builder)


The RHEL 8 introduces a new repository, the CodeReady Linux Builder (or “Builder” for short) that developers may need while developing applications for RHEL. As you all know “developer” is not a one size fits all term. As a result, I am taking this opportunity to try to explain when you might need Builder enabled for your development activities.

RHEL 8 引入了一个新的存储库，即开发人员在为 RHEL 开发应用程序时可能需要的 CodeReady Linux Builder（或简称“Builder”）。 众所周知，“开发人员”并不是一个万能的术语。 因此，我借此机会尝试解释何时可能需要为您的开发活动启用 Builder。


First off, if you are a typical web developer, dealing with PHP, Ruby, or Perl you are unlikely to need the content delivered through Builder. The PHP packages, Ruby gems, and Perl modules provided in the AppStream repository will, in most cases, provide sufficient functionality to develop and run applications you create yourself and to run frameworks like Drupal, Wordpress, Rails, or Twiki.  Please see the appropriate HowTos for getting these things up and running.

首先，如果您是一名典型的 Web 开发人员，使用 PHP、Ruby 或 Perl，您不太可能需要通过 Builder 交付的内容。 在大多数情况下，AppStream 存储库中提供的 PHP 包、Ruby gem 和 Perl 模块将提供足够的功能来开发和运行您自己创建的应用程序以及运行 Drupal、Wordpress、Rails 或 Twiki 等框架。 请参阅相应的 HowTos 以了解如何启动和运行这些内容。


Ruby and Perl both have additional libraries made available in the Builder repository. However, they are less commonly used or used at build time only.

Ruby 和 Perl 都在 Builder 存储库中提供了额外的库。 但是，它们不太常用或仅在构建时使用。

Next we have Java developers. Again, much of the functionality and jars you would expect to use normally have been provided in the AppStream. For example ant, maven and apache-commons-logging can be found directly in AppStream. However, if you need some of the build-only components, you would find those in the Builder repository.

接下来是 Java 开发人员。 同样，您通常期望使用的许多功能和 jar 都已在 AppStream 中提供。 例如 ant、maven 和 apache-commons-logging 可以直接在 AppStream 中找到。 但是，如果您需要一些仅构建的组件，您可以在 Builder 存储库中找到它们。

If you are a .Net developer, you can find the Core Runtime & tools directly in AppStream as the “dotnet” package. When you build applications you will be pulling most of your dependencies from Microsoft or the upstream of those dependencies. As a .Net developer, you will not need the Builder repository.

如果您是 .Net 开发人员，您可以直接在 AppStream 中以“dotnet”包形式找到核心运行时和工具。 当您构建应用程序时，您将从 Microsoft 或这些依赖项的上游获取大部分依赖项。 作为 .Net 开发人员，您将不需要 Builder 存储库。

Moving on to the traditionally compiled languages, the Builder repository is really targeted to you. For languages like C and C++, many of the header files, devel packages, etc. can be found in the Builder repository.  As this sort of developer, you will definitely want to have the Builder repository enabled on your build machines. However, you should not, normally, need the repository enabled on your runtime deployments.


转向传统的编译语言，Builder 存储库确实是针对您的。 对于 C 和 C++ 等语言，许多头文件、开发包等都可以在 Builder 存储库中找到。 作为此类开发人员，您肯定希望在构建计算机上启用 Builder 存储库。 但是，通常情况下，您不需要在运行时部署上启用存储库。

Much like .Net, the LLVM/Clang, Go & Rust language compilers are provided directly in AppStream with a few tools to support development. If you use one of these languages, you won’t need the Builder repository.

与 .Net 非常相似，LLVM/Clang、Go 和 Rust 语言编译器直接在 AppStream 中提供，并带有一些支持开发的工具。 如果您使用其中一种语言，则不需要 Builder 存储库。

Last but not least, when you want to package and deploy your applications, you can find many of the tools that support you in this process in the Builder repository as well. For example, meson, dejagnu, and doxygen are available for use.

最后但并非最不重要的一点是，当您想要打包和部署应用程序时，您还可以在 Builder 存储库中找到在此过程中支持您的许多工具。 例如，可以使用介子、dejagnu和doxygen。

Hopefully, you found this description of the new Code Ready Linux Builder helpful and we really hope the changes to the content repositories with RHEL8 make things simpler and easier to find.

希望您发现新的 Code Ready Linux Builder 的描述很有帮助，我们真诚地希望 RHEL8 对内容存储库的更改使事情变得更简单、更容易查找。
