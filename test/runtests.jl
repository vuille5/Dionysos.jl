include("./utils/data_structures/test_queue.jl")
include("./utils/data_structures/test_digraph.jl")
include("./utils/data_structures/tree.jl")
include("./utils/search/test_search.jl")
include("./utils/rectangle.jl")
include("./utils/ellipsoid.jl")
include("./utils/scalar_functions.jl")
include("./utils/test_lazy_set_operations.jl")

include("./domain/test_griddomain.jl")
include("./domain/test_general_domain.jl")
include("./domain/test_nested_domain.jl")

include("./symbolic/test_automaton.jl")
include("./symbolic/test_proba_automaton.jl")
include("./symbolic/test_symbolicmodel.jl")
include("./symbolic/test_lazy_symbolic.jl")
include("./symbolic/test_ellipsoidal_transitions.jl")

include("./problem/test_problems.jl")

include("./optim/unit_tests_NaiveAbstraction/test_controller.jl")
include("./optim/unit_tests_NaiveAbstraction/test_controllerreach.jl")
include("./optim/unit_tests_NaiveAbstraction/test_controllersafe.jl")
include("./optim/unit_tests_NaiveAbstraction/test_fromcontrolsystemgrowth.jl")
include("./optim/unit_tests_NaiveAbstraction/test_fromcontrolsystemlinearized.jl")
include("./optim/test_NaiveAbstraction_safety.jl")
include("./optim/test_NaiveAbstraction_reachability.jl")
include("./optim/test_lazy_abstraction.jl")
include("./optim/test_ellipsoids_abstraction.jl")
include("./optim/test_lazy_ellipsoids_abstraction.jl")
include("./optim/test_hierarchical_abstraction.jl")

include("./mapping/test_mapping_continuous.jl")

include("./system/test_controlsystem.jl")
include("./system/test_controller.jl")

include("./examples/test_gol_lazar_belta.jl")
