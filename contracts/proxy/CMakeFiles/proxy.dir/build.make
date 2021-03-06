# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/eos

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/eos/build

# Utility rule file for proxy.

# Include the progress variables for this target.
include contracts/proxy/CMakeFiles/proxy.dir/progress.make

contracts/proxy/CMakeFiles/proxy: contracts/proxy/proxy.wast.hpp
contracts/proxy/CMakeFiles/proxy: contracts/proxy/proxy.abi.hpp
contracts/proxy/CMakeFiles/proxy: contracts/proxy/proxy.wasm


contracts/proxy/proxy.wast.hpp: contracts/proxy/proxy.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ubuntu/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating proxy.wast.hpp"
	cd /home/ubuntu/eos/build/contracts/proxy && echo "const char* const proxy_wast = R\"=====(" > /home/ubuntu/eos/build/contracts/proxy/proxy.wast.hpp
	cd /home/ubuntu/eos/build/contracts/proxy && cat /home/ubuntu/eos/build/contracts/proxy/proxy.wast >> /home/ubuntu/eos/build/contracts/proxy/proxy.wast.hpp
	cd /home/ubuntu/eos/build/contracts/proxy && echo ")=====\";" >> /home/ubuntu/eos/build/contracts/proxy/proxy.wast.hpp

contracts/proxy/proxy.abi.hpp: contracts/proxy/proxy.abi
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ubuntu/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating proxy.abi.hpp"
	cd /home/ubuntu/eos/build/contracts/proxy && echo "const char* const proxy_abi = R\"=====(" > /home/ubuntu/eos/build/contracts/proxy/proxy.abi.hpp
	cd /home/ubuntu/eos/build/contracts/proxy && cat /home/ubuntu/eos/build/contracts/proxy/proxy.abi >> /home/ubuntu/eos/build/contracts/proxy/proxy.abi.hpp
	cd /home/ubuntu/eos/build/contracts/proxy && echo ")=====\";" >> /home/ubuntu/eos/build/contracts/proxy/proxy.abi.hpp

contracts/proxy/proxy.wasm: contracts/proxy/proxy.wast.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ubuntu/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating WASM proxy.wasm"
	cd /home/ubuntu/eos/build/contracts/proxy && /home/ubuntu/eos/build/libraries/wasm-jit/Source/Programs/eosio-wast2wasm /home/ubuntu/eos/build/contracts/proxy/proxy.wast /home/ubuntu/eos/build/contracts/proxy/proxy.wasm -n

contracts/proxy/proxy.wast: contracts/proxy/proxy.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ubuntu/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating WAST proxy.wast"
	cd /home/ubuntu/eos/build/contracts/proxy && /home/ubuntu/eos/build/externals/binaryen/bin/eosio-s2wasm -o /home/ubuntu/eos/build/contracts/proxy/proxy.wast -s 10240 proxy.s

contracts/proxy/proxy.s: contracts/proxy/proxy.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ubuntu/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating textual assembly proxy.s"
	cd /home/ubuntu/eos/build/contracts/proxy && /home/ubuntu/opt/wasm/bin/llc -thread-model=single -asm-verbose=false -o proxy.s proxy.bc

contracts/proxy/proxy.bc: contracts/proxy/proxy.cpp.bc
contracts/proxy/proxy.bc: contracts/libc++/libc++.bc
contracts/proxy/proxy.bc: contracts/musl/libc.bc
contracts/proxy/proxy.bc: contracts/eosiolib/eosiolib.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ubuntu/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking LLVM bitcode executable proxy.bc"
	cd /home/ubuntu/eos/build/contracts/proxy && /home/ubuntu/opt/wasm/bin/llvm-link -only-needed -o proxy.bc proxy.cpp.bc /home/ubuntu/eos/build/contracts/libc++/libc++.bc /home/ubuntu/eos/build/contracts/musl/libc.bc /home/ubuntu/eos/build/contracts/eosiolib/eosiolib.bc

contracts/proxy/proxy.cpp.bc: ../contracts/proxy/proxy.cpp
contracts/proxy/proxy.cpp.bc: ../contracts/proxy/proxy.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ubuntu/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building LLVM bitcode proxy.cpp.bc"
	cd /home/ubuntu/eos/build/contracts/proxy && /home/ubuntu/opt/wasm/bin/clang -emit-llvm -O3 --std=c++14 --target=wasm32 -ffreestanding -nostdlib -nostdlibinc -DBOOST_DISABLE_ASSERTS -DBOOST_EXCEPTION_DISABLE -fno-threadsafe-statics -fno-rtti -fno-exceptions -c /home/ubuntu/eos/contracts/proxy/proxy.cpp -o proxy.cpp.bc -Weverything -Wno-c++98-compat -Wno-old-style-cast -Wno-vla -Wno-vla-extension -Wno-c++98-compat-pedantic -Wno-missing-prototypes -Wno-missing-variable-declarations -Wno-packed -Wno-padded -Wno-c99-extensions -Wno-documentation-unknown-command -I /home/ubuntu/eos/contracts -I /home/ubuntu/eos/externals/magic_get/include -I /home/ubuntu/opt/boost/include -isystem /home/ubuntu/eos/contracts/libc++/upstream/include -isystem /home/ubuntu/eos/contracts/musl/upstream/include -isystem /home/ubuntu/opt/boost/include -isystem /home/ubuntu/eos/contracts/libc++/upstream/include -isystem /home/ubuntu/eos/contracts/musl/upstream/include -isystem /home/ubuntu/opt/boost/include

proxy: contracts/proxy/CMakeFiles/proxy
proxy: contracts/proxy/proxy.wast.hpp
proxy: contracts/proxy/proxy.abi.hpp
proxy: contracts/proxy/proxy.wasm
proxy: contracts/proxy/proxy.wast
proxy: contracts/proxy/proxy.s
proxy: contracts/proxy/proxy.bc
proxy: contracts/proxy/proxy.cpp.bc
proxy: contracts/proxy/CMakeFiles/proxy.dir/build.make

.PHONY : proxy

# Rule to build all files generated by this target.
contracts/proxy/CMakeFiles/proxy.dir/build: proxy

.PHONY : contracts/proxy/CMakeFiles/proxy.dir/build

contracts/proxy/CMakeFiles/proxy.dir/clean:
	cd /home/ubuntu/eos/build/contracts/proxy && $(CMAKE_COMMAND) -P CMakeFiles/proxy.dir/cmake_clean.cmake
.PHONY : contracts/proxy/CMakeFiles/proxy.dir/clean

contracts/proxy/CMakeFiles/proxy.dir/depend:
	cd /home/ubuntu/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/eos /home/ubuntu/eos/contracts/proxy /home/ubuntu/eos/build /home/ubuntu/eos/build/contracts/proxy /home/ubuntu/eos/build/contracts/proxy/CMakeFiles/proxy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/proxy/CMakeFiles/proxy.dir/depend

