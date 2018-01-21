.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogDisabledState;
.super Lcom/android/internal/util/State;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VivoWatchdogDisabledState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogDisabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 681
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogDisabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogDisabledState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 682
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 686
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogDisabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v3, p1, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 687
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 707
    :goto_0
    const/4 v2, 0x0

    :cond_0
    :goto_1
    return v2

    .line 689
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogDisabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isWatchdogEnabled()Z
    invoke-static {v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 690
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogDisabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogDisabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoNotConnectedState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNotConnectedState;
    invoke-static {v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNotConnectedState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 693
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 694
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "networkInfo"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 697
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$11;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 699
    :pswitch_2
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogDisabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v4, "Watchdog disabled, verify link"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 700
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogDisabledState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v3, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)V

    goto :goto_0

    .line 687
    :pswitch_data_0
    .packed-switch 0x21001
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 697
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method
