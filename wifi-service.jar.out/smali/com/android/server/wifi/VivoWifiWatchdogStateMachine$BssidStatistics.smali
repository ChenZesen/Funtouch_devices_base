.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
.super Ljava/lang/Object;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BssidStatistics"
.end annotation


# instance fields
.field private final mBssid:Ljava/lang/String;

.field private mBssidAvoidTimeMax:J

.field private mEntries:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

.field private mEntriesSize:I

.field private mGoodLinkTargetCount:I

.field private mGoodLinkTargetIndex:I

.field private mGoodLinkTargetRssi:I

.field private mLastTimeGood:J

.field private mLastTimePoor:J

.field private mLastTimeSample:J

.field private mRssiBase:I

.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 6
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1602
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1603
    iput-object p2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;

    .line 1604
    const/16 v1, -0x69

    iput v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    .line 1605
    const/16 v1, 0x3d

    iput v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    .line 1606
    iget v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    new-array v1, v1, [Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    iput-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    .line 1607
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v0, v1, :cond_0

    .line 1608
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    new-instance v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    const-wide v4, 0x3fb999999999999aL    # 0.1

    invoke-direct {v2, p1, v4, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;D)V

    aput-object v2, v1, v0

    .line 1607
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1609
    :cond_0
    return-void
.end method

.method static synthetic access$10600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    .prologue
    .line 1572
    iget-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J

    return-wide v0
.end method

.method static synthetic access$10602(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    .line 1572
    iput-wide p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J

    return-wide p1
.end method

.method static synthetic access$14200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14302(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    .line 1572
    iput-wide p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J

    return-wide p1
.end method

.method static synthetic access$14402(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    .line 1572
    iput-wide p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J

    return-wide p1
.end method

.method static synthetic access$7000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    .prologue
    .line 1572
    iget-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    return-wide v0
.end method

.method static synthetic access$7002(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    .line 1572
    iput-wide p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    return-wide p1
.end method

.method static synthetic access$7800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    .prologue
    .line 1572
    iget v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    return v0
.end method

.method static synthetic access$7802(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # I

    .prologue
    .line 1572
    iput p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    return p1
.end method

.method static synthetic access$7900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    .prologue
    .line 1572
    iget v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    return v0
.end method


# virtual methods
.method public findRssiTarget(IID)I
    .locals 17
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "threshold"    # D

    .prologue
    .line 1747
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int p1, p1, v9

    .line 1748
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int p2, p2, v9

    .line 1749
    const/4 v4, 0x0

    .line 1750
    .local v4, "emptyCount":I
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    .line 1752
    .local v2, "d":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v10, "findRssiTarget start"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$15400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1754
    move/from16 v5, p1

    .local v5, "i":I
    :goto_1
    move/from16 v0, p2

    if-eq v5, v0, :cond_5

    .line 1756
    if-ltz v5, :cond_2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v5, v9, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v9, v9, v5

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->access$11000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v10, v12

    if-lez v9, :cond_2

    .line 1757
    const/4 v4, 0x0

    .line 1758
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v8, v9, v5

    .line 1759
    .local v8, "rssi":I
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v9, "#.##"

    invoke-direct {v3, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1760
    .local v3, "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] rssi="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " threshold="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double v12, v12, p3

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "% value="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v11, v11, v5

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v11}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->access$10900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v14

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "% volume="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v11, v11, v5

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v11}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->access$11000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$15500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1765
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v9, v9, v5

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->access$10900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v10

    cmpg-double v9, v10, p3

    if-gez v9, :cond_4

    .line 1768
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1769
    new-instance v3, Ljava/text/DecimalFormat;

    .end local v3    # "df":Ljava/text/DecimalFormat;
    const-string v9, "#.##"

    invoke-direct {v3, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1770
    .restart local v3    # "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Scan target found: rssi="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " threshold="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double v12, v12, p3

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "% value="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v11, v11, v5

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v11}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->access$10900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v14

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "% volume="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v11, v11, v5

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v11}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->access$11000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$15600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1775
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v10, "findRssiTarget end"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$15700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1800
    .end local v3    # "df":Ljava/text/DecimalFormat;
    .end local v8    # "rssi":I
    :goto_2
    return v8

    .line 1750
    .end local v2    # "d":I
    .end local v5    # "i":I
    :cond_1
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 1778
    .restart local v2    # "d":I
    .restart local v5    # "i":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x3

    if-lt v4, v9, :cond_4

    .line 1780
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v8, v9, v5

    .line 1781
    .restart local v8    # "rssi":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->presetLoss(I)D

    move-result-wide v6

    .line 1782
    .local v6, "lossPreset":D
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v9, "#.##"

    invoke-direct {v3, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1783
    .restart local v3    # "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] rssi="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " threshold="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double v12, v12, p3

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "% value="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v6

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "% volume=preset"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$15800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1787
    cmpg-double v9, v6, p3

    if-gez v9, :cond_4

    .line 1788
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1789
    new-instance v3, Ljava/text/DecimalFormat;

    .end local v3    # "df":Ljava/text/DecimalFormat;
    const-string v9, "#.##"

    invoke-direct {v3, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1790
    .restart local v3    # "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Scan target found: rssi="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " threshold="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double v12, v12, p3

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "% value="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v6

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "% volume=preset"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$15900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1794
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v10, "findRssiTarget end"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$16000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1754
    .end local v3    # "df":Ljava/text/DecimalFormat;
    .end local v6    # "lossPreset":D
    .end local v8    # "rssi":I
    :cond_4
    add-int/2addr v5, v2

    goto/16 :goto_1

    .line 1798
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v10, "findRssiTarget end"

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$16100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1800
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v8, v9, p2

    goto/16 :goto_2
.end method

.method public newLinkDetected()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1715
    iget-wide v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 1716
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previous avoidance still in effect, rssi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$15200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1736
    :cond_0
    :goto_0
    return-void

    .line 1722
    :cond_1
    const/16 v0, -0x69

    .line 1723
    .local v0, "from":I
    const/16 v2, -0x2d

    .line 1724
    .local v2, "to":I
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mGoodLinkThreshold:D
    invoke-static {v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$14900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)D

    move-result-wide v4

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->findRssiTarget(IID)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 1725
    iput v9, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    .line 1726
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->MAX_AVOID_TIME:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$15000()[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v3

    aget-object v3, v3, v8

    iget v3, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    .line 1727
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New link verifying target set, rssi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$15300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1730
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-boolean v3, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkProfilingEnabled:Z

    if-ne v3, v9, :cond_0

    .line 1732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newLinkDetected link speed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkSpeed:I
    invoke-static {v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "target  rssi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1733
    .local v1, "ss":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    .line 1734
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public poorLinkDetected(I)Z
    .locals 22
    .param p1, "rssi"    # I

    .prologue
    .line 1662
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Poor link detected, rssi="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$14700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1664
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1665
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J

    move-wide/from16 v18, v0

    sub-long v8, v12, v18

    .line 1666
    .local v8, "lastGood":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J

    move-wide/from16 v18, v0

    sub-long v10, v12, v18

    .line 1670
    .local v10, "lastPoor":J
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    move/from16 v17, v0

    if-lez v17, :cond_1

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$14800()[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;->REDUCE_TIME_MS:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v17, v10, v18

    if-ltz v17, :cond_1

    .line 1671
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    goto :goto_0

    .line 1673
    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    .line 1676
    add-int/lit8 v6, p1, 0x3

    .line 1677
    .local v6, "from":I
    add-int/lit8 v16, p1, 0x14

    .line 1678
    .local v16, "to":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mGoodLinkThreshold:D
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$14900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)D

    move-result-wide v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->findRssiTarget(IID)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 1679
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    move/from16 v17, v0

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$14800()[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;->RSSI_ADJ_DBM:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 1681
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fb999999999999aL    # 0.1

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v17, v0

    sub-int v17, p1, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 1683
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    move/from16 v17, v0

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$14800()[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    .line 1686
    :cond_2
    const/4 v7, 0x0

    .local v7, "p":I
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->MAX_AVOID_TIME:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$15000()[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v14, v17, -0x1

    .line 1687
    .local v14, "pmax":I
    :goto_1
    if-ge v7, v14, :cond_3

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->MAX_AVOID_TIME:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$15000()[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v17

    add-int/lit8 v18, v7, 0x1

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;->MIN_RSSI_DBM:I

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1688
    :cond_3
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->MAX_AVOID_TIME:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$15000()[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v17

    aget-object v17, v17, v7

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v4, v0

    .line 1691
    .local v4, "avoidMax":J
    const-wide/16 v18, 0x0

    cmp-long v17, v4, v18

    if-gtz v17, :cond_4

    const/16 v17, 0x0

    .line 1707
    :goto_2
    return v17

    .line 1694
    :cond_4
    add-long v18, v12, v4

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    .line 1696
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "goodRssi="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " goodCount="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " lastGood="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " lastPoor="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " avoidMax="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$15100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1700
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkProfilingEnabled:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1701
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "poorLinkDetected link speed="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkSpeed:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$6600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " target rssi="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1702
    .local v15, "ss":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$9600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v15, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    .line 1703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 1707
    .end local v15    # "ss":Ljava/lang/String;
    :cond_6
    const/16 v17, 0x1

    goto/16 :goto_2
.end method

.method public presetLoss(I)D
    .locals 11
    .param p1, "rssi"    # I

    .prologue
    const/16 v10, 0x5a

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1643
    const/16 v4, -0x5a

    if-gt p1, v4, :cond_0

    .line 1652
    :goto_0
    return-wide v2

    .line 1644
    :cond_0
    if-lez p1, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    .line 1646
    :cond_1
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$14600()[D

    move-result-object v4

    if-nez v4, :cond_2

    .line 1648
    const/16 v1, 0x5a

    .line 1649
    .local v1, "size":I
    new-array v4, v10, [D

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$14602([D)[D

    .line 1650
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v10, :cond_2

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$14600()[D

    move-result-object v4

    rsub-int/lit8 v5, v0, 0x5a

    int-to-double v6, v5

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double v6, v2, v6

    aput-wide v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1652
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$14600()[D

    move-result-object v2

    neg-int v3, p1

    aget-wide v2, v2, v3

    goto :goto_0
.end method

.method public updateLoss(IDI)V
    .locals 8
    .param p1, "rssi"    # I
    .param p2, "value"    # D
    .param p4, "volume"    # I

    .prologue
    .line 1624
    if-gtz p4, :cond_1

    .line 1634
    :cond_0
    :goto_0
    return-void

    .line 1625
    :cond_1
    iget v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int v1, p1, v2

    .line 1626
    .local v1, "index":I
    if-ltz v1, :cond_0

    iget v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v1, v2, :cond_0

    .line 1627
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v2, v2, v1

    invoke-virtual {v2, p2, p3, p4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    .line 1628
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1629
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#.##"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1630
    .local v0, "df":Ljava/text/DecimalFormat;
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache updated: loss["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v4, v4, v1

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->access$10900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "% volume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v4, v4, v1

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->access$11000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$14500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public vivoGetValue(I)D
    .locals 13
    .param p1, "rssi"    # I

    .prologue
    .line 1806
    iget v10, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int v5, p1, v10

    .line 1807
    .local v5, "middle":I
    add-int/lit8 v0, v5, -0x5

    .line 1808
    .local v0, "begin":I
    add-int/lit8 v1, v5, 0x5

    .line 1809
    .local v1, "end":I
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "vivoGetValue rssi "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " begin "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " middle "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " end "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$16200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1810
    :cond_0
    if-ltz v5, :cond_1

    iget v10, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-lt v5, v10, :cond_3

    .line 1811
    :cond_1
    const-wide/16 v6, 0x0

    .line 1840
    :cond_2
    :goto_0
    return-wide v6

    .line 1813
    :cond_3
    if-gez v0, :cond_4

    .line 1814
    const/4 v0, 0x0

    .line 1816
    :cond_4
    iget v10, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-le v1, v10, :cond_5

    .line 1817
    iget v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    .line 1820
    :cond_5
    const/4 v3, 0x0

    .line 1821
    .local v3, "length":I
    move v2, v0

    .local v2, "index":I
    :goto_1
    if-ge v2, v1, :cond_7

    .line 1823
    iget-object v10, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->getVolume()D

    move-result-wide v8

    .line 1824
    .local v8, "volume":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v8, v10

    if-lez v10, :cond_6

    .line 1825
    add-int/lit8 v3, v3, 0x1

    .line 1821
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1828
    .end local v8    # "volume":D
    :cond_7
    new-instance v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;

    iget-object v10, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v11, "VivoWifiWatchdogStateMachine"

    invoke-direct {v4, v10, v11, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;I)V

    .line 1829
    .local v4, "median":Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;
    const-wide/16 v6, 0x0

    .line 1830
    .local v6, "value":D
    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_a

    .line 1832
    iget-object v10, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->getVolume()D

    move-result-wide v8

    .line 1833
    .restart local v8    # "volume":D
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "vivoGetValue index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " volume "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$16300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1834
    :cond_8
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v8, v10

    if-lez v10, :cond_9

    .line 1835
    iget-object v10, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->getValue()D

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->putAndGetMedian(D)D

    move-result-wide v6

    .line 1830
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1838
    .end local v8    # "volume":D
    :cond_a
    invoke-virtual {v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->dump()V

    .line 1839
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "vivoGetValue rssi "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " value "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$16400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public vivoGetVolume(I)D
    .locals 6
    .param p1, "rssi"    # I

    .prologue
    .line 1844
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vivoGetVolume rssi "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$16500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1845
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int v0, p1, v1

    .line 1846
    .local v0, "index":I
    if-ltz v0, :cond_1

    iget v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-lt v0, v1, :cond_3

    .line 1847
    :cond_1
    const-wide/16 v2, 0x0

    .line 1851
    :cond_2
    :goto_0
    return-wide v2

    .line 1849
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;->getVolume()D

    move-result-wide v2

    .line 1850
    .local v2, "volume":D
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vivoGetVolume rssi "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " volume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$16600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0
.end method
