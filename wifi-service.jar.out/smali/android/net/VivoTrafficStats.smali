.class public Landroid/net/VivoTrafficStats;
.super Ljava/lang/Object;
.source "VivoTrafficStats.java"


# static fields
.field public static final GB_IN_BYTES:J = 0x40000000L

.field public static final KB_IN_BYTES:J = 0x400L

.field public static final MB_IN_BYTES:J = 0x100000L

.field private static final TYPE_RX_BYTES:I = 0x0

.field private static final TYPE_RX_PACKETS:I = 0x1

.field private static final TYPE_TCP_RX_BYTES:I = 0x6

.field private static final TYPE_TCP_RX_PACKETS:I = 0x4

.field private static final TYPE_TCP_TX_BYTES:I = 0x7

.field private static final TYPE_TCP_TX_PACKETS:I = 0x5

.field private static final TYPE_TX_BYTES:I = 0x2

.field private static final TYPE_TX_PACKETS:I = 0x3

.field public static final UID_REMOVED:I = -0x4

.field public static final UID_TETHERING:I = -0x5

.field public static final UNSUPPORTED:I = -0x1

.field private static sStatsService:Landroid/net/INetworkStatsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-string v0, "vivo-wifi-service"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Landroid/net/VivoTrafficStats;->registerNatives()I

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 424
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 426
    .local v1, "uid":I
    :try_start_0
    invoke-static {}, Landroid/net/VivoTrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/net/INetworkStatsService;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getRxBytes(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/VivoTrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRxPackets(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 201
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/net/VivoTrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static declared-synchronized getStatsService()Landroid/net/INetworkStatsService;
    .locals 2

    .prologue
    .line 81
    const-class v1, Landroid/net/VivoTrafficStats;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/net/VivoTrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    if-nez v0, :cond_0

    .line 82
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    sput-object v0, Landroid/net/VivoTrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    .line 85
    :cond_0
    sget-object v0, Landroid/net/VivoTrafficStats;->sStatsService:Landroid/net/INetworkStatsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getTotalRxBytes()J
    .locals 2

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/VivoTrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalRxPackets()J
    .locals 2

    .prologue
    .line 237
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/net/VivoTrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalTxBytes()J
    .locals 2

    .prologue
    .line 250
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/net/VivoTrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalTxPackets()J
    .locals 2

    .prologue
    .line 224
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/net/VivoTrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTxBytes(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 206
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/net/VivoTrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTxPackets(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 196
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/net/VivoTrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidRxBytes(I)J
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/VivoTrafficStats;->nativeGetUidStat(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidRxPackets(I)J
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 327
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/net/VivoTrafficStats;->nativeGetUidStat(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidTcpRxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 349
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpRxSegments(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 393
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpTxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 338
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpTxSegments(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 382
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTxBytes(I)J
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 279
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/net/VivoTrafficStats;->nativeGetUidStat(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidTxPackets(I)J
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 311
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/net/VivoTrafficStats;->nativeGetUidStat(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidUdpRxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 371
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpRxPackets(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 415
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpTxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 360
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpTxPackets(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 404
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getWifiRxBytes()J
    .locals 4

    .prologue
    .line 145
    const-wide/16 v0, 0x0

    .line 146
    .local v0, "total":J
    const-string v2, "wlan0"

    invoke-static {v2}, Landroid/net/VivoTrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 148
    return-wide v0
.end method

.method public static getWifiRxPackets()J
    .locals 4

    .prologue
    .line 115
    const-wide/16 v0, 0x0

    .line 116
    .local v0, "total":J
    const-string v2, "wlan0"

    invoke-static {v2}, Landroid/net/VivoTrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 117
    return-wide v0
.end method

.method public static getWifiTcpRxBytes()J
    .locals 6

    .prologue
    .line 174
    const-wide/16 v2, 0x0

    .line 175
    .local v2, "total":J
    const-string v4, "wlan0"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/net/VivoTrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    .line 176
    .local v0, "stat":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 177
    add-long/2addr v2, v0

    .line 180
    :cond_0
    return-wide v2
.end method

.method public static getWifiTcpRxPackets()J
    .locals 6

    .prologue
    .line 153
    const-wide/16 v2, 0x0

    .line 154
    .local v2, "total":J
    const-string v4, "wlan0"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Landroid/net/VivoTrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    .line 155
    .local v0, "stat":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 156
    add-long/2addr v2, v0

    .line 159
    :cond_0
    return-wide v2
.end method

.method public static getWifiTcpTxBytes()J
    .locals 6

    .prologue
    .line 164
    const-wide/16 v2, 0x0

    .line 165
    .local v2, "total":J
    const-string v4, "wlan0"

    const/4 v5, 0x7

    invoke-static {v4, v5}, Landroid/net/VivoTrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    .line 166
    .local v0, "stat":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 167
    add-long/2addr v2, v0

    .line 170
    :cond_0
    return-wide v2
.end method

.method public static getWifiTcpTxPackets()J
    .locals 6

    .prologue
    .line 185
    const-wide/16 v2, 0x0

    .line 186
    .local v2, "total":J
    const-string v4, "wlan0"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/net/VivoTrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    .line 187
    .local v0, "stat":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 188
    add-long/2addr v2, v0

    .line 191
    :cond_0
    return-wide v2
.end method

.method public static getWifiTxBytes()J
    .locals 4

    .prologue
    .line 130
    const-wide/16 v0, 0x0

    .line 131
    .local v0, "total":J
    const-string v2, "wlan0"

    invoke-static {v2}, Landroid/net/VivoTrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 132
    return-wide v0
.end method

.method public static getWifiTxPackets()J
    .locals 4

    .prologue
    .line 100
    const-wide/16 v0, 0x0

    .line 101
    .local v0, "total":J
    const-string v2, "wlan0"

    invoke-static {v2}, Landroid/net/VivoTrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 102
    return-wide v0
.end method

.method private static native nativeGetIfaceStat(Ljava/lang/String;I)J
.end method

.method private static native nativeGetTotalStat(I)J
.end method

.method private static native nativeGetUidStat(II)J
.end method

.method private static native registerNatives()I
.end method
