.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$HostRefreshThread;
.super Ljava/lang/Thread;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HostRefreshThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 1

    .prologue
    .line 2722
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$HostRefreshThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .line 2723
    const-string v0, "HostRefreshThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2724
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2727
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$HostRefreshThread;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setHostCache()Z
    invoke-static {v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$21800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2731
    :goto_0
    return-void

    .line 2728
    :catch_0
    move-exception v0

    .line 2729
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
