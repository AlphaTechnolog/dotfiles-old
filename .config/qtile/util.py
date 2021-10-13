from pathlib import Path
from os.path import expanduser

home_path = Path(expanduser('~'))


def local_bin(name: str) -> str:
    bin_path = home_path / f'.local/bin/{name}'
    return str(bin_path.absolute())