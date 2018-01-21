.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8$1;
.super Ljava/lang/Object;
.source "VivoWifiWatchdogStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;)V
    .locals 0

    .prologue
    .line 2660
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8$1;->this$1:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8$1;->this$1:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8$1;->this$1:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;

    iget-object v1, v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLatestRssi:I
    invoke-static {v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2663
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8$1;->this$1:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)V

    .line 2665
    :cond_0
    return-void
.end method
