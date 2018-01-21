.class Lcom/android/server/wifi/WifiStateMachine$23;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;->handleSuspendOptimization(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 13412
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$23;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 13414
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->isPacketThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$36400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13416
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->suspendOptimizationReason:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$36500()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 13417
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13424
    :cond_0
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->suspendOptimizationEnabled:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$36000()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$23;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$36700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$23;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$18900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$23;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$15700(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 13425
    invoke-static {}, Lcom/android/server/wifi/VivoWifiPacketFilterHelper;->getPacketFilter()Ljava/lang/String;

    move-result-object v1

    .line 13426
    .local v1, "packetFilter":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$23;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSuspendOptimization setRxPacketFileter:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 13427
    :cond_1
    if-eqz v1, :cond_2

    .line 13428
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$23;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiNative;->setRxPacketFileter(Ljava/lang/String;)Z

    .line 13429
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$23;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->isFilterSet:Z
    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$36302(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 13432
    .end local v1    # "packetFilter":Ljava/lang/String;
    :cond_2
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->isPacketThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$36400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13433
    return-void

    .line 13418
    :cond_3
    :try_start_1
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->suspendOptimizationReason:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$36500()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 13419
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PKT_FILTER_DELAY_TIME_MS:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$36600()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 13421
    :catch_0
    move-exception v0

    .line 13422
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
