set -x PYTHON_KEYRING_BACKEND keyring.backends.null.Keyring
set -x PYTHONIOENCODING utf-8

if status is-interactive
  abbr py python3
end
