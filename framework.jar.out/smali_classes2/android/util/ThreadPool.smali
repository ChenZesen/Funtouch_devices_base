.class public final Landroid/util/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/ThreadPool$1;,
        Landroid/util/ThreadPool$WorkThread;
    }
.end annotation


# static fields
.field private static threadPool:Landroid/util/ThreadPool;

.field private static worker_num:I


# instance fields
.field private taskQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private workThreads:[Landroid/util/ThreadPool$WorkThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x2

    sput v0, Landroid/util/ThreadPool;->worker_num:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/util/ThreadPool;-><init>(I)V

    .line 27
    return-void
.end method

.method private constructor <init>(I)V
    .locals 4
    .param p1, "worker_num"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/util/ThreadPool;->taskQueue:Ljava/util/List;

    .line 32
    sput p1, Landroid/util/ThreadPool;->worker_num:I

    .line 33
    new-array v1, p1, [Landroid/util/ThreadPool$WorkThread;

    iput-object v1, p0, Landroid/util/ThreadPool;->workThreads:[Landroid/util/ThreadPool$WorkThread;

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 36
    iget-object v1, p0, Landroid/util/ThreadPool;->workThreads:[Landroid/util/ThreadPool$WorkThread;

    new-instance v2, Landroid/util/ThreadPool$WorkThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/util/ThreadPool$WorkThread;-><init>(Landroid/util/ThreadPool;Landroid/util/ThreadPool$1;)V

    aput-object v2, v1, v0

    .line 37
    iget-object v1, p0, Landroid/util/ThreadPool;->workThreads:[Landroid/util/ThreadPool$WorkThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/util/ThreadPool$WorkThread;->start()V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method static synthetic access$100(Landroid/util/ThreadPool;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/util/ThreadPool;

    .prologue
    .line 11
    iget-object v0, p0, Landroid/util/ThreadPool;->taskQueue:Ljava/util/List;

    return-object v0
.end method

.method public static getThreadPool()Landroid/util/ThreadPool;
    .locals 1

    .prologue
    .line 44
    sget v0, Landroid/util/ThreadPool;->worker_num:I

    invoke-static {v0}, Landroid/util/ThreadPool;->getThreadPool(I)Landroid/util/ThreadPool;

    move-result-object v0

    return-object v0
.end method

.method public static getThreadPool(I)Landroid/util/ThreadPool;
    .locals 1
    .param p0, "worker_num1"    # I

    .prologue
    .line 50
    sget-object v0, Landroid/util/ThreadPool;->threadPool:Landroid/util/ThreadPool;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/util/ThreadPool;

    invoke-direct {v0, p0}, Landroid/util/ThreadPool;-><init>(I)V

    sput-object v0, Landroid/util/ThreadPool;->threadPool:Landroid/util/ThreadPool;

    .line 52
    :cond_0
    sget-object v0, Landroid/util/ThreadPool;->threadPool:Landroid/util/ThreadPool;

    return-object v0
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 58
    iget-object v1, p0, Landroid/util/ThreadPool;->taskQueue:Ljava/util/List;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v0, p0, Landroid/util/ThreadPool;->taskQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Landroid/util/ThreadPool;->taskQueue:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 62
    monitor-exit v1

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public destroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 69
    :goto_0
    const/4 v2, 0x0

    .line 70
    .local v2, "r":Z
    iget-object v4, p0, Landroid/util/ThreadPool;->taskQueue:Ljava/util/List;

    monitor-enter v4

    .line 72
    :try_start_0
    iget-object v3, p0, Landroid/util/ThreadPool;->taskQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    .line 73
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    if-eqz v2, :cond_0

    .line 86
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget v3, Landroid/util/ThreadPool;->worker_num:I

    if-ge v1, v3, :cond_1

    .line 88
    iget-object v3, p0, Landroid/util/ThreadPool;->workThreads:[Landroid/util/ThreadPool$WorkThread;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/util/ThreadPool$WorkThread;->stopWorker()V

    .line 89
    iget-object v3, p0, Landroid/util/ThreadPool;->workThreads:[Landroid/util/ThreadPool$WorkThread;

    aput-object v6, v3, v1

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 78
    :cond_0
    const-wide/16 v4, 0xa

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "i":I
    :cond_1
    iget-object v4, p0, Landroid/util/ThreadPool;->taskQueue:Ljava/util/List;

    monitor-enter v4

    .line 93
    :try_start_3
    iget-object v3, p0, Landroid/util/ThreadPool;->taskQueue:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 94
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    sput-object v6, Landroid/util/ThreadPool;->threadPool:Landroid/util/ThreadPool;

    .line 96
    iget-object v3, p0, Landroid/util/ThreadPool;->taskQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 97
    return-void

    .line 94
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method
