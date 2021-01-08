# * is the unpacking operator
def my_sum(*args):
    result = 0
    # Iterating over the Python args tuple
    for x in args:
        result += x
    return result

# ** accepts keyword (or named) arguments
def concatenate(**kwargs):
    result = ""
    # Iterating over the Python kwargs dictionary
    for arg in kwargs.values():
        result += arg
    return result

# correct_function_definition.py
# The *args variable is appropriately listed before **kwargs but not the other way around
def my_function(a, b, *args, **kwargs):
    pass

if __name__ == '__main__':
    print(my_sum(1, 2, 3))
    print(my_sum(*[1, 2, 3]))
    print(concatenate(a="This", b="Is", c="A", d="Test", e="!"))