.class public final Lcom/android/internal/telephony/NitzTimeUpdatePolicy;
.super Ljava/lang/Object;
.source "NitzTimeUpdatePolicy.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;,
        Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;,
        Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;
    }
.end annotation


# static fields
.field public static final ACTION_NTP_TIMES:Ljava/lang/String; = "vivo.android.intent.action.NTP_TIMES"

.field private static final DAY_IN_MILLIS:J = 0x5265c00L

.field private static final HOUR_MIN_IN_MILLIS:J = 0x36ee80L

.field static final LOG_TAG:Ljava/lang/String; = "NitzTimeUpdatePolicy"

.field private static final MAX_COLLECT_COUNT:I = 0x32

.field private static final MIN_IN_MILLIS:J = 0xea60L

.field private static sInstance:Lcom/android/internal/telephony/NitzTimeUpdatePolicy;


# instance fields
.field private KEY_NTPTIME:Ljava/lang/String;

.field private KEY_NTPTIME_REfERENCE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentCount:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsNtpTimeUpdate:Z

.field private mNitzTimeInfo:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;

.field private mNitzUpdatedAtTime:J

.field private mNitzUpdatedPhoneId:I

.field private mNtpSaveTime:J

.field private mNtpSavedAtTime:J

.field private mPhoneCount:I

.field private mPreDayCollectTime:J

.field private mUserLoc:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;

