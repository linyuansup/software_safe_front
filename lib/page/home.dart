import 'package:blog_web/page/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oktoast/oktoast.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Blog'),
        actions: [
          Consumer(builder: (context, ref, child) {
            final username =
                ref.watch(uiProvider.select((value) => value.username));
            if (username == null) {
              return const SizedBox();
            }
            return Text(username);
          }),
          const SizedBox(width: 6),
          Consumer(builder: (context, ref, child) {
            final userId =
                ref.watch(uiProvider.select((value) => value.userId));
            if (userId == null) {
              return const SizedBox();
            }
            return Text("ID: $userId");
          }),
          const SizedBox(width: 6),
          Consumer(builder: (context, ref, child) {
            final role = ref.watch(uiProvider.select((value) => value.role));
            if (role == 0) {
              return const Text('普通用户');
            } else if (role == -1) {
              return const Text('未登录');
            }
            return const Text('管理员');
          }),
          const SizedBox(width: 6),
          Consumer(
            builder: (context, ref, child) {
              return IconButton(
                  onPressed: () {
                    ref.read(uiProvider.notifier).getBlog();
                  },
                  icon: const Icon(Icons.refresh));
            },
          ),
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (dialogContext) {
                    return Dialog(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 210,
                          child: Column(
                            children: [
                              const Text('登录'),
                              Consumer(
                                builder: (context, ref, child) {
                                  return SizedBox(
                                    width: 300,
                                    height: 40,
                                    child: TextField(
                                      decoration: const InputDecoration(
                                          hintText: '请输入手机号'),
                                      onChanged: (value) {
                                        ref.read(uiProvider.notifier).phone =
                                            value;
                                      },
                                    ),
                                  );
                                },
                              ),
                              Consumer(
                                builder: (context, ref, child) {
                                  return SizedBox(
                                    width: 300,
                                    height: 40,
                                    child: TextField(
                                      decoration: const InputDecoration(
                                        hintText: '请输入密码',
                                      ),
                                      obscureText: true,
                                      onChanged: (value) {
                                        ref.read(uiProvider.notifier).password =
                                            value;
                                      },
                                    ),
                                  );
                                },
                              ),
                              Consumer(
                                builder: (context, ref, child) {
                                  return SizedBox(
                                    width: 300,
                                    height: 40,
                                    child: TextField(
                                      decoration: const InputDecoration(
                                        hintText: '请输入用户名',
                                      ),
                                      onChanged: (value) {
                                        ref
                                            .read(uiProvider.notifier)
                                            .inputName = value;
                                      },
                                    ),
                                  );
                                },
                              ),
                              Consumer(builder: (context, ref, child) {
                                return TextButton(
                                    onPressed: () async {
                                      final result = await ref
                                          .read(uiProvider.notifier)
                                          .register();
                                      if (result) {
                                        showToast('登录成功');
                                        if (dialogContext.mounted) {
                                          Navigator.pop(dialogContext);
                                        }
                                      }
                                    },
                                    child: const Text('注册'));
                              }),
                              Consumer(builder: (context, ref, child) {
                                return TextButton(
                                    onPressed: () async {
                                      final result = await ref
                                          .read(uiProvider.notifier)
                                          .login();
                                      if (result) {
                                        showToast('登录成功');
                                        if (dialogContext.mounted) {
                                          Navigator.pop(dialogContext);
                                        }
                                      }
                                    },
                                    child: const Text('登录'));
                              }),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              icon: const Icon(Icons.login)),
        ],
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final blogs = ref.watch(uiProvider.select((value) => value.blog));
          if (blogs != null) {
            return Center(
              child: SizedBox(
                width: 700,
                child: ListView.builder(
                  itemCount: blogs.length,
                  itemBuilder: (context, index) {
                    final blog = blogs[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(blog.sender,
                                style: const TextStyle(fontSize: 20)),
                            const Spacer(),
                            Text(blog.time,
                                style: const TextStyle(color: Colors.black54)),
                            const SizedBox(height: 3),
                            Consumer(
                              builder: (context, ref, child) {
                                final userId = ref.watch(
                                    uiProvider.select((value) => value.userId));
                                final role = ref.watch(
                                    uiProvider.select((value) => value.role));
                                if (userId == null ||
                                    (userId != blog.senderId && role != 1)) {
                                  return const SizedBox();
                                }
                                return Consumer(
                                  builder: (context, ref, child) {
                                    return IconButton(
                                        onPressed: () async {
                                          final result = await ref
                                              .read(uiProvider.notifier)
                                              .delete(blog.id);
                                          if (result) {
                                            showToast('删除成功');
                                          }
                                        },
                                        icon: const Icon(Icons.delete));
                                  },
                                );
                              },
                            )
                          ],
                        ),
                        const SizedBox(height: 3),
                        Text(blog.content),
                        const SizedBox(height: 15)
                      ],
                    );
                  },
                ),
              ),
            );
          }
          return const SizedBox();
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (dialogContext) {
              return Dialog(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 130,
                    child: Column(
                      children: [
                        const Text('编写博客'),
                        Consumer(
                          builder: (context, ref, child) {
                            return SizedBox(
                              width: 300,
                              height: 40,
                              child: TextField(
                                decoration: const InputDecoration(
                                  hintText: '请输入内容',
                                ),
                                onChanged: (value) {
                                  ref.read(uiProvider.notifier).sending = value;
                                },
                              ),
                            );
                          },
                        ),
                        Consumer(builder: (context, ref, child) {
                          return TextButton(
                              onPressed: () async {
                                final result =
                                    await ref.read(uiProvider.notifier).add();
                                if (result) {
                                  showToast('发送成功');
                                  if (dialogContext.mounted) {
                                    Navigator.pop(dialogContext);
                                  }
                                }
                              },
                              child: const Text('发送'));
                        }),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
