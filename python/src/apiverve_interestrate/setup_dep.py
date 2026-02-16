from setuptools import setup, find_packages

setup(
    name='apiverve_interestrate',
    version='1.1.14',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Interest Rate is a tool for retrieving current central bank policy interest rates for major economies worldwide. It returns the latest rate along with the central bank name and effective date.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/interestrate?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
