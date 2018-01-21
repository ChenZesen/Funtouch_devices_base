.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;
.super Lcom/android/internal/util/State;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VivoLinkMonitoringState"
.end annotation


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private mLastFailedCount:J

.field private mLastMultipleRetryCount:J

.field private mLastRetryCount:J

.field private mLastRssi:I

.field private mLastRxGood:I

.field private mLastTxBad:I

.field private mLastTxGood:I

.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const v3, 0x21035

    .line 1068
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSampleCount:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6102(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I

    .line 1070
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-direct {v1, v2, v4, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;D)V

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9502(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    .line 1075
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->handlePoorLinkProfilingChange()V
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 1076
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->mCm:Landroid/net/ConnectivityManager;

    .line 1079
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v1, "good link"

    iput-object v1, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkStatus:Ljava/lang/String;

    .line 1083
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->clearPktRecord()V
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 1084
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->clearForegroundAppInfo()V
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 1085
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->clearSpeedRecord()V
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 1086
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->clearPacketInfoRecord()V
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 1087
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->preparePacketInfo()V
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$10000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 1088
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v0, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$10100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)V

    .line 1089
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/wifi/VivoSmartWifiConstants;->vivoNoInternetDetectEnabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/wifi/VivoSmartWifiConstants;->vivoForegroundDetectedEnabled:Z

    if-eqz v0, :cond_2

    .line 1090
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessage(I)V

    .line 1094
    :cond_2
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$8400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkProfilingInfo:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$8300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1369
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->hideLatencyPanel()V
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$8500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 1370
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v1, "N/A"

    iput-object v1, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkStatus:Ljava/lang/String;

    .line 1371
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 65
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1098
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v5, v0, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 1099
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 1360
    const/4 v5, 0x0

    .line 1362
    :goto_0
    return v5

    .line 1101
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->calculateSignalLevel(I)I
    invoke-static {v6, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I

    move-result v6

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1202(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I

    .line 1102
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v5

    const/4 v6, 0x3

    if-gt v5, v6, :cond_1

    .line 1362
    :cond_0
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 1106
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoOnlineWatchState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;
    invoke-static {v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$10200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1111
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoLinkMonitoringState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;
    invoke-static {v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$10300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1115
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1116
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoOnlineState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineState;
    invoke-static {v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$8800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineState;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$10400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1117
    :cond_2
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1118
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v5

    const v6, 0x25014

    invoke-virtual {v5, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v7, 0x2100b

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6404(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_1

    .line 1126
    :sswitch_3
    sget-boolean v5, Lcom/android/server/wifi/VivoSmartWifiConstants;->vivoPoorLinkDetectEnabled:Z

    if-eqz v5, :cond_0

    .line 1129
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCurrentBssid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$10500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1134
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/net/wifi/RssiPacketCountInfo;

    .line 1135
    .local v36, "info":Landroid/net/wifi/RssiPacketCountInfo;
    move-object/from16 v0, v36

    iget v11, v0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 1136
    .local v11, "rssi":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->mLastRssi:I

    add-int/2addr v5, v11

    div-int/lit8 v37, v5, 0x2

    .line 1137
    .local v37, "mrssi":I
    move-object/from16 v0, v36

    iget v0, v0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    move/from16 v53, v0

    .line 1138
    .local v53, "txbad":I
    move-object/from16 v0, v36

    iget v0, v0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    move/from16 v64, v0

    .line 1141
    .local v64, "txgood":I
    move-object/from16 v0, v36

    iget-wide v0, v0, Landroid/net/wifi/RssiPacketCountInfo;->rFailedCount:J

    move-wide/from16 v46, v0

    .line 1142
    .local v46, "rFailedCount":J
    move-object/from16 v0, v36

    iget-wide v0, v0, Landroid/net/wifi/RssiPacketCountInfo;->rRetryCount:J

    move-wide/from16 v50, v0

    .line 1143
    .local v50, "rRetryCount":J
    move-object/from16 v0, v36

    iget-wide v0, v0, Landroid/net/wifi/RssiPacketCountInfo;->rMultipleRetryCount:J

    move-wide/from16 v48, v0

    .line 1144
    .local v48, "rMultipleRetryCount":J
    move-object/from16 v0, v36

    iget v10, v0, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    .line 1145
    .local v10, "linkspeed":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-object/from16 v0, v36

    iget v6, v0, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkSpeed:I
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6602(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I

    .line 1146
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLatestRssi:I
    invoke-static {v5, v11}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6702(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I

    .line 1149
    move-object/from16 v0, v36

    iget v0, v0, Landroid/net/wifi/RssiPacketCountInfo;->rxgood:I

    move/from16 v52, v0

    .line 1155
    .local v52, "rxgood":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v44

    .line 1156
    .local v44, "now":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v5

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->access$10600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v6

    sub-long v6, v44, v6

    const-wide/16 v8, 0x7d0

    cmp-long v5, v6, v8

    if-gez v5, :cond_7

    .line 1159
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->mLastTxBad:I

    sub-int v12, v53, v5

    .line 1160
    .local v12, "dbad":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->mLastTxGood:I

    sub-int v32, v64, v5

    .line 1161
    .local v32, "dgood":I
    add-int v34, v12, v32

    .line 1163
    .local v34, "dtotal":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->mLastRxGood:I

    sub-int v33, v52, v5

    .line 1166
    .local v33, "drxgood":I
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->mLastFailedCount:J

    sub-long v24, v46, v6

    .line 1167
    .local v24, "dFailCount":J
    move-wide/from16 v28, v50

    .line 1168
    .local v28, "dRetryCount":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->mLastMultipleRetryCount:J

    sub-long v26, v48, v6

    .line 1171
    .local v26, "dMultipleRetryCount":J
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vivo Fetch RSSI succeed, rssi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mrssi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dbad="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dgood="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dtotal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dFailCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dRetryCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " linkspeed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$10700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1175
    :cond_3
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fetch RSSI succeed, rssi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mrssi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " txbad="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " txgood="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v64

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " linkspeed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dbad="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dRetryCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dMultipleRetryCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v26

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$10800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1178
    :cond_4
    if-lez v34, :cond_7

    .line 1180
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-boolean v5, v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWeightAlgo:Z

    if-nez v5, :cond_8

    .line 1182
    int-to-double v6, v12

    move/from16 v0, v34

    int-to-double v8, v0

    div-double v40, v6, v8

    .line 1184
    .local v40, "loss":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v5

    move-wide/from16 v0, v40

    move/from16 v2, v34

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    .line 1186
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1187
    new-instance v30, Ljava/text/DecimalFormat;

    const-string v5, "#.##"

    move-object/from16 v0, v30

    invoke-direct {v0, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1188
    .local v30, "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incremental loss="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Current loss="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v7

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->access$10900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v8

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v14

    move-object/from16 v0, v30

    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "% volume="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v7

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->access$11000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v8

    move-object/from16 v0, v30

    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$11100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1193
    .end local v30    # "df":Ljava/text/DecimalFormat;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v5

    move/from16 v0, v37

    move-wide/from16 v1, v40

    move/from16 v3, v34

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->updateLoss(IDI)V

    .line 1237
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getAvergSpeed()D
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$11500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)D

    move-result-wide v38

    .line 1238
    .local v38, "lastSpeed":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->getValue()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->getVolume()D

    move-result-wide v8

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->updateSpeed(DDII)V
    invoke-static/range {v5 .. v11}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$11600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;DDII)V

    .line 1239
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getAvergSpeed()D
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$11500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)D

    move-result-wide v22

    .line 1240
    .local v22, "currentSpeed":D
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v38

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double v8, v8, v22

    add-double/2addr v6, v8

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->filterSpeed:D
    invoke-static {v6, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$11702(D)D

    .line 1241
    new-instance v31, Ljava/text/DecimalFormat;

    const-string v5, "#.##"

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1242
    .local v31, "df1":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vivoconclusion, linkspeed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mCurrenSpeed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrenSpeed:D
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$11800()D

    move-result-wide v8

    move-object/from16 v0, v31

    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " filterSpeed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->filterSpeed:D
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$11700()D

    move-result-wide v8

    move-object/from16 v0, v31

    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " CurrentLoss "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->getValue()D

    move-result-wide v8

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v14

    move-object/from16 v0, v31

    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " drxgood "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rssi "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " lastSpeed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " currentSpeed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$11900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1244
    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->mLastRxGood:I

    .line 1246
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->filterSpeed:D
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$11700()D

    move-result-wide v6

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->shouldSwitch4G(D)Z
    invoke-static {v5, v6, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;D)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1247
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSampleCount:I
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6104(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v5

    int-to-double v6, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_7

    .line 1248
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get true , mCurrentSignalLevel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tempDisableSmartWifi:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/wifi/VivoSmartWifiConstants;->tempDisableSmartWifi:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$12100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1249
    invoke-static {}, Lcom/android/server/wifi/VivoSmartWifiConstants;->isTempDisableSmartWifi()Z

    move-result v5

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isForegroundAppVisit()Z
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$12200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1250
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const/4 v6, 0x0

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6404(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    .line 1289
    .end local v12    # "dbad":I
    .end local v22    # "currentSpeed":D
    .end local v24    # "dFailCount":J
    .end local v26    # "dMultipleRetryCount":J
    .end local v28    # "dRetryCount":J
    .end local v31    # "df1":Ljava/text/DecimalFormat;
    .end local v32    # "dgood":I
    .end local v33    # "drxgood":I
    .end local v34    # "dtotal":I
    .end local v38    # "lastSpeed":D
    .end local v40    # "loss":D
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v5

    move-wide/from16 v0, v44

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J
    invoke-static {v5, v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->access$10602(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;J)J

    .line 1290
    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->mLastTxBad:I

    .line 1291
    move/from16 v0, v64

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->mLastTxGood:I

    .line 1292
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->mLastRssi:I

    .line 1295
    move-wide/from16 v0, v46

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->mLastFailedCount:J

    .line 1296
    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->mLastRetryCount:J

    .line 1297
    move-wide/from16 v0, v48

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->mLastMultipleRetryCount:J

    goto/16 :goto_1

    .line 1198
    .restart local v12    # "dbad":I
    .restart local v24    # "dFailCount":J
    .restart local v26    # "dMultipleRetryCount":J
    .restart local v28    # "dRetryCount":J
    .restart local v32    # "dgood":I
    .restart local v33    # "drxgood":I
    .restart local v34    # "dtotal":I
    :cond_8
    int-to-double v6, v12

    move/from16 v0, v34

    int-to-double v8, v0

    div-double v40, v6, v8

    .line 1199
    .restart local v40    # "loss":D
    new-instance v30, Ljava/text/DecimalFormat;

    const-string v5, "#.##"

    move-object/from16 v0, v30

    invoke-direct {v0, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1200
    .restart local v30    # "df":Ljava/text/DecimalFormat;
    const/4 v4, 0x5

    .line 1204
    .local v4, "MinSpeed":I
    mul-int/lit8 v5, v12, 0x10

    int-to-long v6, v5

    add-long v6, v6, v28

    long-to-double v6, v6

    mul-int/lit8 v5, v12, 0x10

    add-int v5, v5, v32

    int-to-long v8, v5

    add-long v8, v8, v28

    long-to-double v8, v8

    div-double v42, v6, v8

    .line 1206
    .local v42, "loss_withRetry":D
    mul-int/lit8 v5, v12, 0x10

    add-int v5, v5, v32

    move-wide/from16 v0, v28

    long-to-int v6, v0

    add-int v35, v5, v6

    .line 1208
    .local v35, "dtotalRetry":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 1209
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v5

    invoke-static {v5}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1210
    const/4 v4, 0x5

    .line 1216
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkSpeed:I
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v5

    if-ge v5, v4, :cond_b

    const/16 v5, -0x50

    if-gt v11, v5, :cond_b

    .line 1218
    mul-int/lit8 v5, v12, 0x10

    int-to-long v6, v5

    add-long v6, v6, v28

    long-to-double v6, v6

    mul-int/lit8 v5, v12, 0x10

    add-int v5, v5, v32

    int-to-long v8, v5

    add-long v8, v8, v28

    long-to-double v8, v8

    div-double v42, v6, v8

    .line 1219
    mul-int/lit8 v5, v12, 0x10

    add-int v5, v5, v32

    move-wide/from16 v0, v28

    long-to-int v6, v0

    add-int v35, v5, v6

    .line 1220
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v6, "retryretry"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$11200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1228
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v5

    move-wide/from16 v0, v42

    move/from16 v2, v35

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v5

    move/from16 v0, v37

    move-wide/from16 v1, v42

    move/from16 v3, v35

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->updateLoss(IDI)V

    .line 1230
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1231
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "conclusion, LinkSpeed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkSpeed:I
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Current loss="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v7

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->access$10900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v8

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v14

    move-object/from16 v0, v30

    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rssi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " txgood="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " txbad="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dtotal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dRetryCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$11400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1211
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$2800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v5

    invoke-static {v5}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1212
    const/4 v4, 0x7

    goto/16 :goto_4

    .line 1222
    :cond_b
    int-to-double v6, v12

    move/from16 v0, v34

    int-to-double v8, v0

    div-double v42, v6, v8

    .line 1223
    move/from16 v35, v34

    .line 1224
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v6, "noretrynoretry"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$11300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1255
    .end local v4    # "MinSpeed":I
    .end local v30    # "df":Ljava/text/DecimalFormat;
    .end local v35    # "dtotalRetry":I
    .end local v42    # "loss_withRetry":D
    .restart local v22    # "currentSpeed":D
    .restart local v31    # "df1":Ljava/text/DecimalFormat;
    .restart local v38    # "lastSpeed":D
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSampleCount:I
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6102(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I

    goto/16 :goto_3

    .line 1304
    .end local v10    # "linkspeed":I
    .end local v11    # "rssi":I
    .end local v12    # "dbad":I
    .end local v22    # "currentSpeed":D
    .end local v24    # "dFailCount":J
    .end local v26    # "dMultipleRetryCount":J
    .end local v28    # "dRetryCount":J
    .end local v31    # "df1":Ljava/text/DecimalFormat;
    .end local v32    # "dgood":I
    .end local v33    # "drxgood":I
    .end local v34    # "dtotal":I
    .end local v36    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    .end local v37    # "mrssi":I
    .end local v38    # "lastSpeed":D
    .end local v40    # "loss":D
    .end local v44    # "now":J
    .end local v46    # "rFailedCount":J
    .end local v48    # "rMultipleRetryCount":J
    .end local v50    # "rRetryCount":J
    .end local v52    # "rxgood":I
    .end local v53    # "txbad":I
    .end local v64    # "txgood":I
    :sswitch_4
    sget-boolean v5, Lcom/android/server/wifi/VivoSmartWifiConstants;->vivoForegroundDetectedEnabled:Z

    if-eqz v5, :cond_d

    .line 1305
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setForegroundAppInfo()V
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$12300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 1309
    :cond_d
    sget-boolean v5, Lcom/android/server/wifi/VivoSmartWifiConstants;->vivoNoInternetDetectEnabled:Z

    if-eqz v5, :cond_e

    .line 1310
    invoke-static {}, Landroid/net/VivoTrafficStats;->getTotalTxPackets()J

    move-result-wide v62

    .line 1311
    .local v62, "totalTxPkt":J
    invoke-static {}, Landroid/net/VivoTrafficStats;->getWifiTcpRxPackets()J

    move-result-wide v56

    .line 1312
    .local v56, "totalTcpRxPkt":J
    invoke-static {}, Landroid/net/VivoTrafficStats;->getWifiTcpTxPackets()J

    move-result-wide v60

    .line 1314
    .local v60, "totalTcpTxPkt":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpTxPkt:J
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$12400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J

    move-result-wide v6

    long-to-double v14, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpTxBytes:J
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$12500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J

    move-result-wide v6

    long-to-double v0, v6

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpRxPkt:J
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$12600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J

    move-result-wide v6

    long-to-double v0, v6

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpRxBytes:J
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$12700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J

    move-result-wide v6

    long-to-double v0, v6

    move-wide/from16 v20, v0

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setCurrentPacketInfo(DDDD)V
    invoke-static/range {v13 .. v21}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;DDDD)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTotalTxPkt:J
    invoke-static {v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$13000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J

    move-result-wide v6

    sub-long v6, v62, v6

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTxPkt:J
    invoke-static {v5, v6, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;J)J

    .line 1317
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpRxPkt:J
    invoke-static {v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$13100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J

    move-result-wide v6

    sub-long v6, v56, v6

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpRxPkt:J
    invoke-static {v5, v6, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$12602(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;J)J

    .line 1318
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpTxPkt:J
    invoke-static {v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$13200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J

    move-result-wide v6

    sub-long v6, v60, v6

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpTxPkt:J
    invoke-static {v5, v6, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$12402(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;J)J

    .line 1319
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-wide/from16 v0, v62

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTotalTxPkt:J
    invoke-static {v5, v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$13002(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;J)J

    .line 1320
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-wide/from16 v0, v56

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpRxPkt:J
    invoke-static {v5, v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$13102(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;J)J

    .line 1321
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-wide/from16 v0, v60

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpTxPkt:J
    invoke-static {v5, v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$13202(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;J)J

    .line 1323
    invoke-static {}, Landroid/net/VivoTrafficStats;->getWifiTcpRxBytes()J

    move-result-wide v54

    .line 1324
    .local v54, "totalTcpRxBytes":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpRxBytes:J
    invoke-static {v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$13300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J

    move-result-wide v6

    sub-long v6, v54, v6

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpRxBytes:J
    invoke-static {v5, v6, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$12702(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;J)J

    .line 1325
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-wide/from16 v0, v54

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpRxBytes:J
    invoke-static {v5, v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$13302(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;J)J

    .line 1327
    invoke-static {}, Landroid/net/VivoTrafficStats;->getWifiTxBytes()J

    move-result-wide v58

    .line 1328
    .local v58, "totalTcpTxBytes":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpTxBytes:J
    invoke-static {v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$13400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J

    move-result-wide v6

    sub-long v6, v58, v6

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpTxBytes:J
    invoke-static {v5, v6, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$12502(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;J)J

    .line 1329
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-wide/from16 v0, v58

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpTxBytes:J
    invoke-static {v5, v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$13402(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;J)J

    .line 1331
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->rxtxBytesNeedCheckInternet()Z
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$13500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1332
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendInternetCheck()V
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$13600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    .line 1335
    .end local v54    # "totalTcpRxBytes":J
    .end local v56    # "totalTcpRxPkt":J
    .end local v58    # "totalTcpTxBytes":J
    .end local v60    # "totalTcpTxPkt":J
    .end local v62    # "totalTxPkt":J
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v6, 0x21035

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_1

    .line 1339
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1402(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)Z

    .line 1340
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v6, 0x21035

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$13700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)V

    .line 1341
    sget-boolean v5, Lcom/android/server/wifi/VivoSmartWifiConstants;->vivoNoInternetDetectEnabled:Z

    if-nez v5, :cond_f

    sget-boolean v5, Lcom/android/server/wifi/VivoSmartWifiConstants;->vivoForegroundDetectedEnabled:Z

    if-eqz v5, :cond_0

    .line 1342
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v6, 0x21035

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 1346
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1402(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)Z

    .line 1347
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const v6, 0x21035

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$13800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)V

    goto/16 :goto_1

    .line 1352
    :sswitch_7
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v6, "RSSI_FETCH_FAILED"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$13900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1356
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->handlePoorLinkProfilingChange()V
    invoke-static {v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$1500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    goto/16 :goto_1

    .line 1099
    nop

    :sswitch_data_0
    .sparse-switch
        0x21003 -> :sswitch_0
        0x21007 -> :sswitch_1
        0x21008 -> :sswitch_5
        0x21009 -> :sswitch_6
        0x2100b -> :sswitch_2
        0x2102c -> :sswitch_8
        0x21035 -> :sswitch_4
        0x25015 -> :sswitch_3
        0x25016 -> :sswitch_7
    .end sparse-switch
.end method
