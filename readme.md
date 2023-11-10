# LEARNING ELIXIR PROGRAMMING
Elixir is a powerful and functional programming language designed for building scalable and maintainable applications. It's known for its concurrency model, fault-tolerance, and scalability.

#### Resources
* Elixir docs: https://hexdocs.pm/elixir/1.16/introduction.html
* Elixir Drops : https://www.youtube.com/@ElixirDrops
* Elixir Casts: https://www.youtube.com/@elixircasts2332
* Podcast : https://podcast.thinkingelixir.com/
* Books : https://elixir-lang.org/learning.html
* school : https://elixirschool.com/en

#### Key concepts
- Concurrency Model:

  - Elixir runs on the Erlang Virtual Machine (BEAM), which is designed for building distributed and fault-tolerant systems.
   - Processes in Elixir are lightweight and isolated, and they communicate through message passing.
- Functional Programming:

    - Elixir is a functional programming language, which means it emphasizes immutability and pure functions.
Pattern matching, recursion, and higher-order functions are common in Elixir.
- Immutable Data Structures:

    - Elixir uses immutable data structures. Instead of modifying data in place, new data structures are created.
This approach contributes to the overall stability of concurrent programs.
- OTP (Open Telecom Platform):

    - OTP is a set of libraries and design principles for building scalable and fault-tolerant systems.
    - It includes features like supervisors for process management, gen_servers for building stateful processes, and more.
- Pattern Matching:

    - Elixir leverages pattern matching extensively. It's used in function heads, case statements, and more.
    - It allows for concise and expressive code.
- Mix:

    - Mix is a build tool and package manager for Elixir projects. It helps you create, compile, and test projects.
    - It also manages dependencies and provides tasks for common development workflows.
- Phoenix Framework:

    - Phoenix is a web framework for Elixir that makes it easy to build scalable and maintainable web applications.
    - It follows the model-view-controller (MVC) pattern and includes features like channels for real-time communication.
- Documentation:

    - Elixir has a strong emphasis on documentation. You can generate and view documentation for your projects using ex_doc.

### Week:one
* iex : the interactive terminal of elixer which is used to debbug, compile and run commands like arithmetic logic 1 + 1.
  - Link: https://hexdocs.pm/iex/1.15.7/IEx.html
  - Elixir's interactive shell.
* Basics : https://elixirschool.com/en/lessons/basics/basics
   - Getting Started
        - Installing Elixir
        - Trying Interactive Mode
    - Basic Data Types
        - Integers
        - Floats
        - Booleans
        - Atoms
        - Strings
    - Basic Operations
        - Arithmetic
        - Boolean
        - Comparison
        - String Interpolation
        - String Concatenation
- Fucntions in Elixir : https://elixirschool.com/en/lessons/basics/functions
- Pattern matching (to be covered next week)