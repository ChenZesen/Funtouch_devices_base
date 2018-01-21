.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$9;
.super Landroid/database/ContentObserver;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->registerForSmartWiFiToggle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 2790
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$9;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 2793
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$9;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v1, "vivo_smart_wifi_enabled onChange"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$21900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2794
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$9;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isVivoSmartWiFiEnabled()Z
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$21700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2796
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$9;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vivo_smart_wifi_poor_network_detect_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2801
    :goto_0
    return-void

    .line 2799
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$9;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vivo_smart_wifi_poor_network_detect_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
