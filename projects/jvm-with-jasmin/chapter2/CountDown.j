.class public CountDown
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 2

  bipush 10
  istore_1

loop:
  iload_1
  bipush 0
  if_icmplt exit
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload_1
  invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
  invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
  iinc 1 -1
  goto loop

exit:
  return
.end method