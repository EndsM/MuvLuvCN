## Note

This note will be written in chinese. English user can refer to git history to see the comments.

该笔记将用中文进行记录。

## The usage of this note （该笔记的用处）

该笔记用于记录对于一些游戏内容的修改细节、对于中文命名改为英文命名的的记录，以及一些其他需要众人知悉的改动细节。

## The content （内容）

### 2023.11.7

在onaction部分，将“被beta攻陷地区”的效果里，把地区标记为betaland的条目放到了FROM.FROM里面，因为原本的方法使得该效果处于country scope里面。

将common/decision以及其子目录改为了replace的加载方法，因此保证在未来hoi4版本更新时，可以减少对于该部分的修改。

将common/units/equipment这一路径的replace加载方式正确的进行了实装，并且目前将让游戏运行的最低装备文件需求进行了加入，以mod原本的装备属性为最高优先级进行覆盖，理论上和修改前区别是没有的。这一改动的目的是为了在未来对装备进行更多重构或者现代化改修的时候，可以不用担心原版装备的问题。

在特种作战学说这一科技树中，注释掉了submod里面的特殊兵种的加成以减少相关报错，并将相关加成给予了强袭步行攻击机，因此事实上加强了这一海军陆战队等价兵种。

给游戏地图中增加了5个缺失的港口建筑的位置描述，因此修复了游戏AI功能遍历海军逻辑时，由于该exception而无限循环，导致CPU、GPU、内存占用无限大而最终内存泄漏崩溃的问题。