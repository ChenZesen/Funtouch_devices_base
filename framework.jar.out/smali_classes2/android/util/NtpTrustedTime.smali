.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static sContext:Landroid/content/Context;

.field private static final sNTPServerList:Ljava/util/ArrayList;

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private ACTION_NTP_TIMES:Ljava/lang/String;

.field private final INTERNAL_ALLOW_NTP_TIME:I

.field private KEY_NTPTIME:Ljava/lang/String;

.field private KEY_NTPTIME_REFERENCE:Ljava/lang/String;

.field private PROP_FIRST_ERROR_ENABLE:Ljava/lang/String;

.field private final TIMEOUT_NTP_SERVER_CONNECTTING:I

.field private mCM:Landroid/net/ConnectivityManager;

.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private final mServer:Ljava/lang/String;

.field private final mTimeout:J

.field private mTmpCachedNtpCertaintyArray:Landroid/util/LongArray;

.field private mTmpCachedNtpElapsedRealtimeArray:Landroid/util/LongArray;

.field private mTmpCachedNtpTimeArray:Landroid/util/LongArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/NtpTrustedTime;->sNTPServerList:Ljava/util/ArrayList;

    .line 66
    sget-object v0, Landroid/util/NtpTrustedTime;->sNTPServerList:Ljava/util/ArrayList;

    const-string v1, "2.asia.pool.ntp.org"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Landroid/util/NtpTrustedTime;->sNTPServerList:Ljava/util/ArrayList;

    const-string v1, "time.gpsonextra.net"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Landroid/util/NtpTrustedTime;->sNTPServerList:Ljava/util/ArrayList;

    const-string v1, "asia.pool.ntp.org"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Landroid/util/NtpTrustedTime;->sNTPServerList:Ljava/util/ArrayList;

    const-string v1, "pool.ntp.org"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Landroid/util/NtpTrustedTime;->sNTPServerList:Ljava/util/ArrayList;

    const-string v1, "1.cn.pool.ntp.org"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .locals 4
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mTmpCachedNtpTimeArray:Landroid/util/LongArray;

    .line 76
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mTmpCachedNtpElapsedRealtimeArray:Landroid/util/LongArray;

    .line 77
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mTmpCachedNtpCertaintyArray:Landroid/util/LongArray;

    .line 78
    const/16 v0, 0x7530

    iput v0, p0, Landroid/util/NtpTrustedTime;->INTERNAL_ALLOW_NTP_TIME:I

    .line 79
    const/16 v0, 0x2710

    iput v0, p0, Landroid/util/NtpTrustedTime;->TIMEOUT_NTP_SERVER_CONNECTTING:I

    .line 80
    const-string v0, "vivo.android.intent.action.NTP_TIMES"

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->ACTION_NTP_TIMES:Ljava/lang/String;

    .line 81
    const-string v0, "ntpTime"

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->KEY_NTPTIME:Ljava/lang/String;

    .line 82
    const-string v0, "ntpTimeReference"

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->KEY_NTPTIME_REFERENCE:Ljava/lang/String;

    .line 83
    const-string v0, "persist.first.error.enbale"

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->PROP_FIRST_ERROR_ENABLE:Ljava/lang/String;

    .line 87
    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating NtpTrustedTime using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 89
    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 90
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const-class v10, Landroid/util/NtpTrustedTime;

    monitor-enter v10

    :try_start_0
    sget-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v7, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 95
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 97
    .local v4, "resolver":Landroid/content/ContentResolver;
    const v7, 0x104003b

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "defaultServer":Ljava/lang/String;
    const v7, 0x10e007e

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v2, v7

    .line 102
    .local v2, "defaultTimeout":J
    const-string v7, "ntp_server"

    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "secureServer":Ljava/lang/String;
    const-string v7, "ntp_timeout"

    invoke-static {v4, v7, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 107
    .local v8, "timeout":J
    if-eqz v5, :cond_1

    move-object v6, v5

    .line 108
    .local v6, "server":Ljava/lang/String;
    :goto_0
    new-instance v7, Landroid/util/NtpTrustedTime;

    invoke-direct {v7, v6, v8, v9}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    sput-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 109
    sput-object p0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    .line 112
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "defaultTimeout":J
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "secureServer":Ljava/lang/String;
    .end local v6    # "server":Ljava/lang/String;
    .end local v8    # "timeout":J
    :cond_0
    sget-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v7

    .restart local v0    # "defaultServer":Ljava/lang/String;
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v2    # "defaultTimeout":J
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "secureServer":Ljava/lang/String;
    .restart local v8    # "timeout":J
    :cond_1
    move-object v6, v0

    .line 107
    goto :goto_0

    .line 93
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "defaultTimeout":J
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "secureServer":Ljava/lang/String;
    .end local v8    # "timeout":J
    :catchall_0
    move-exception v7

    monitor-exit v10

    throw v7
.end method


# virtual methods
.method public broadcastNtpTime()V
    .locals 6

    .prologue
    .line 264
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/util/NtpTrustedTime;->ACTION_NTP_TIMES:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/util/NtpTrustedTime;->KEY_NTPTIME:Ljava/lang/String;

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 266
    iget-object v1, p0, Landroid/util/NtpTrustedTime;->KEY_NTPTIME_REFERENCE:Ljava/lang/String;

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 267
    sget-object v1, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 269
    const-string v1, "NtpTrustedTime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send sticky broadcast to nitz, mCachedNtpTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCachedNtpElapsedRealtime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method public currentTimeMillis()J
    .locals 4

    .prologue
    .line 243
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    const-string v0, "NtpTrustedTime"

    const-string v1, "currentTimeMillis() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public forceRefresh()Z
    .locals 30

    .prologue
    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 119
    const/16 v23, 0x0

    .line 212
    :goto_0
    return v23

    .line 123
    :cond_0
    monitor-enter p0

    .line 124
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    .line 125
    sget-object v23, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    const-string v26, "connectivity"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    .line 127
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    const/4 v13, 0x0

    .line 130
    .local v13, "ni":Landroid/net/NetworkInfo;
    :goto_1
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v23

    if-nez v23, :cond_4

    .line 131
    :cond_2
    const-string v23, "NtpTrustedTime"

    const-string v26, "forceRefresh: no connectivity"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/16 v23, 0x0

    goto :goto_0

    .line 127
    .end local v13    # "ni":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v23

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v23

    .line 129
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    goto :goto_1

    .line 136
    .restart local v13    # "ni":Landroid/net/NetworkInfo;
    :cond_4
    const-string v23, "NtpTrustedTime"

    const-string v26, "forceRefresh() from cache miss"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v7, Landroid/net/SntpClient;

    invoke-direct {v7}, Landroid/net/SntpClient;-><init>()V

    .line 148
    .local v7, "client":Landroid/net/SntpClient;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mTmpCachedNtpTimeArray:Landroid/util/LongArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/LongArray;->clear()V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mTmpCachedNtpElapsedRealtimeArray:Landroid/util/LongArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/LongArray;->clear()V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mTmpCachedNtpCertaintyArray:Landroid/util/LongArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/LongArray;->clear()V

    .line 152
    const-string v23, "NtpTrustedTime"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "forceRefresh() start to get time from all ntp servers. "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v23, Landroid/util/NtpTrustedTime;->sNTPServerList:Ljava/util/ArrayList;

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 155
    .local v22, "serverCount":I
    const/4 v8, 0x0

    .line 156
    .local v8, "count":I
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_2
    move/from16 v0, v22

    if-ge v11, v0, :cond_9

    .line 157
    sget-object v23, Landroid/util/NtpTrustedTime;->sNTPServerList:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v26, 0x2710

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 159
    invoke-virtual {v7}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v20

    .line 160
    .local v20, "ntpTime":J
    invoke-virtual {v7}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v18

    .line 161
    .local v18, "ntpElapsedRealtime":J
    invoke-virtual {v7}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v26

    const-wide/16 v28, 0x2

    div-long v16, v26, v28

    .line 163
    .local v16, "ntpCertainty":J
    const-string v23, "NtpTrustedTime"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "forceRefresh() getting time from server "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " successfully. NtpTime is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", NtpElapsedRealtime is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", NtpCertainty is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mTmpCachedNtpTimeArray:Landroid/util/LongArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/LongArray;->add(J)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mTmpCachedNtpElapsedRealtimeArray:Landroid/util/LongArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/LongArray;->add(J)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mTmpCachedNtpCertaintyArray:Landroid/util/LongArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/LongArray;->add(J)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->PROP_FIRST_ERROR_ENABLE:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 174
    .local v10, "flag":I
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_5

    if-nez v8, :cond_5

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mTmpCachedNtpTimeArray:Landroid/util/LongArray;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v4

    .line 176
    .local v4, "a":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mTmpCachedNtpTimeArray:Landroid/util/LongArray;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->remove(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mTmpCachedNtpTimeArray:Landroid/util/LongArray;

    move-object/from16 v23, v0

    const-wide/32 v26, 0x11170

    sub-long v26, v4, v26

    move-object/from16 v0, v23

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/util/LongArray;->add(J)V

    .line 178
    add-int/lit8 v8, v8, 0x1

    .line 182
    .end local v4    # "a":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mTmpCachedNtpTimeArray:Landroid/util/LongArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/LongArray;->size()I

    move-result v9

    .line 183
    .local v9, "curArraySize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mTmpCachedNtpTimeArray:Landroid/util/LongArray;

    move-object/from16 v23, v0

    add-int/lit8 v26, v9, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v14

    .line 184
    .local v14, "last":J
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_3
    add-int/lit8 v23, v9, -0x1

    move/from16 v0, v23

    if-ge v12, v0, :cond_8

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mTmpCachedNtpTimeArray:Landroid/util/LongArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/util/LongArray;->get(I)J

    move-result-wide v24

    .line 186
    .local v24, "temp":J
    sub-long v26, v14, v24

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v26

    const-wide/16 v28, 0x7530

    cmp-long v23, v26, v28

    if-gez v23, :cond_6

    .line 187
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mTmpCachedNtpTimeArray:Landroid/util/LongArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/util/LongArray;->get(I)J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mTmpCachedNtpElapsedRealtimeArray:Landroid/util/LongArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/util/LongArray;->get(I)J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mTmpCachedNtpCertaintyArray:Landroid/util/LongArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/util/LongArray;->get(I)J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/util/NtpTrustedTime;->broadcastNtpTime()V

    .line 192
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 184
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 197
    .end local v9    # "curArraySize":I
    .end local v10    # "flag":I
    .end local v12    # "k":I
    .end local v14    # "last":J
    .end local v16    # "ntpCertainty":J
    .end local v18    # "ntpElapsedRealtime":J
    .end local v20    # "ntpTime":J
    .end local v24    # "temp":J
    :cond_7
    const-string v23, "NtpTrustedTime"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "forceRefresh() getting time from server "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " failed."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 201
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mTmpCachedNtpTimeArray:Landroid/util/LongArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/LongArray;->size()I

    move-result v6

    .line 202
    .local v6, "arraySize":I
    if-lez v6, :cond_a

    .line 203
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mTmpCachedNtpTimeArray:Landroid/util/LongArray;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mTmpCachedNtpElapsedRealtimeArray:Landroid/util/LongArray;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/NtpTrustedTime;->mTmpCachedNtpCertaintyArray:Landroid/util/LongArray;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 207
    const-string v23, "NtpTrustedTime"

    const-string v26, "forceRefresh() use the time getting from the first successful server."

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/util/NtpTrustedTime;->broadcastNtpTime()V

    .line 209
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 211
    :cond_a
    const-string v23, "NtpTrustedTime"

    const-string v26, "forceRefresh failed to get ntp times from all ntp servers."

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/16 v23, 0x0

    goto/16 :goto_0
.end method

.method public getCacheAge()J
    .locals 4

    .prologue
    .line 225
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    .line 228
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCacheCertainty()J
    .locals 2

    .prologue
    .line 234
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 235
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 237
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCachedNtpTime()J
    .locals 2

    .prologue
    .line 254
    const-string v0, "NtpTrustedTime"

    const-string v1, "getCachedNtpTime() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2

    .prologue
    .line 259
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method
