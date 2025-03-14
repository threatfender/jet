# Jet

Deploy Elixir applications with ease using mix tasks.


## Installation

> [!NOTE]
> This package is not published on [hex.pm](https://hex.pm/), so you need to
> specify this git repository when declaring the dependency.

Add `:jet` to your list of dependencies in your `mix.exs`, pointing
to the official GitHub repository.

```elixir
def deps do
  [
    {:jet, git: "https://github.com/threatfender/jet"}
  ]
end
```


## Usage

  > TODO: Complete when ready for use!


## Roadmap

This is a tentative roadmap establishing the project's evolutionary trajectory:

### Phase 00

  * [x] Establish foundational project structure
  * [x] Establish project scope and create command namespaces

### Phase 01

  * [ ] jet.carrier   - Manage cloud app nodes
  * [ ] jet.pilot     - Manage OS service configuration
  * [ ] jet.wingman   - Manage proxy servers
  * [ ] jet           - Manage app deployments

### Phase 02

  * [ ] jet.hangar    - Manage cloud build nodes
  * [ ] jet.base      - Manage organization's space

### Phase 03

  * [ ] jet.bay       - Manage security controls
  * [ ] jet.depo      - Manage storage space (block storage)
  * [ ] jet.tower     - Centralized operations server


## License

Jet is open source software licensed under the Apache 2.0 License.
