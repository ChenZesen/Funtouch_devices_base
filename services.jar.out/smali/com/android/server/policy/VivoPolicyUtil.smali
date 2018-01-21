.class public final Lcom/android/server/policy/VivoPolicyUtil;
.super Ljava/lang/Object;
.source "VivoPolicyUtil.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field public static IS_INPUT_LOG_OPEN:Z

.field public static IS_LOG_OPEN:Z

.field private static mLock:[B

.field private static volatile sVivoUtil:Lcom/android/server/policy/VivoPolicyUtil;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-string v0, "persist.sys.log.ctrl"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/VivoPolicyUtil;->IS_LOG_OPEN:Z

    .line 26
    const-string v0, "persist.sys.input.log"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/VivoPolicyUtil;->IS_INPUT_LOG_OPEN:Z

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/policy/VivoPolicyUtil;->sVivoUtil:Lcom/android/server/policy/VivoPolicyUtil;

    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/server/policy/VivoPolicyUtil;->mLock:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/VivoPolicyUtil;->mContext:Landroid/content/Context;

    .line 99
    new-instance v0, Lcom/android/server/policy/VivoPolicyUtil$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/VivoPolicyUtil$1;-><init>(Lcom/android/server/policy/VivoPolicyUtil;)V

    iput-object v0, p0, Lcom/android/server/policy/VivoPolicyUtil;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    iput-object p1, p0, Lcom/android/server/policy/VivoPolicyUtil;->mContext:Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Lcom/android/server/policy/VivoPolicyUtil;->registerReceiver()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/VivoPolicyUtil;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoPolicyUtil;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/server/policy/VivoPolicyUtil;->verifyVivoLogState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/VivoPolicyUtil;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoPolicyUtil;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/server/policy/VivoPolicyUtil;->verifyMtkLogState(Landroid/content/Intent;)V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/android/server/policy/VivoPolicyUtil;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v0, Lcom/android/server/policy/VivoPolicyUtil;->sVivoUtil:Lcom/android/server/policy/VivoPolicyUtil;

    if-nez v0, :cond_1

    .line 37
    sget-object v1, Lcom/android/server/policy/VivoPolicyUtil;->mLock:[B

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/android/server/policy/VivoPolicyUtil;->sVivoUtil:Lcom/android/server/policy/VivoPolicyUtil;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/android/server/policy/VivoPolicyUtil;

    invoke-direct {v0, p0}, Lcom/android/server/policy/VivoPolicyUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/policy/VivoPolicyUtil;->sVivoUtil:Lcom/android/server/policy/VivoPolicyUtil;

    .line 42
    sget-object v0, Lcom/android/server/policy/VivoPolicyUtil;->sVivoUtil:Lcom/android/server/policy/VivoPolicyUtil;

    const-string v2, "create VivoPolicyUtil"

    invoke-direct {v0, v2}, Lcom/android/server/policy/VivoPolicyUtil;->printCallerInfo(Ljava/lang/String;)V

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcom/android/server/policy/VivoPolicyUtil;->sVivoUtil:Lcom/android/server/policy/VivoPolicyUtil;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static createObject(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p2, "parameterValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/android/server/policy/VivoPolicyUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 333
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 335
    const/4 v2, 0x0

    .line 348
    :goto_0
    return-object v2

    .line 338
    :cond_0
    const/4 v2, 0x0

    .line 341
    .local v2, "result":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 343
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static destoryInstance()V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/android/server/policy/VivoPolicyUtil;->sVivoUtil:Lcom/android/server/policy/VivoPolicyUtil;

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/android/server/policy/VivoPolicyUtil;->sVivoUtil:Lcom/android/server/policy/VivoPolicyUtil;

    const-string v1, "destory VivoPolicyUtil"

    invoke-direct {v0, v1}, Lcom/android/server/policy/VivoPolicyUtil;->printCallerInfo(Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/android/server/policy/VivoPolicyUtil;->sVivoUtil:Lcom/android/server/policy/VivoPolicyUtil;

    invoke-direct {v0}, Lcom/android/server/policy/VivoPolicyUtil;->unregisterReceiver()V

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/policy/VivoPolicyUtil;->sVivoUtil:Lcom/android/server/policy/VivoPolicyUtil;

    .line 57
    :cond_0
    return-void
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 215
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    .line 217
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "filedName"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 371
    .local v0, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 372
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .line 375
    .local v3, "fildValue":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 376
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 377
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 383
    .end local v3    # "fildValue":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 379
    .restart local v3    # "fildValue":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "filedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 354
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .line 357
    .local v2, "fildValue":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 358
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 359
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 365
    .end local v2    # "fildValue":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 361
    .restart local v2    # "fildValue":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "parameterValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 307
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 309
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 312
    .local v2, "m":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 322
    :try_start_1
    invoke-virtual {v2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 328
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 324
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static invokeMethodForResult(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "parameterValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 278
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 280
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 283
    .local v2, "m":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 291
    const/4 v3, 0x0

    .line 294
    .local v3, "result":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {v2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 301
    .end local v3    # "result":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 285
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v3, v4

    .line 288
    goto :goto_0

    .line 296
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .line 299
    goto :goto_0
.end method

.method public static invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "parameterValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 257
    .local v1, "m":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 267
    :try_start_1
    invoke-virtual {v1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 273
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 269
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static invokeStaticMethodForResult(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "parameterValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 227
    const/4 v1, 0x0

    .line 230
    .local v1, "m":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 238
    const/4 v2, 0x0

    .line 241
    .local v2, "result":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {v1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 248
    .end local v2    # "result":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 232
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v2, v3

    .line 235
    goto :goto_0

    .line 243
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v2    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 246
    goto :goto_0
.end method

.method public static isDrivingMode()Z
    .locals 2

    .prologue
    .line 171
    const-string v0, "sys.drive_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSPSMode()Z
    .locals 2

    .prologue
    .line 147
    const-string v0, "sys.super_power_save"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static launchDrivingMode(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    const-string v2, "VivoWMPHook"

    const-string v3, "launchDrivingMode"

    invoke-static {v2, v3}, Lcom/android/server/policy/VivoPolicyUtil;->printf(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.bbk.DrivingMode"

    const-string v3, "com.bbk.DrivingMode.DrivingModeActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 183
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static launchSPS(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const-string v2, "VivoWMPHook"

    const-string v3, "launchSPS"

    invoke-static {v2, v3}, Lcom/android/server/policy/VivoPolicyUtil;->printf(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.bbk.SuperPowerSave"

    const-string v3, "com.bbk.SuperPowerSave.SuperPowerSaveActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 159
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static peekInstance()Lcom/android/server/policy/VivoPolicyUtil;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/server/policy/VivoPolicyUtil;->sVivoUtil:Lcom/android/server/policy/VivoPolicyUtil;

    return-object v0
.end method

.method private printCallerInfo(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 74
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 75
    .local v1, "uid":I
    const-string v2, "VivoWMPHook"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " by PID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; UID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public static printf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/server/policy/VivoPolicyUtil;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.vivo.bbklog.action.CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "com.mediatek.mtklogger.intent.action.LOG_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/android/server/policy/VivoPolicyUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/VivoPolicyUtil;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    return-void
.end method

.method public static sendPowerKeyScreenOffBroadcast(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    const-string v1, "VivoWMPHook"

    const-string v2, "sendPowerKeyScreenOffBroadcast"

    invoke-static {v1, v2}, Lcom/android/server/policy/VivoPolicyUtil;->printf(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "vivo.intent.action.POWER_KEY_SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    return-void
.end method

.method public static sendToggleSPSBroadcast(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    invoke-static {}, Lcom/android/server/policy/VivoPolicyUtil;->isSPSMode()Z

    move-result v1

    .line 196
    .local v1, "isOn":Z
    const-string v3, "VivoWMPHook"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Toggle SPS to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/policy/VivoPolicyUtil;->printf(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.action.super_power_save"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "i":Landroid/content/Intent;
    const-string v3, "sps_action"

    if-eqz v1, :cond_1

    const-string v2, "stop"

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 200
    return-void

    .line 196
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 198
    .restart local v0    # "i":Landroid/content/Intent;
    :cond_1
    const-string v2, "start"

    goto :goto_1
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/policy/VivoPolicyUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/VivoPolicyUtil;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    return-void
.end method

.method private verifyMtkLogState(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 131
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 133
    const-string v4, "affected_log_type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 134
    .local v1, "changedType":I
    const-string v4, "log_new_state"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 135
    .local v2, "changedValue":I
    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 136
    .local v3, "isMtkMobileLogOpen":Z
    :goto_0
    sget-boolean v4, Lcom/android/server/policy/VivoPolicyUtil;->IS_LOG_OPEN:Z

    if-eq v3, v4, :cond_0

    .line 138
    sput-boolean v3, Lcom/android/server/policy/VivoPolicyUtil;->IS_LOG_OPEN:Z

    .line 139
    const-string v5, "persist.sys.log.ctrl"

    sget-boolean v4, Lcom/android/server/policy/VivoPolicyUtil;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_2

    const-string v4, "yes"

    :goto_1
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v1    # "changedType":I
    .end local v2    # "changedValue":I
    .end local v3    # "isMtkMobileLogOpen":Z
    :cond_0
    return-void

    .line 135
    .restart local v1    # "changedType":I
    .restart local v2    # "changedValue":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 139
    .restart local v3    # "isMtkMobileLogOpen":Z
    :cond_2
    const-string v4, "no"

    goto :goto_1
.end method

.method private verifyVivoLogState(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 120
    const-string v1, "persist.sys.is_bbk_log"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 121
    .local v0, "isVivoLogOpen":Z
    :cond_0
    sget-boolean v1, Lcom/android/server/policy/VivoPolicyUtil;->IS_LOG_OPEN:Z

    if-eq v0, v1, :cond_1

    .line 123
    sput-boolean v0, Lcom/android/server/policy/VivoPolicyUtil;->IS_LOG_OPEN:Z

    .line 124
    const-string v2, "persist.sys.log.ctrl"

    sget-boolean v1, Lcom/android/server/policy/VivoPolicyUtil;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_2

    const-string v1, "yes"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_1
    return-void

    .line 124
    :cond_2
    const-string v1, "no"

    goto :goto_0
.end method
