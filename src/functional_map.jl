mutable struct FunctionalMap 
    mesh1
    mesh2
    descr1 # (n1,p) descriptors on the first mesh
    descr2 # (n2,p) descriptors on the second mesh
    D_a    # (k1,k1) area-based shape differnence operator
    D_c    # (k1,k1) conformal-based shape differnence operator
    FM_type # 'classic' | 'icp' | 'zoomout' which FM is currently used
    k1      # dimension of the first eigenspace (varies depending on the type of FM)
    k2      # dimension of the seconde eigenspace (varies depending on the type of FM)
    FM      # (k2,k1) current FM
    p2p     # (n2,) point to point map associated to the current functional map
end

function FunctionalMap(mesh1, mesh2)
    return FunctionalMap(mesh1, mesh2, undef, undef, undef, undef, "classic", undef, undef, undef, undef)
end

function preprocess!(fm::FunctionalMap; verbose=true)
end