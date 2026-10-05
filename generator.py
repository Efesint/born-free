import random

WORDS = [
    "superposition", "entanglement", "decoherence", "collapse", "wave function",
    "interference", "spin", "quark", "lepton", "boson", "fermion", "photon",
    "gluon", "neutrino", "antimatter", "annihilation", "tunneling",
    "uncertainty", "Pauli exclusion", "Schrodinger equation", "operator",
    "Hamiltonian", "state vector", "bra", "ket", "density matrix",
    "entropy", "black hole", "event horizon", "Hawking radiation",
    "Planck length", "Planck time", "quantum foam", "multiverse",
    "arrow of time", "thermodynamics", "enthalpy", "entropy", "gravity",
    "strong force", "weak force", "electromagnetism",
    "Higgs boson", "Higgs field", "mass", "energy", "momentum", "spin",
    "helicity", "chirality", "gauge symmetry", "renormalization",
    "larp", "DWBI", "just do it","std::vector", "std::unique_ptr", "std::shared_ptr", "std::thread",
    "std::mutex", "std::atomic", "boost::asio", "SDL2", "SFML", "OpenGL",
    "Vulkan", "Qt", "std::string", "std::map", "std::unordered_map",
    "std::optional", "std::variant", "std::function", "std::chrono",
    "std::filesystem", "std::regex", "std::random", "std::algorithm",
    "trevis bickle", "elliot alderson", "mr lapr", "iqmaxx", "apple",
]

if __name__ == "__main__":
    print(random.choice(WORDS))