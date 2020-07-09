#
# Copyright (c) 2019-2020, NVIDIA CORPORATION.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# cython: profile=False
# distutils: language = c++
# cython: embedsignature = True
# cython: language_level = 3

import ctypes
from libcpp cimport bool


cdef extern from "cuml/cluster/kmeans.hpp" namespace \
        "ML::kmeans::KMeansParams":
    enum InitMethod:
        KMeansPlusPlus, Random, Array

    cdef struct KMeansParams:
        int n_clusters,
        InitMethod init
        int max_iter,
        double tol,
        int verbosity,
        int seed,
        int metric,
        int n_init,
        double oversampling_factor,
        int batch_samples,
        int batch_centroids,
        bool inertia_check
