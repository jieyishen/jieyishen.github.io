# 数学公式展示

这个页面展示了如何在 MkDocs 中使用数学公式。

## 基础公式

### 行内公式

在文本中插入数学公式：$a^2 + b^2 = c^2$（勾股定理）

### 块级公式

$$
E = mc^2
$$

## 常用数学符号

### 希腊字母

- $\alpha, \beta, \gamma, \delta$
- $\pi, \sigma, \phi, \psi$
- $\Omega, \Delta, \Gamma, \Phi$

### 数学运算

分数：$\frac{a}{b}$

根号：$\sqrt{x}$，$\sqrt[n]{x}$

求和：$\sum_{i=1}^{n} x_i$

积分：$\int_{a}^{b} f(x) dx$

极限：$\lim_{x \to \infty} f(x)$

## 复杂公式示例

### 二项式定理

$$(x + y)^n = \sum_{k=0}^{n} \binom{n}{k} x^{n-k} y^k$$

### 矩阵

$$
\begin{pmatrix}
a & b \\
c & d
\end{pmatrix}
\begin{pmatrix}
x \\
y
\end{pmatrix}
=
\begin{pmatrix}
ax + by \\
cx + dy
\end{pmatrix}
$$

### 微积分

导数：
$$\frac{d}{dx} f(x) = \lim_{h \to 0} \frac{f(x+h) - f(x)}{h}$$

定积分：
$$\int_{a}^{b} f(x) dx = F(b) - F(a)$$

### 概率论

正态分布：
$$f(x) = \frac{1}{\sigma\sqrt{2\pi}} e^{-\frac{(x-\mu)^2}{2\sigma^2}}$$

贝叶斯定理：
$$P(A|B) = \frac{P(B|A) \cdot P(A)}{P(B)}$$

## 物理公式

### 经典力学

牛顿第二定律：$F = ma$

动能：$E_k = \frac{1}{2}mv^2$

### 电磁学

库仑定律：
$$F = k \frac{q_1 q_2}{r^2}$$

麦克斯韦方程组：
$$
\begin{align}
\nabla \cdot \vec{E} &= \frac{\rho}{\epsilon_0} \\
\nabla \cdot \vec{B} &= 0 \\
\nabla \times \vec{E} &= -\frac{\partial \vec{B}}{\partial t} \\
\nabla \times \vec{B} &= \mu_0\vec{J} + \mu_0\epsilon_0\frac{\partial \vec{E}}{\partial t}
\end{align}
$$

### 量子力学

薛定谔方程：
$$i\hbar \frac{\partial \psi}{\partial t} = \hat{H}\psi$$

不确定性原理：
$$\Delta x \Delta p \geq \frac{\hbar}{2}$$

这些公式展示了 MathJax 的强大功能，可以渲染各种复杂的数学表达式。