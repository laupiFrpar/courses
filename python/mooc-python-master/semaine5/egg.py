#!/usr/bin/python
class C(object):
    def f(self):
        self.x = 1

    def g(self):
        self.y = 1

class A(C):
    def f(self):
        self.x = 2

c = C()
a = A()
c.f()
c.g()
a.f()
a.g()
print vars(c)
print vars(a)
print a.__class__
print A.__bases__
