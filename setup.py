from setuptools import setup, find_packages

setup(
    name='my_project_name',  # Change this
    version='0.1.0',
    packages=find_packages(),
    install_requires=[
        # List your dependencies here, e.g.:
        'pandas',
        'numpy',
    ],
    classifiers=[
        'License :: OSI Approved :: Apache Software License',
        'Programming Language :: Python :: 3',
    ],
)