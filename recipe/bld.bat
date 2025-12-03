@echo on

%PYTHON% -m pip install --no-deps --no-build-isolation https://pypi.org/packages/py3/k/kumo-api/kumo_api-%PKG_VERSION%-py3-none-any.whl

if errorlevel 1 exit 1