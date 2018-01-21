.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoDefaultState;
.super Lcom/android/internal/util/State;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VivoDefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 631
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoDefaultState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 632
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 636
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 637
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 668
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 671
    :cond_0
    :goto_0
    :sswitch_0
    return v3

    .line 639
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 640
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v1, "Updating wifi-watchdog secure settings"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 643
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->calculateSignalLevel(I)I
    invoke-static {v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I

    move-result v1

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1202(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I

    goto :goto_0

    .line 655
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1402(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)Z

    goto :goto_0

    .line 658
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1402(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)Z

    goto :goto_0

    .line 664
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoDefaultState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->handlePoorLinkProfilingChange()V
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    goto :goto_0

    .line 637
    :sswitch_data_0
    .sparse-switch
        0x21002 -> :sswitch_0
        0x21003 -> :sswitch_2
        0x21004 -> :sswitch_0
        0x21005 -> :sswitch_0
        0x21006 -> :sswitch_1
        0x21007 -> :sswitch_0
        0x21008 -> :sswitch_3
        0x21009 -> :sswitch_4
        0x2100b -> :sswitch_0
        0x21028 -> :sswitch_0
        0x2102c -> :sswitch_5
        0x25015 -> :sswitch_0
        0x25016 -> :sswitch_0
    .end sparse-switch
.end method
