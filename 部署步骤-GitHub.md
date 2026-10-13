# 部署到 GitHub Pages（一步步照做即可）

部署完成后你会得到一个网址，形如：

```
https://你的用户名.github.io/huiben/
```

**手机、平板、电脑打开这个网址就能用，不需要电脑开机，不需要同一个 WiFi。**

---

## 准备工作

需要有一个 GitHub 账号（免费注册）：https://github.com/signup

---

## 方法一：网页上传（最简单，不用装任何软件）

### 第 1 步：新建仓库

1. 登录 GitHub，点右上角 **+** → **New repository**
2. **Repository name** 填：`huiben`（也可以叫别的，英文小写）
3. 选 **Public**（必须是公开的，否则 Pages 要收费）
4. **不要**勾选 "Add a README file"（我们已经有了）
5. 点 **Create repository**

### 第 2 步：上传文件

1. 在新仓库页面，点 **uploading an existing file** 链接
   （或 Add file → Upload files）
2. 把本文件夹里的这几个文件**全部拖进去**：
   - `index.html` ← 必须叫这个名字
   - `README.md`
   - `.nojekyll`
   
   > ⚠️ `.nojekyll` 是隐藏文件，Windows 需在资源管理器「查看」里勾选"隐藏的项目"才能看到。
   > 如果实在找不到，跳过它也能用，不影响。

3. 下方 **Commit changes** 点一下

### 第 3 步：开启 Pages

1. 仓库页面上方点 **Settings**（设置）
2. 左侧菜单找到 **Pages**
3. **Source** 选：`Deploy from a branch`
4. **Branch** 选：`main`，右边的文件夹选 `/ (root)`
5. 点 **Save**

### 第 4 步：等 1~2 分钟，访问

刷新 Settings → Pages 页面，顶部会出现绿色提示和网址，形如：

```
https://你的用户名.github.io/huiben/
```

**这个网址就是你的绘本朗读工具。**

---

## 方法二：命令行（如果你电脑装了 git）

### 2A. 一键脚本（推荐，Windows / Mac 都有）

本文件夹里有现成脚本，双击即可：

- Windows：双击 **`上传到GitHub.bat`**
- Mac：双击 **`上传到GitHub.command`**

脚本会提示你粘贴一个 GitHub Token，然后自动上传。

**怎么弄一个 Token（只需 1 分钟）：**

1. 打开 https://github.com/settings/tokens
2. 点 **Generate new token** → **Generate new token (classic)**
3. **Note** 随便填，比如 `huiben`
4. **Expiration** 选 30 天或 90 天
5. 勾选权限：**`repo`**（第一个大项，打钩即可）
6. 拉到底点 **Generate token**，复制那串 `github_pat_...`
7. 粘到脚本里回车

> ⚠️ Token 相当于密码，不要发给别人。用完后建议到同一页面点 **Delete** 撤销。

### 2B. 手动命令

在本文件夹里打开终端，依次执行（把 `你的用户名` 换成实际用户名）：

```bash
git init
git add .
git commit -m "绘本朗读"
git branch -M main
git remote add origin https://github.com/你的用户名/huiben.git
git push -u origin main
```

推送后，按上面「第 3 步」开启 Pages 即可。

---

## 在手机上使用

1. 手机浏览器打开上面那个网址
2. 点浏览器菜单 → **添加到主屏幕**
3. 桌面上就有「绘本朗读」图标了，点开即用，全屏无地址栏，像 App 一样

### 手机使用小贴士

- **第一次打开会慢几秒**（要下载中文识别包 20MB），之后就快了（约 1 秒）
- 有 WiFi 时建议第一次先打开识别一页，让它把语言包缓存好
- 拍照时让文字清晰、正对页面，识别更准
- iPhone 第一次点「开始朗读」会自动处理声音权限，正常点即可
- 照片全部在你手机上处理，**不会上传到 GitHub 或任何服务器**

---

## 常见问题

**问：Pages 页面打开是 404？**
刚开启 Pages 需要等 1~2 分钟构建，稍等再刷新。仍不行的话检查文件名是否严格是 `index.html`（全小写）。

**问：提示 "Your site is having problems building"？**
多半是 `.nojekyll` 没上传导致。补传该文件即可。

**问：手机打开后识别报错？**
检查网络。识别引擎和语言包从 CDN 加载，需要联网一次（之后浏览器会缓存）。

**问：想更新程序怎么办？**
重新上传覆盖 `index.html` 即可，网址不变。

**问：不想公开了怎么办？**
Settings → Pages → Source 改回 `None`，网址立即失效。
