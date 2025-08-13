from setuptools import setup, find_packages

setup(
    name='titanic-streamlit-app',
    version='0.1.0',
    description='A Streamlit app for Titanic data analysis and prediction',
    author='Your Name',
    author_email='your.email@example.com',
    packages=find_packages(),
    install_requires=[
        'streamlit',
        'pandas',
        'numpy',
        'scikit-learn',
        'matplotlib',
        'altair',
    ],
    license='Apache License 2.0',
    classifiers=[
        'License :: OSI Approved :: Apache Software License',
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.7',
)