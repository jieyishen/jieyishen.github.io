# Python 编程技巧

分享一些实用的 Python 编程技巧。

## 基础技巧

### 列表推导式

```python
# 传统方法
squares = []
for i in range(10):
    squares.append(i**2)

# 列表推导式
squares = [i**2 for i in range(10)]
```

### 字典推导式

```python
# 创建字典
word_lengths = {word: len(word) for word in ['python', 'java', 'go']}
```

### 枚举和压缩

```python
# enumerate 获取索引和值
for index, value in enumerate(['a', 'b', 'c']):
    print(f"{index}: {value}")

# zip 并行迭代
names = ['Alice', 'Bob', 'Charlie']
ages = [25, 30, 35]
for name, age in zip(names, ages):
    print(f"{name} is {age} years old")
```

## 高级技巧

### 生成器

```python
def fibonacci():
    a, b = 0, 1
    while True:
        yield a
        a, b = b, a + b

# 使用生成器
fib = fibonacci()
for _ in range(10):
    print(next(fib))
```

### 上下文管理器

```python
# 文件操作
with open('file.txt', 'r') as f:
    content = f.read()
    # 文件会自动关闭
```

这些技巧可以让你的 Python 代码更加简洁和高效。

## 数学相关

Python 在科学计算中也很强大，可以处理复杂的数学运算：

### 数值计算示例

```python
import numpy as np
import matplotlib.pyplot as plt

# 计算正弦函数
x = np.linspace(0, 2*np.pi, 100)
y = np.sin(x)

# 绘制图形
plt.plot(x, y)
plt.title('正弦函数: $y = \sin(x)$')
plt.show()
```

### 常用数学公式

二次方程求根公式：
$$x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$$

欧拉公式：
$$e^{i\pi} + 1 = 0$$

泰勒级数：
$$f(x) = \sum_{n=0}^{\infty} \frac{f^{(n)}(a)}{n!}(x-a)^n$$