.class Landroid/util/ThreadPool$WorkThread;
.super Ljava/lang/Thread;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkThread"
.end annotation


# instance fields
.field private isRunning:Z

.field final synthetic this$0:Landroid/util/ThreadPool;


# direct methods
.method private constructor <init>(Landroid/util/ThreadPool;)V
    .locals 1

    .prologue
    .line 99
    iput-object p1, p0, Landroid/util/ThreadPool$WorkThread;->this$0:Landroid/util/ThreadPool;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/ThreadPool$WorkThread;->isRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/util/ThreadPool;Landroid/util/ThreadPool$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/util/ThreadPool;
    .param p2, "x1"    # Landroid/util/ThreadPool$1;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/util/ThreadPool$WorkThread;-><init>(Landroid/util/ThreadPool;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 108
    const/4 v2, 0x0

    .line 109
    .local v2, "r":Ljava/lang/Runnable;
    :goto_0
    iget-boolean v3, p0, Landroid/util/ThreadPool$WorkThread;->isRunning:Z

    if-eqz v3, :cond_3

    .line 111
    iget-object v3, p0, Landroid/util/ThreadPool$WorkThread;->this$0:Landroid/util/ThreadPool;

    # getter for: Landroid/util/ThreadPool;->taskQueue:Ljava/util/List;
    invoke-static {v3}, Landroid/util/ThreadPool;->access$100(Landroid/util/ThreadPool;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 113
    :try_start_0
    iget-object v3, p0, Landroid/util/ThreadPool$WorkThread;->this$0:Landroid/util/ThreadPool;

    # getter for: Landroid/util/ThreadPool;->taskQueue:Ljava/util/List;
    invoke-static {v3}, Landroid/util/ThreadPool;->access$100(Landroid/util/ThreadPool;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 115
    iget-object v3, p0, Landroid/util/ThreadPool$WorkThread;->this$0:Landroid/util/ThreadPool;

    # getter for: Landroid/util/ThreadPool;->taskQueue:Ljava/util/List;
    invoke-static {v3}, Landroid/util/ThreadPool;->access$100(Landroid/util/ThreadPool;)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Runnable;

    move-object v2, v0

    .line 137
    :cond_0
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    if-eqz v2, :cond_1

    .line 140
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 142
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 123
    :cond_2
    :try_start_1
    iget-boolean v3, p0, Landroid/util/ThreadPool$WorkThread;->isRunning:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_4

    .line 124
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    :cond_3
    return-void

    .line 127
    :cond_4
    :try_start_3
    iget-object v3, p0, Landroid/util/ThreadPool$WorkThread;->this$0:Landroid/util/ThreadPool;

    # getter for: Landroid/util/ThreadPool;->taskQueue:Ljava/util/List;
    invoke-static {v3}, Landroid/util/ThreadPool;->access$100(Landroid/util/ThreadPool;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    :goto_2
    :try_start_4
    iget-object v3, p0, Landroid/util/ThreadPool$WorkThread;->this$0:Landroid/util/ThreadPool;

    # getter for: Landroid/util/ThreadPool;->taskQueue:Ljava/util/List;
    invoke-static {v3}, Landroid/util/ThreadPool;->access$100(Landroid/util/ThreadPool;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    iget-object v3, p0, Landroid/util/ThreadPool$WorkThread;->this$0:Landroid/util/ThreadPool;

    # getter for: Landroid/util/ThreadPool;->taskQueue:Ljava/util/List;
    invoke-static {v3}, Landroid/util/ThreadPool;->access$100(Landroid/util/ThreadPool;)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Runnable;

    move-object v2, v0

    goto :goto_1

    .line 129
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 137
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method public stopWorker()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/ThreadPool$WorkThread;->isRunning:Z

    .line 149
    return-void
.end method
