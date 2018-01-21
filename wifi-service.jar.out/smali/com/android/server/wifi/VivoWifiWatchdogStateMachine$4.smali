.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;
.super Ljava/lang/Object;
.source "VivoWifiWatchdogStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 1945
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 1948
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v8, "#.##"

    invoke-direct {v6, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1951
    .local v6, "df":Ljava/text/DecimalFormat;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v8

    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v8, v8, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTextView:Landroid/widget/TextView;

    if-nez v8, :cond_1

    .line 1952
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v9, "mPoorLinkProfilingInfo mCurrentBssid=null return"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$16700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1985
    :goto_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$8400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/os/Handler;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkProfilingInfo:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$8300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Ljava/lang/Runnable;

    move-result-object v9

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1989
    :goto_1
    return-void

    .line 1954
    :cond_1
    const-wide/16 v2, 0x0

    .line 1955
    .local v2, "clValue":D
    const-wide/16 v4, 0x0

    .line 1956
    .local v4, "clVolume":D
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1957
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v8

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->access$10900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v2

    .line 1958
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v8

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->access$11000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v4

    .line 1960
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v8, v8, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTextView:Landroid/widget/TextView;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1961
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v9, v8, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTextView:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Link Status: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v10, v10, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkStatus:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "SSID: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSSID:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$16800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "BSSID: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v10

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->access$14200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "RSSI: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLatestRssi:I
    invoke-static {v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "LinkSpeed: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkSpeed:I
    invoke-static {v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "GoodLinkTargetRssi: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    move-result-object v10

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I
    invoke-static {v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->access$7800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "tableString: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->tableString:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$16900()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "filterS: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->filterSpeed:D
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$11700()D

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "CurrS: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrenSpeed:D
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$11800()D

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "RX/TX(KB): "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpRxBytes:J
    invoke-static {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$12700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v8, v12, v14

    if-nez v8, :cond_3

    const-string v8, "0"

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpRxBytes:J
    invoke-static {v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$12700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-virtual {v6, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " , "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpTxBytes:J
    invoke-static {v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$12500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-virtual {v6, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "    txCount:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getTxBytesCount()D
    invoke-static {v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$17000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->txrxBytesToString()Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$17100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->speedToString()Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$17200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "CurrLossRate:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v2

    invoke-virtual {v6, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "%"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " , "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "CurrLossPkt:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1986
    .end local v2    # "clValue":D
    .end local v4    # "clVolume":D
    :catch_0
    move-exception v7

    .line 1987
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1961
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "clValue":D
    .restart local v4    # "clVolume":D
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpRxBytes:J
    invoke-static {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$12700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    long-to-double v12, v12

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpTxBytes:J
    invoke-static {v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$12500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    div-long v14, v14, v16

    long-to-double v14, v14

    div-double/2addr v12, v14

    invoke-virtual {v6, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto/16 :goto_2
.end method
