# TotalMemoryUsage Function Analysis and Verification

## Overview

This document provides the detailed analysis and verification of the `TotalMemoryUsage()` functions in `bitcoin/src/txgraph.cpp` that informed the creation of the Axiom hints in `ax.toml`.

## Function Implementations

### GenericClusterImpl::TotalMemoryUsage() (Line 915-925)

```cpp
size_t GenericClusterImpl::TotalMemoryUsage() const noexcept
{
    return // Dynamic memory allocated in this Cluster.
           memusage::DynamicUsage(m_mapping) + memusage::DynamicUsage(m_linearization) +
           // Dynamic memory usage inside m_depgraph.
           m_depgraph.DynamicMemoryUsage() +
           // Memory usage of the allocated Cluster itself.
           memusage::MallocUsage(sizeof(GenericClusterImpl)) +
           // Memory usage of the ClusterSet::m_clusters entry.
           sizeof(std::unique_ptr<Cluster>);
}
```

**Memory Components:**
1. `memusage::DynamicUsage(m_mapping)` - Vector of GraphIndex (typically 4-8 bytes per element)
2. `memusage::DynamicUsage(m_linearization)` - Vector of DepGraphIndex (typically 4 bytes per element)  
3. `m_depgraph.DynamicMemoryUsage()` - DepGraph dynamic memory (scales with transactions)
4. `memusage::MallocUsage(sizeof(GenericClusterImpl))` - Object itself (~128-256 bytes typical)
5. `sizeof(std::unique_ptr<Cluster>)` - Wrapper overhead (~8 bytes on 64-bit systems)

**Lower Bound Rationale:**
- The vectors alone (even when empty) typically allocate some capacity
- The depgraph requires minimum memory for structure
- The object has fixed overhead regardless of content

### SingletonClusterImpl::TotalMemoryUsage() (Line 927-933)

```cpp
size_t SingletonClusterImpl::TotalMemoryUsage() const noexcept
{
    return // Memory usage of the allocated SingletonClusterImpl itself.
           memusage::MallocUsage(sizeof(SingletonClusterImpl)) +
           // Memory usage of the ClusterSet::m_clusters entry.
           sizeof(std::unique_ptr<Cluster>);
}
```

**Memory Components:**
1. `memusage::MallocUsage(sizeof(SingletonClusterImpl))` - Smaller object (~64-128 bytes typical)
2. `sizeof(std::unique_ptr<Cluster>)` - Wrapper overhead (~8 bytes)

**Lower Bound Rationale:**
- Singleton objects have minimal fixed overhead
- No dynamic vectors or depgraph to account for

## Invariants

### Always True Invariants

1. **Minimum Overhead**: Both functions return at least the size of their object plus wrapper
2. **Positive Values**: `result > 0` (memory usage is always positive)
3. **Alignment**: Values are naturally aligned to pointer boundaries

### Conditionally True Invariants

1. **GenericClusterImpl**: Return value scales with number of transactions (absent in singleton)
2. **GenericClusterImpl**: Additional memory for dynamic structures is always positive

## SMT Constraints

The constraints in `ax.toml` establish:

1. **Conservative Lower Bounds** - Minimum possible memory usage
2. **Type Safety** - Values are always non-negative
3. **Implementation Fidelity** - Reflective of actual memory usage patterns

## Verification Approach

These hints will be verified by:
1. **Static Analysis**: Checking that implementations match the declared invariants
2. **Runtime Validation**: Ensuring that profiled memory usage satisfies constraints
3. **Formal Verification**: Using Lean propositions to prove correctness properties
4. **SMT Solving**: Checking constraint satisfaction across possible states

## Next Steps

1. **Test Coverage**: Add test cases for empty clusters to validate minimum bounds
2. **Performance Analysis**: Profile actual memory usage vs. theoretical bounds  
3. **Refinement**: Adjust bounds based on empirical data if needed
4. **Integration**: Ensure hints work correctly with Axiom's verification pipeline

## Evidence Files Generated

- `ax.toml`: Hints for Axiom verification
- `ANALYSIS_TotalMemoryUsage.md`: This analysis document
- `CONTEXT.md` updates: Adding these invariants to project context

## References

- Bitcoin Core txgraph.cpp implementation
- Axiom Zero-Vacuity Protocol documentation
- C++ memory model and alignment requirements