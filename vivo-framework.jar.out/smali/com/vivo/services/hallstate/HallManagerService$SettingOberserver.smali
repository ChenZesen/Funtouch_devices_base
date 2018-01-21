.class Lcom/vivo/services/hallstate/HallManagerService$SettingOberserver;
.super Landroid/database/ContentObserver;
.source "HallManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/hallstate/HallManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingOberserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/hallstate/HallManagerService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/hallstate/HallManagerService;)V
    .locals 1

    .prologue
    .line 600
    iput-object p1, p0, Lcom/vivo/services/hallstate/HallManagerService$SettingOberserver;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    .line 602
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 603
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 607
    # getter for: Lcom/vivo/services/hallstate/HallManagerService;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/hallstate/HallManagerService;->access$1900()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/vivo/services/hallstate/HallManagerService$SettingOberserver;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    iget-object v2, p0, Lcom/vivo/services/hallstate/HallManagerService$SettingOberserver;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    # getter for: Lcom/vivo/services/hallstate/HallManagerService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/vivo/services/hallstate/HallManagerService;->access$1300(Lcom/vivo/services/hallstate/HallManagerService;)Landroid/content/ContentResolver;

    move-result-object v2

    # invokes: Lcom/vivo/services/hallstate/HallManagerService;->isEnabled(Landroid/content/ContentResolver;)Z
    invoke-static {v0, v2}, Lcom/vivo/services/hallstate/HallManagerService;->access$1400(Lcom/vivo/services/hallstate/HallManagerService;Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/vivo/services/hallstate/HallManagerService$SettingOberserver;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/vivo/services/hallstate/HallManagerService;->hallSwitchEnable(I)I

    .line 613
    :goto_0
    monitor-exit v1

    .line 614
    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/vivo/services/hallstate/HallManagerService$SettingOberserver;->this$0:Lcom/vivo/services/hallstate/HallManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/vivo/services/hallstate/HallManagerService;->hallSwitchEnable(I)I

    goto :goto_0

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
