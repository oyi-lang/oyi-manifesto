.class public FactorialJasmin
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method private static factorial(I)I
  .limit stack 3
  .limit locals 3

  iconst_1
  istore_1 ; f = 1
  iconst_2
  istore_2 ; i = 2

loop:
  iload_2 ; load i
  iload_1 ; load f
  imul ; f * i
  istore_1 ; f = f * i
  iinc 2 1 ; i += 1
  iload_2
  iload_0 ; the argument passed in
  if_icmple loop
  
  iload_1
  ireturn
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 2
  .limit locals 1

  getstatic java/lang/System/out Ljava/io/PrintStream; 
  bipush 10 ; push 10 on operand stack
  invokestatic FactorialJasmin/factorial(I)I ; factorial(10)
  invokevirtual java/io/PrintStream/println(I)V ; print factorial(10)
  return
.end method