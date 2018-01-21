.class public final Lcom/vivo/services/hallstate/HallManager$HallMonitor;
.super Ljava/lang/Object;
.source "HallManager.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/hallstate/HallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HallMonitor"
.end annotation


# instance fields
.field private final mListener:Lcom/vivo/services/hallstate/IHallEventListener;

.field private mMonitoring:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mTag:Ljava/lang/String;

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/vivo/services/hallstate/HallManager;


# direct methods
.method constructor <init>(Lcom/vivo/services/hallstate/HallManager;Lcom/vivo/services/hallstate/IHallEventListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "listener"    # Lcom/vivo/services/hallstate/IHallEventListener;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->this$0:Lcom/vivo/services/hallstate/HallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mMonitoring:Z

    .line 65
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mToken:Landroid/os/IBinder;

    .line 66
    iput-object p2, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mListener:Lcom/vivo/services/hallstate/IHallEventListener;

    .line 67
    iput-object p3, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mTag:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mPackageName:Ljava/lang/String;

    .line 69
    if-nez p2, :cond_0

    .line 70
    const-string v0, "HallManager"

    const-string v1, "Warning: init with null listener"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v1, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-boolean v0, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mMonitoring:Z

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "HallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HallMonitor finalized while still listening: tag=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" packageName=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->this$0:Lcom/vivo/services/hallstate/HallManager;

    iget-object v2, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mListener:Lcom/vivo/services/hallstate/IHallEventListener;

    invoke-virtual {v0, v2}, Lcom/vivo/services/hallstate/HallManager;->unregisterHallStateListener(Lcom/vivo/services/hallstate/IHallEventListener;)V

    .line 137
    :cond_0
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isMonitoring()Z
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-boolean v0, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mMonitoring:Z

    monitor-exit v1

    return v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startMonitor()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->startMonitor(I)Z

    move-result v0

    return v0
.end method

.method public startMonitor(I)Z
    .locals 6
    .param p1, "flag"    # I

    .prologue
    const/4 v0, 0x1

    .line 98
    iget-object v1, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-boolean v2, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mMonitoring:Z

    if-eqz v2, :cond_0

    .line 100
    monitor-exit v1

    .line 115
    :goto_0
    return v0

    .line 103
    :cond_0
    # getter for: Lcom/vivo/services/hallstate/HallManager;->HAVE_HALL_SENSOR:Z
    invoke-static {}, Lcom/vivo/services/hallstate/HallManager;->access$000()Z

    move-result v2

    if-nez v2, :cond_1

    .line 104
    monitor-exit v1

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 107
    :cond_1
    if-ne p1, v0, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->this$0:Lcom/vivo/services/hallstate/HallManager;

    invoke-virtual {v2}, Lcom/vivo/services/hallstate/HallManager;->haveHolsterWindow()Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    monitor-exit v1

    goto :goto_0

    .line 111
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->this$0:Lcom/vivo/services/hallstate/HallManager;

    invoke-virtual {v2}, Lcom/vivo/services/hallstate/HallManager;->haveHolsterWindow()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    monitor-exit v1

    goto :goto_0

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->this$0:Lcom/vivo/services/hallstate/HallManager;

    iget-object v2, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mListener:Lcom/vivo/services/hallstate/IHallEventListener;

    iget-object v4, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mPackageName:Ljava/lang/String;

    # invokes: Lcom/vivo/services/hallstate/HallManager;->registerHallStateListener(Landroid/os/IBinder;Lcom/vivo/services/hallstate/IHallEventListener;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v2, v3, v4, v5}, Lcom/vivo/services/hallstate/HallManager;->access$100(Lcom/vivo/services/hallstate/HallManager;Landroid/os/IBinder;Lcom/vivo/services/hallstate/IHallEventListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mMonitoring:Z

    .line 115
    iget-boolean v0, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mMonitoring:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public stopMonitor()V
    .locals 3

    .prologue
    .line 122
    iget-object v1, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-boolean v0, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mMonitoring:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->this$0:Lcom/vivo/services/hallstate/HallManager;

    iget-object v2, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mListener:Lcom/vivo/services/hallstate/IHallEventListener;

    invoke-virtual {v0, v2}, Lcom/vivo/services/hallstate/HallManager;->unregisterHallStateListener(Lcom/vivo/services/hallstate/IHallEventListener;)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;->mMonitoring:Z

    .line 127
    :cond_0
    monitor-exit v1

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
