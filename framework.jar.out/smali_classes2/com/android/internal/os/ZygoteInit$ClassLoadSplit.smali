.class Lcom/android/internal/os/ZygoteInit$ClassLoadSplit;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClassLoadSplit"
.end annotation


# instance fields
.field private mClassList:[Ljava/lang/String;

.field private mEnd:I

.field private mStart:I


# direct methods
.method constructor <init>(II[Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "classList"    # [Ljava/lang/String;

    .prologue
    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 892
    iput p1, p0, Lcom/android/internal/os/ZygoteInit$ClassLoadSplit;->mStart:I

    .line 893
    iput p2, p0, Lcom/android/internal/os/ZygoteInit$ClassLoadSplit;->mEnd:I

    .line 894
    iput-object p3, p0, Lcom/android/internal/os/ZygoteInit$ClassLoadSplit;->mClassList:[Ljava/lang/String;

    .line 895
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 900
    const-string v4, "boot_opt"

    const-string v5, "start Split class load"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    .line 903
    .local v2, "runtime":Ldalvik/system/VMRuntime;
    iget v1, p0, Lcom/android/internal/os/ZygoteInit$ClassLoadSplit;->mStart:I

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/android/internal/os/ZygoteInit$ClassLoadSplit;->mEnd:I

    if-ge v1, v4, :cond_2

    .line 907
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/os/ZygoteInit$ClassLoadSplit;->mClassList:[Ljava/lang/String;

    aget-object v4, v4, v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 903
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 909
    :catch_0
    move-exception v0

    .line 911
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class not found for preloading: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/ZygoteInit$ClassLoadSplit;->mClassList:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 913
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 915
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem preloading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/ZygoteInit$ClassLoadSplit;->mClassList:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 917
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v3

    .line 919
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error preloading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/ZygoteInit$ClassLoadSplit;->mClassList:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 920
    instance-of v4, v3, Ljava/lang/Error;

    if-eqz v4, :cond_0

    .line 922
    check-cast v3, Ljava/lang/Error;

    .end local v3    # "t":Ljava/lang/Throwable;
    throw v3

    .line 924
    .restart local v3    # "t":Ljava/lang/Throwable;
    :cond_0
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_1

    .line 926
    check-cast v3, Ljava/lang/RuntimeException;

    .end local v3    # "t":Ljava/lang/Throwable;
    throw v3

    .line 928
    .restart local v3    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 932
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_2
    const-string v4, "boot_opt"

    const-string v5, "end Split class load"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    return-void
.end method
