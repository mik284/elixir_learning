## Elixir Agents

links:

* https://elixir-lang.org/getting-started/mix-otp/agent.html

Elixir Agents provide a simple way to manage state in concurrent applications by encapsulating it within a process.

### Agents

Agents are a concurrent, distributed, and fault-tolerant programming model for
building robust, scalable software.

They are inspired by the Erlang Actor model, but with a more functional
approach.

* Purpose: A process that holds and manages state, allowing safe concurrent access via message passing.

* Abstraction: Built on top of GenServer, tailored for state management.

* Isolation: Each Agent runs in its own process, ensuring state consistency.

> Agents are ideal for situations where you want to encapsulate stateful logic (like caching, counters, or configuration data) without building a full GenServer.

### Agents in Elixir

Agents are a concurrent, distributed, and fault-tolerant programming model for
building robust, scalable software.

They are inspired by the Erlang Actor model, but with a more functional
approach.


## 1. Starting an Agent
You can start an Agent using ```elixir Agent.start_link/2``` or ```elixir Agent.start/2```.

```elixir
# Start an Agent with an initial state (in this case, an empty list)
{:ok, pid} = Agent.start_link(fn -> [] end)
```

## 2. Naming an Agent
You can give your Agent a name to make it easier to reference:

```elixir
{:ok, _pid} = Agent.start_link(fn -> %{} end, name: :my_agent)
```

Now, instead of a PID, you can use the atom :my_agent to interact with the Agent.

## 3. Reading the state of an Agent
You can read the state of an Agent using the ```Agent.get/2``` function:

```elixir
example 1: 

{:ok, pid} = Agent.start_link(fn -> %{} end, name: :my_agent)

# Read the state of the Agent
state = Agent.get(pid, fn state -> state end)

IO.inspect(state)
# %{}


example 2:

# Using the PID
current_state = Agent.get(pid, fn state -> state end)

# Or using the registered name
current_state = Agent.get(:my_agent, fn state -> state end)

example 3:

# Suppose our state is a map and we want to read a value for a key
value = Agent.get(:my_agent, fn state -> Map.get(state, :key) end)

```

## 4. Updating the state of an Agent
You can update the state of an Agent using the ```Agent.update/2``` function:

```elixir
example 1:

{:ok, pid} = Agent.start_link(fn -> %{} end, name: :my_agent)

Agent.update(pid, fn state -> Map.put(state, :key, "value") end)

# Agent.update(pid, fn state -> [1 | state] end)
# Here, we’re prepending 1 to our list. For maps or other data types, modify the update function accordingly.

example 2:

{:ok, pid} = Agent.start_link(fn -> %{} end, name: :my_agent)

Agent.update(:my_agent, fn state -> Map.put(state, :key, "value") end)
```

### Using ```Agent.get_and_update/2```:
This function is similar to ```Agent.update/2```, but it returns the new state after the update function has been applied.
 > Note: useful when you need to update the state and return a value in one atomic operation.

```elixir
example 1:

{:ok, pid} = Agent.start_link(fn -> %{} end, name: :my_agent)

result = Agent.get_and_update(pid, fn state ->
  new_state = state + 1
  {state, new_state}
end)

```

In this case, ```result``` holds the old state, and the Agent's state is updated to ```new_state```.

## 5. Stopping an Agent
You can stop an Agent using the ```Agent.stop/1``` function:

```elixir
example 1:

{:ok, pid} = Agent.start_link(fn -> %{} end, name: :my_agent)

Agent.stop(pid)

example 2:

{:ok, pid} = Agent.start_link(fn -> %{} end, name: :my_agent)

Agent.stop(:my_agent)
```


## Best Practices
* Pure Functions: Ensure functions passed to get/update are side-effect-free.

* Error Handling: Avoid raising errors in state functions; handle exceptions internally.

* Named Agents: Use unique atoms for named Agents to avoid conflicts.

## Limitations
* Persistence: State is lost if the Agent crashes (use supervision for restarts or external storage for persistence).

* Performance: Message-passing overhead may affect high-throughput scenarios.