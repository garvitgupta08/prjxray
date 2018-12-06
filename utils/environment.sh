# dirs
XRAY_ENV_PATH="${BASH_SOURCE[0]}"
while [ -h "$XRAY_ENV_PATH" ]; do # resolve $XRAY_ENV_PATH until the file is no longer a symlink
  XRAY_UTILS_DIR="$( cd -P "$( dirname "$XRAY_ENV_PATH" )" && pwd )"
  XRAY_ENV_PATH="$(readlink "$XRAY_ENV_PATH")"
  [[ $XRAY_ENV_PATH != /* ]] && XRAY_ENV_PATH="$XRAY_UTILS_DIR/$XRAY_ENV_PATH" # if $XRAY_ENV_PATH was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
export XRAY_UTILS_DIR="$( cd -P "$( dirname "$XRAY_ENV_PATH" )" && pwd )"
export XRAY_DIR="$( dirname "$XRAY_UTILS_DIR" )"
export XRAY_DATABASE_DIR="${XRAY_DIR}/database"
export XRAY_TOOLS_DIR="${XRAY_DIR}/build/tools"

# misc
export XRAY_PART_YAML="${XRAY_DATABASE_DIR}/${XRAY_DATABASE}/${XRAY_PART}.yaml"
export PYTHONPATH="${XRAY_DIR}:${XRAY_DIR}/third_party/fasm:$PYTHONPATH"

# tools
export XRAY_GENHEADER="${XRAY_UTILS_DIR}/genheader.sh"
export XRAY_BITREAD="${XRAY_TOOLS_DIR}/bitread --part_file ${XRAY_PART_YAML}"
export XRAY_MERGEDB="bash ${XRAY_UTILS_DIR}/mergedb.sh"
export XRAY_DBFIXUP="python3 ${XRAY_UTILS_DIR}/dbfixup.py"
export XRAY_DBCHECK="bash ${XRAY_UTILS_DIR}/dbcheck.sh"
export XRAY_MASKMERGE="bash ${XRAY_UTILS_DIR}/maskmerge.sh"
export XRAY_SEGMATCH="${XRAY_TOOLS_DIR}/segmatch"
export XRAY_SEGPRINT="python3 ${XRAY_UTILS_DIR}/segprint.py"
export XRAY_BITS2FASM="python3 ${XRAY_UTILS_DIR}/bits2fasm.py"
export XRAY_FASM2FRAMES="python3 ${XRAY_UTILS_DIR}/fasm2frames.py"
export XRAY_BITTOOL="${XRAY_TOOLS_DIR}/bittool"
export XRAY_BLOCKWIDTH="python3 ${XRAY_UTILS_DIR}/blockwidth.py"
export XRAY_PARSEDB="python3 ${XRAY_UTILS_DIR}/parsedb.py"
export XRAY_REFORMAT_TCL="${XRAY_DIR}/third_party/reformat.tcl"
export XRAY_TCL_REFORMAT="${XRAY_UTILS_DIR}/tcl-reformat.sh"

