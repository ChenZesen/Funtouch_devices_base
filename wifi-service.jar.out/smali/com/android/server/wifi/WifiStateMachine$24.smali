.class Lcom/android/server/wifi/WifiStateMachine$24;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
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
    .line 13471
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 13475
    invoke-static {}, Landroid/net/VivoTrafficStats;->getWifiTxBytes()J

    move-result-wide v6

    .line 13476
    .local v6, "wifiTxBytes":J
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mRoamRunnable mLastWifiTxBytes:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastWifiTxBytes:J
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$36800(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", wifiTxBytes:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 13477
    :cond_0
    const-wide/16 v2, 0x0

    .line 13478
    .local v2, "dWifiTxBytes":J
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastWifiTxBytes:J
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$36800(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    .line 13479
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastWifiTxBytes:J
    invoke-static {v8, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$36802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 13485
    :goto_0
    invoke-static {}, Landroid/net/VivoTrafficStats;->getWifiTcpRxBytes()J

    move-result-wide v4

    .line 13486
    .local v4, "wifiRxBytes":J
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mRoamRunnable mLastWifiRxPackets:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastWifiRxBytes:J
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$36900(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", wifiRxBytes:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 13487
    :cond_1
    const-wide/16 v0, 0x0

    .line 13488
    .local v0, "dWifiRxBytes":J
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastWifiRxBytes:J
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$36900(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    .line 13489
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastWifiRxBytes:J
    invoke-static {v8, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$36902(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 13495
    :goto_1
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mRoamRunnable dWifiTxBytes:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", dWifiRxBytes:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 13496
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_8

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-nez v8, :cond_8

    .line 13497
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mNoInternetCount:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$37008(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 13498
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mRoamRunnable noInternet:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNoInternetCount:I
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$37000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", getCurrentState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$37100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 13499
    :cond_3
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNoInternetCount:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$37000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v8

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->NO_INTERNET_COUNT_MAX:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$37200()I

    move-result v9

    if-lt v8, v9, :cond_7

    .line 13500
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$37300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$18900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v9

    if-ne v8, v9, :cond_4

    .line 13501
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$17602(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 13502
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$19600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$37400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 13503
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamDhcp:Z
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$28202(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 13522
    :cond_4
    :goto_2
    return-void

    .line 13481
    .end local v0    # "dWifiRxBytes":J
    .end local v4    # "wifiRxBytes":J
    :cond_5
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastWifiTxBytes:J
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$36800(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 13482
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastWifiTxBytes:J
    invoke-static {v8, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$36802(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_0

    .line 13491
    .restart local v0    # "dWifiRxBytes":J
    .restart local v4    # "wifiRxBytes":J
    :cond_6
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastWifiRxBytes:J
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$36900(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v8

    sub-long v0, v4, v8

    .line 13492
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastWifiRxBytes:J
    invoke-static {v8, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$36902(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_1

    .line 13506
    :cond_7
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$37600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Handler;

    move-result-object v8

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->COUNT_INTERVAL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$37500()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v8, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 13508
    :cond_8
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-nez v8, :cond_9

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-nez v8, :cond_9

    .line 13509
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$37600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Handler;

    move-result-object v8

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->COUNT_INTERVAL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$37500()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v8, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 13511
    :cond_9
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mInternetCount:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$37708(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 13512
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mRoamRunnable internet:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInternetCount:I
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$37700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 13513
    :cond_a
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInternetCount:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$37700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v8

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->INTERNET_COUNT_MAX:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$37800()I

    move-result v9

    if-lt v8, v9, :cond_c

    .line 13514
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v9, "mRoamRunnable internet is ok, stop thread"

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 13515
    :cond_b
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamDhcp:Z
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$28202(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_2

    .line 13517
    :cond_c
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNoInternetCount:I
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$37002(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 13518
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mRoamRunnable set noInternet:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNoInternetCount:I
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$37000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 13519
    :cond_d
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$24;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$37600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Handler;

    move-result-object v8

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->COUNT_INTERVAL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$37500()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v8, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2
.end method
