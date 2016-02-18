
find_package(PythonInterp REQUIRED)

execute_process(
    COMMAND ${PYTHON_EXECUTABLE} "${CMAKE_SOURCE_DIR}/script/getSystemString.py"
    OUTPUT_VARIABLE SYSSTRING
    OUTPUT_STRIP_TRAILING_WHITESPACE
)

set(EXTERNAL_ROOT "${CMAKE_CURRENT_SOURCE_DIR}/../Coati_External")
set(EXTERNAL_SRC "${EXTERNAL_ROOT}/src")
set(EXTERNAL_BUILD "${EXTERNAL_ROOT}/${SYSSTRING}/${CMAKE_BUILD_TYPE}")

