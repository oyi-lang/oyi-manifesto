; add two numbers

.class public AddNumsJasmin
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method private static addNums(II)I
  .limit stack 3
  .limit locals 3 ; the arguments count in the locals' count
  
  ; calling convention - arg1 in 0, arg2 in 1 et al
  iload_0 ; load the first argument
  iload_1 ; load the second argument
  iadd ; add them
  ireturn ; return their sum
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 1

  getstatic java/lang/System/out Ljava/io/PrintStream;
  iconst_1
  bipush 99
  invokestatic AddNumsJasmin/addNums(II)I
  invokevirtual java/io/PrintStream/println(I)V
  return
.end method