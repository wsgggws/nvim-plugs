# nvim

基于 lazy.nvim 的配置

## 我的环境

```
MacBook Air (M2, 2022 16GB)
MacOS Monterey 12.6.6

NVIM v0.9.0
plugins manager: https://github.com/folke/lazy.nvim
template: https://www.lazyvim.org/
my config: https://github.com/wsgggws/nvim
some requirements: https://github.com/wsgggws/dotfiles/tree/main/brew
```

### 公式大法

**[count] + operator + [count] + motion/text-object**

- d3w # 删除 3 个单词
- dfi / d2fi # f 表示 find, 删除到第2个 i, 包括 i
- di” / d2i” # i 表示 inside, a 表示 around, 注意你不一定要先移动到”里面再进行操作

### 移动

- hjkl/fFtT
- ctrl+o/i
- m’
- gd/gr

### 其它快捷键

这些是我根据本项目自定义的快捷键整理的，可以参考链接： [https://github.com/wsgggws/dotfiles/blob/main/cheat/cheatsheets/personal/nvim](https://github.com/wsgggws/dotfiles/blob/main/cheat/cheatsheets/personal/nvim)

### 编辑

- cmp + snippet
- macros
- :normal :s

### Debug

- dap (Python and Go)

### 增强

- projects (root.nvim, telescope.nvim)
- linter (null-ls.nvim)
- formatter (null-ls.nvim)
- runner (code-runner.nvim)
- terminal (toggleterm.nvim)
- git (lazygit.nvim)
- file-manager (e-tree.nvim)
- auto-swith input method (im-select.nvim)
- auto show diagnostics (diagflow.nvim)
