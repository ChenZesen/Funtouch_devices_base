.class public Landroid/util/MutilTaskUtil;
.super Ljava/lang/Object;
.source "MutilTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/MutilTaskUtil$Task;
    }
.end annotation


# instance fields
.field private mObj:Ljava/lang/Object;

.field private mTaskCount:I

.field private mThreadPool:Landroid/util/ThreadPool;


# direct methods
.method public constructor <init>(Landroid/util/ThreadPool;)V
    .locals 2
    .param p1, "pool"    # Landroid/util/ThreadPool;

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/MutilTaskUtil;->mThreadPool:Landroid/util/ThreadPool;

    .line 9
    iput v1, p0, Landroid/util/MutilTaskUtil;->mTaskCount:I

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/util/MutilTaskUtil;->mObj:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Landroid/util/MutilTaskUtil;->mThreadPool:Landroid/util/ThreadPool;

    .line 16
    iput v1, p0, Landroid/util/MutilTaskUtil;->mTaskCount:I

    .line 17
    return-void
.end method

.method static synthetic access$000(Landroid/util/MutilTaskUtil;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/util/MutilTaskUtil;

    .prologue
    .line 6
    iget-object v0, p0, Landroid/util/MutilTaskUtil;->mObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$110(Landroid/util/MutilTaskUtil;)I
    .locals 2
    .param p0, "x0"    # Landroid/util/MutilTaskUtil;

    .prologue
    .line 6
    iget v0, p0, Landroid/util/MutilTaskUtil;->mTaskCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/util/MutilTaskUtil;->mTaskCount:I

    return v0
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 21
    iget-object v0, p0, Landroid/util/MutilTaskUtil;->mThreadPool:Landroid/util/ThreadPool;

    new-instance v1, Landroid/util/MutilTaskUtil$Task;

    invoke-direct {v1, p0, p1}, Landroid/util/MutilTaskUtil$Task;-><init>(Landroid/util/MutilTaskUtil;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/util/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 22
    iget-object v1, p0, Landroid/util/MutilTaskUtil;->mObj:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    iget v0, p0, Landroid/util/MutilTaskUtil;->mTaskCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/MutilTaskUtil;->mTaskCount:I

    .line 25
    monitor-exit v1

    .line 26
    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitAllTask()V
    .locals 3

    .prologue
    .line 32
    :goto_0
    iget-object v2, p0, Landroid/util/MutilTaskUtil;->mObj:Ljava/lang/Object;

    monitor-enter v2

    .line 36
    :try_start_0
    iget v1, p0, Landroid/util/MutilTaskUtil;->mTaskCount:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v1, :cond_0

    .line 37
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    return-void

    .line 38
    :cond_0
    :try_start_2
    iget-object v1, p0, Landroid/util/MutilTaskUtil;->mObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    :goto_1
    :try_start_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 40
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
