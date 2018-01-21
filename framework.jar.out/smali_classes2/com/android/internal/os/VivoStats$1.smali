.class Lcom/android/internal/os/VivoStats$1;
.super Ljava/lang/Object;
.source "VivoStats.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/VivoStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/VivoStats;


# direct methods
.method constructor <init>(Lcom/android/internal/os/VivoStats;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/internal/os/VivoStats$1;->this$0:Lcom/android/internal/os/VivoStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 283
    const-string v0, "VivoStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/android/internal/os/VivoStats$1;->this$0:Lcom/android/internal/os/VivoStats;

    # invokes: Lcom/android/internal/os/VivoStats;->getConfig(Landroid/os/IBinder;)Z
    invoke-static {v0, p2}, Lcom/android/internal/os/VivoStats;->access$1000(Lcom/android/internal/os/VivoStats;Landroid/os/IBinder;)Z

    .line 285
    # getter for: Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;
    invoke-static {}, Lcom/android/internal/os/VivoStats;->access$600()Lcom/android/internal/os/VivoStats$NoteHandler;

    move-result-object v0

    # getter for: Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;
    invoke-static {}, Lcom/android/internal/os/VivoStats;->access$600()Lcom/android/internal/os/VivoStats$NoteHandler;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, v2, p2}, Lcom/android/internal/os/VivoStats$NoteHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 286
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 290
    const-string v0, "VivoStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v0, 0x0

    # setter for: Lcom/android/internal/os/VivoStats;->mRemote:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/os/VivoStats;->access$202(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 292
    const/4 v0, 0x1

    # setter for: Lcom/android/internal/os/VivoStats;->mTState:Z
    invoke-static {v0}, Lcom/android/internal/os/VivoStats;->access$302(Z)Z

    .line 293
    # getter for: Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;
    invoke-static {}, Lcom/android/internal/os/VivoStats;->access$600()Lcom/android/internal/os/VivoStats$NoteHandler;

    move-result-object v0

    const/16 v1, 0x2711

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 294
    return-void
.end method