.field private mWaitCheckDataConnect:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v1, "ntpTime"

    iput-object v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->KEY_NTPTIME:Ljava/lang/String;

    .line 59
    const-string v1, "ntpTimeReference"

    iput-object v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->KEY_NTPTIME_REfERENCE:Ljava/lang/String;

    .line 65
    iput-boolean v2, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mIsNtpTimeUpdate:Z

    .line 79
    iput v2, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mCurrentCount:I

    .line 80
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mPreDayCollectTime:J

    .line 340
    new-instance v1, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$1;-><init>(Lcom/android/internal/telephony/NitzTimeUpdatePolicy;)V

    iput-object v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mContext:Landroid/content/Context;

    .line 104
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mPhoneCount:I

    .line 105
    iget v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mPhoneCount:I

    new-array v1, v1, [Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;

    iput-object v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNitzTimeInfo:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;

    .line 107
    sget-object v1, Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;->NITZ_TAG:Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;

    invoke-static {v1}, Lcom/android/internal/telephony/VivoBigDataManager;->isModuleEnable(Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mPhoneCount:I

    new-array v1, v1, [Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    iput-object v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mWaitCheckDataConnect:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    .line 109
    iget v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mPhoneCount:I

    new-array v1, v1, [Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;

    iput-object v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mUserLoc:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;

    .line 112
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mPhoneCount:I

    if-ge v0, v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNitzTimeInfo:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;

    new-instance v2, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;-><init>()V

    aput-object v2, v1, v0

    .line 114
    sget-object v1, Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;->NITZ_TAG:Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;

    invoke-static {v1}, Lcom/android/internal/telephony/VivoBigDataManager;->isModuleEnable(Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mWaitCheckDataConnect:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    sget-object v2, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;->INIT:Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    aput-object v2, v1, v0

    .line 116
    iget-object v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mUserLoc:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;

    new-instance v2, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;-><init>(Lcom/android/internal/telephony/NitzTimeUpdatePolicy$1;)V

    aput-object v2, v1, v0

    .line 112
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->registerBroadcast()V

    .line 120
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/NitzTimeUpdatePolicy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NitzTimeUpdatePolicy;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->KEY_NTPTIME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/NitzTimeUpdatePolicy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NitzTimeUpdatePolicy;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->KEY_NTPTIME_REfERENCE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/NitzTimeUpdatePolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/NitzTimeUpdatePolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mIsNtpTimeUpdate:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/NitzTimeUpdatePolicy;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NitzTimeUpdatePolicy;
    .param p1, "x1"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNtpSaveTime:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/NitzTimeUpdatePolicy;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NitzTimeUpdatePolicy;
    .param p1, "x1"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNtpSavedAtTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/NitzTimeUpdatePolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NitzTimeUpdatePolicy;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mPhoneCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/NitzTimeUpdatePolicy;)[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/NitzTimeUpdatePolicy;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mWaitCheckDataConnect:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/NitzTimeUpdatePolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/NitzTimeUpdatePolicy;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->collectErrorTime(I)V

    return-void
.end method

.method private declared-synchronized collectErrorTime(I)V
    .locals 22
    .param p1, "phoneId"    # I

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    sget-object v18, Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;->NITZ_TAG:Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/VivoBigDataManager;->isModuleEnable(Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v18

    if-nez v18, :cond_1

    .line 322
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 264
    :cond_1
    :try_start_1
    const-string v18, "NitzTimeUpdatePolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "state:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mWaitCheckDataConnect:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    move-object/from16 v20, v0

    aget-object v20, v20, p1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " phoneId:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mWaitCheckDataConnect:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    sget-object v19, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;->COMPLETE:Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mWaitCheckDataConnect:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;->INIT:Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    aput-object v19, v18, p1

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNitzTimeInfo:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;

    move-object/from16 v18, v0

    aget-object v17, v18, p1

    .line 268
    .local v17, "timeInfo":Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 269
    .local v4, "currentTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->getCurrentNtpTimeMillis()J

    move-result-wide v12

    .line 270
    .local v12, "ntpTime":J
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v10

    .line 271
    .local v10, "nitzTime":J
    const-string v18, "NitzTimeUpdatePolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ntpTime:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " nitzTime:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sub-long v18, v12, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    const-wide/32 v20, 0xea60

    cmp-long v18, v18, v20

    if-lez v18, :cond_0

    .line 273
    const/4 v15, 0x0

    .line 274
    .local v15, "shouldConnect":Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mPreDayCollectTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_2

    .line 275
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mPreDayCollectTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    const/4 v15, 0x1

    .line 290
    :goto_1
    if-eqz v15, :cond_0

    .line 292
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mUserLoc:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v14, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;->mPlmn:Ljava/lang/String;

    .line 293
    .local v14, "plmn":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 294
    .local v6, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v16, -0x1

    .line 295
    .local v16, "sidlac":I
    const/4 v9, -0x1

    .line 296
    .local v9, "nidcid":I
    const/4 v2, -0x1

    .line 297
    .local v2, "bid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mUserLoc:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;->mIsCdma:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mUserLoc:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;->mCellLoc:Landroid/telephony/CellLocation;

    check-cast v3, Landroid/telephony/cdma/CdmaCellLocation;

    .line 299
    .local v3, "cdmaLoc":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v16

    .line 300
    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v9

    .line 301
    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    .line 307
    .end local v3    # "cdmaLoc":Landroid/telephony/cdma/CdmaCellLocation;
    :goto_2
    const-string v18, "plmn"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v18, "sidlac"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v18, "nidcid"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v18, "bid"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v18, "ntp"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v18, "nitzTime"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v18, "NitzTimeUpdatePolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "plmn:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " sidlac:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " nidcid:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " bid:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;->NITZ_TAG:Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Lcom/android/internal/telephony/VivoBigDataManager;->collectData(Landroid/content/Context;Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 316
    .end local v2    # "bid":I
    .end local v6    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "nidcid":I
    .end local v14    # "plmn":Ljava/lang/String;
    .end local v16    # "sidlac":I
    :catch_0
    move-exception v7

    .line 317
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 261
    .end local v4    # "currentTime":J
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "nitzTime":J
    .end local v12    # "ntpTime":J
    .end local v15    # "shouldConnect":Z
    .end local v17    # "timeInfo":Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 277
    .restart local v4    # "currentTime":J
    .restart local v10    # "nitzTime":J
    .restart local v12    # "ntpTime":J
    .restart local v15    # "shouldConnect":Z
    .restart local v17    # "timeInfo":Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mPreDayCollectTime:J

    move-wide/from16 v18, v0

    sub-long v18, v4, v18

    const-wide/32 v20, 0x5265c00

    cmp-long v18, v18, v20

    if-lez v18, :cond_3

    .line 278
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mPreDayCollectTime:J

    .line 279
    const/4 v15, 0x1

    .line 280
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mCurrentCount:I

    goto/16 :goto_1

    .line 282
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mCurrentCount:I

    move/from16 v18, v0

    const/16 v19, 0x32

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    .line 283
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 285
    :cond_4
    const/4 v15, 0x1

    .line 286
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mCurrentCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mCurrentCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 303
    .restart local v2    # "bid":I
    .restart local v6    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "nidcid":I
    .restart local v14    # "plmn":Ljava/lang/String;
    .restart local v16    # "sidlac":I
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mUserLoc:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;->mCellLoc:Landroid/telephony/CellLocation;

    check-cast v8, Landroid/telephony/gsm/GsmCellLocation;

    .line 304
    .local v8, "gsmLoc":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v8}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v16

    .line 305
    invoke-virtual {v8}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v9

    goto/16 :goto_2
.end method

.method private getCurrentNtpTimeMillis()J
    .locals 6

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mIsNtpTimeUpdate:Z

    if-eqz v0, :cond_0

    .line 367
    iget-wide v0, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNtpSaveTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNtpSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 369
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/NitzTimeUpdatePolicy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const-class v1, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->sInstance:Lcom/android/internal/telephony/NitzTimeUpdatePolicy;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->sInstance:Lcom/android/internal/telephony/NitzTimeUpdatePolicy;

    .line 99
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->sInstance:Lcom/android/internal/telephony/NitzTimeUpdatePolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private registerBroadcast()V
    .locals 3

    .prologue
    .line 325
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 326
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "vivo.android.intent.action.NTP_TIMES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    return-void
.end method

.method private unregisterBroadcast()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 332
    return-void
.end method


# virtual methods
.method public declared-synchronized checkCollectErrorTime(ILjava/lang/String;Landroid/telephony/CellLocation;Z)V
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "plmn"    # Ljava/lang/String;
    .param p3, "cellLocation"    # Landroid/telephony/CellLocation;
    .param p4, "isCdma"    # Z

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;->NITZ_TAG:Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;

    invoke-static {v2}, Lcom/android/internal/telephony/VivoBigDataManager;->isModuleEnable(Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 258
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 231
    :cond_1
    :try_start_1
    const-string v2, "NitzTimeUpdatePolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " plmn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isCdma:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mWaitCheckDataConnect:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "00000"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mWaitCheckDataConnect:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    aget-object v2, v2, p1

    sget-object v3, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;->WAIT_LOC:Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    if-ne v2, v3, :cond_0

    .line 236
    iget-object v2, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mUserLoc:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;

    aget-object v2, v2, p1

    iput-object p2, v2, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;->mPlmn:Ljava/lang/String;

    .line 237
    if-eqz p4, :cond_2

    .line 238
    move-object v0, p3

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v7, v0

    .line 239
    .local v7, "cellLoc":Landroid/telephony/cdma/CdmaCellLocation;
    new-instance v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v1}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    .line 240
    .local v1, "cdmaCellLoc":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v7}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    invoke-virtual {v7}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    invoke-virtual {v7}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v4

    invoke-virtual {v7}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v5

    invoke-virtual {v7}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 242
    iget-object v2, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mUserLoc:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;

    aget-object v2, v2, p1

    iput-object v1, v2, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;->mCellLoc:Landroid/telephony/CellLocation;

    .line 243
    iget-object v2, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mUserLoc:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;->mIsCdma:Z

    .line 251
    .end local v1    # "cdmaCellLoc":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v7    # "cellLoc":Landroid/telephony/cdma/CdmaCellLocation;
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mIsNtpTimeUpdate:Z

    if-eqz v2, :cond_3

    .line 252
    iget-object v2, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mWaitCheckDataConnect:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    sget-object v3, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;->COMPLETE:Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    aput-object v3, v2, p1

    .line 253
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->collectErrorTime(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 228
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 245
    :cond_2
    :try_start_2
    move-object v0, p3

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v7, v0

    .line 246
    .local v7, "cellLoc":Landroid/telephony/gsm/GsmCellLocation;
    new-instance v8, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v8}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    .line 247
    .local v8, "gsmCellLoc":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    invoke-virtual {v8, v2, v3}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 248
    iget-object v2, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mUserLoc:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;

    aget-object v2, v2, p1

    iput-object v8, v2, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;->mCellLoc:Landroid/telephony/CellLocation;

    .line 249
    iget-object v2, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mUserLoc:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;->mIsCdma:Z

    goto :goto_1

    .line 255
    .end local v7    # "cellLoc":Landroid/telephony/gsm/GsmCellLocation;
    .end local v8    # "gsmCellLoc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mWaitCheckDataConnect:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    sget-object v3, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;->WAIT_NTP:Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    aput-object v3, v2, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->unregisterBroadcast()V

    .line 337
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 338
    return-void
.end method

.method public declared-synchronized setNitzTimeInfo(IJJZ)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "time"    # J
    .param p4, "receivedTime"    # J
    .param p6, "isCdma"    # Z

    .prologue
    .line 123
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mPhoneCount:I

    if-lt p1, v1, :cond_2

    .line 124
    :cond_0
    const-string v1, "NitzTimeUpdatePolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNitzTimeInfo,invalid phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 128
    :cond_2
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;-><init>()V

    .line 129
    .local v0, "timeInfo":Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;
    iput-wide p2, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->mSavedTime:J

    .line 130
    iput-wide p4, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->mSavedAtTime:J

    .line 131
    iput-boolean p6, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->mIsCdma:Z

    .line 133
    iget-object v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNitzTimeInfo:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;

    aget-object v1, v1, p1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNitzUpdatedPhoneId:I

    if-ne v1, p1, :cond_3

    .line 134
    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->getPriority()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNitzTimeInfo:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->getPriority()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 135
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNitzUpdatedPhoneId:I

    .line 136
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNitzUpdatedAtTime:J

    .line 140
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNitzTimeInfo:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;

    aput-object v0, v1, p1

    .line 141
    const-string v1, "NitzTimeUpdatePolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNitzTimeInfo,phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSavedTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSavedAtTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isCdma:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v1, Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;->NITZ_TAG:Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;

    invoke-static {v1}, Lcom/android/internal/telephony/VivoBigDataManager;->isModuleEnable(Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mWaitCheckDataConnect:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    sget-object v2, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;->WAIT_LOC:Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    .end local v0    # "timeInfo":Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setNitzTimeInfo(ILjava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "timezone"    # Ljava/lang/String;

    .prologue
    .line 148
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mPhoneCount:I

    if-lt p1, v0, :cond_1

    .line 149
    :cond_0
    const-string v0, "NitzTimeUpdatePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNitzTimeInfo,invalid phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :goto_0
    monitor-exit p0

    return-void

    .line 153
    :cond_1
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNitzTimeInfo:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;

    aget-object v0, v0, p1

    const-string v1, ""

    iput-object v1, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->mSavedTimeZone:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 156
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNitzTimeInfo:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;

    aget-object v0, v0, p1

    iput-object p2, v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->mSavedTimeZone:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setUpdateAtTime(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNitzUpdatedPhoneId:I

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNitzUpdatedAtTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldUpdateTime(IZ)Z
    .locals 12
    .param p1, "phoneId"    # I
    .param p2, "isRevertTime"    # Z

    .prologue
    .line 166
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v7, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mPhoneCount:I

    if-lt p1, v7, :cond_1

    .line 167
    :cond_0
    const-string v7, "NitzTimeUpdatePolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sholdUpdateTime,invalid phoneId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    const/4 v7, 0x0

    .line 224
    :goto_0
    monitor-exit p0

    return v7

    .line 171
    :cond_1
    :try_start_1
    iget-boolean v7, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mIsNtpTimeUpdate:Z

    if-eqz v7, :cond_2

    .line 172
    const-string v7, "NitzTimeUpdatePolicy"

    const-string v8, "has ntp time,skip"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v7, 0x0

    goto :goto_0

    .line 175
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 176
    .local v0, "currentTime":J
    if-nez p2, :cond_3

    .line 177
    iget v7, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNitzUpdatedPhoneId:I

    if-ne p1, v7, :cond_3

    .line 178
    iget-wide v8, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNitzUpdatedAtTime:J

    sub-long v8, v0, v8

    const-wide/32 v10, 0x36ee80

    cmp-long v7, v8, v10

    if-gez v7, :cond_3

    .line 179
    const-string v7, "NitzTimeUpdatePolicy"

    const-string v8, "update time is in hour,skip"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v7, 0x0

    goto :goto_0

    .line 185
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNitzTimeInfo:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;

    aget-object v3, v7, p1

    .line 186
    .local v3, "ntizInfo":Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;
    const/4 v4, 0x0

    .line 187
    .local v4, "otherPhoneNtizInfo":Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;
    const/4 v6, -0x1

    .line 188
    .local v6, "priority":I
    const/4 v5, -0x1

    .line 190
    .local v5, "otherPhonePriority":I
    if-eqz v3, :cond_4

    .line 191
    iget-object v7, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNitzTimeInfo:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->getPriority()I

    move-result v6

    .line 194
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v7, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mPhoneCount:I

    if-ge v2, v7, :cond_5

    .line 195
    if-eq v2, p1, :cond_7

    .line 196
    iget-object v7, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNitzTimeInfo:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;

    aget-object v4, v7, v2

    .line 202
    :cond_5
    if-eqz v4, :cond_6

    .line 203
    invoke-virtual {v4}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;->getPriority()I

    move-result v5

    .line 206
    :cond_6
    const/4 v7, -0x1

    if-eq v6, v7, :cond_a

    const/4 v7, -0x1

    if-eq v5, v7, :cond_a

    .line 207
    if-ge v6, v5, :cond_8

    .line 208
    const-string v7, "NitzTimeUpdatePolicy"

    const-string v8, "has higer priority time,skip update"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v7, 0x0

    goto :goto_0

    .line 194
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 210
    :cond_8
    if-ne v6, v5, :cond_a

    .line 211
    if-eqz p2, :cond_9

    .line 212
    iget v7, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNitzUpdatedPhoneId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_a

    iget v7, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNitzUpdatedPhoneId:I

    if-eq v7, p1, :cond_a

    .line 213
    const-string v7, "NitzTimeUpdatePolicy"

    const-string v8, "use other phone to update time"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v7, 0x0

    goto :goto_0

    .line 217
    :cond_9
    iget-wide v8, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNitzUpdatedAtTime:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_a

    iget-wide v8, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNitzUpdatedAtTime:J

    sub-long v8, v0, v8

    const-wide/32 v10, 0x36ee80

    cmp-long v7, v8, v10

    if-gez v7, :cond_a

    .line 218
    const-string v7, "NitzTimeUpdatePolicy"

    const-string v8, "update time is in hour,skip1"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 224
    :cond_a
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 166
    .end local v0    # "currentTime":J
    .end local v2    # "i":I
    .end local v3    # "ntizInfo":Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;
    .end local v4    # "otherPhoneNtizInfo":Lcom/android/internal/telephony/NitzTimeUpdatePolicy$NitzTimeInfo;
    .end local v5    # "otherPhonePriority":I
    .end local v6    # "priority":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method
