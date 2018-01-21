.class public Lcom/vivo/common/autobrightness/TimePeriod;
.super Ljava/lang/Object;
.source "TimePeriod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;,
        Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;
    }
.end annotation


# static fields
.field private static final INTENT_DAY_END_CLOCK_TIMER:Ljava/lang/String; = "android.intent.action.auto_bright.day.end"

.field private static final INTENT_DAY_START_CLOCK_TIMER:Ljava/lang/String; = "android.intent.action.auto_bright.day.start"

.field private static final MILLI_OF_HOUR:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "TimePeriod"


# instance fields
.field private DAY_REPEAT_INTERVAL:J

.field private mContext:Landroid/content/Context;

.field private final mDayEndTime:J

.field private final mDayStartTime:J

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mPendingEndIntent:Landroid/app/PendingIntent;

.field private mPendingStartIntent:Landroid/app/PendingIntent;

.field private mPeriodType:Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

.field private mReceiver:Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;

.field private mRunnable:Ljava/lang/Runnable;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v4, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/32 v2, 0x112a880

    iput-wide v2, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mDayStartTime:J

    .line 26
    const-wide/32 v2, 0x44aa200

    iput-wide v2, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mDayEndTime:J

    .line 27
    const-wide/32 v2, 0x5265c00

    iput-wide v2, p0, Lcom/vivo/common/autobrightness/TimePeriod;->DAY_REPEAT_INTERVAL:J

    .line 29
    sget-object v1, Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;->NIGHT_TIME:Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    iput-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mPeriodType:Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    .line 30
    iput-object v4, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mPendingStartIntent:Landroid/app/PendingIntent;

    .line 31
    iput-object v4, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mPendingEndIntent:Landroid/app/PendingIntent;

    .line 32
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mLock:Ljava/lang/Object;

    .line 33
    new-instance v1, Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;-><init>(Lcom/vivo/common/autobrightness/TimePeriod;Lcom/vivo/common/autobrightness/TimePeriod$1;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mReceiver:Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;

    .line 73
    new-instance v1, Lcom/vivo/common/autobrightness/TimePeriod$1;

    invoke-direct {v1, p0}, Lcom/vivo/common/autobrightness/TimePeriod$1;-><init>(Lcom/vivo/common/autobrightness/TimePeriod;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mRunnable:Ljava/lang/Runnable;

    .line 55
    iput-object p1, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mContext:Landroid/content/Context;

    .line 56
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mHandler:Landroid/os/Handler;

    .line 57
    const-string v1, "android.intent.action.auto_bright.day.start"

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/TimePeriod;->getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mPendingStartIntent:Landroid/app/PendingIntent;

    .line 58
    const-string v1, "android.intent.action.auto_bright.day.end"

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/TimePeriod;->getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mPendingEndIntent:Landroid/app/PendingIntent;

    .line 59
    iget-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 60
    .local v0, "powerManager":Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    .line 61
    const/4 v1, 0x1

    const-string v2, "TimePeriod"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/TimePeriod;->calcNowPeriodType()Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    .line 65
    return-void
.end method

.method static synthetic access$100(Lcom/vivo/common/autobrightness/TimePeriod;)Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/TimePeriod;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mReceiver:Lcom/vivo/common/autobrightness/TimePeriod$AutoBrightBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/common/autobrightness/TimePeriod;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/TimePeriod;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/common/autobrightness/TimePeriod;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/TimePeriod;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/common/autobrightness/TimePeriod;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/TimePeriod;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/TimePeriod;->setupTimer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/vivo/common/autobrightness/TimePeriod;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/TimePeriod;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vivo/common/autobrightness/TimePeriod;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/TimePeriod;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/TimePeriod;->acquireWakeLock()V

    return-void
.end method

.method static synthetic access$700(Lcom/vivo/common/autobrightness/TimePeriod;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/TimePeriod;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/TimePeriod;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/vivo/common/autobrightness/TimePeriod;)Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/TimePeriod;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/TimePeriod;->calcNowPeriodType()Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    move-result-object v0

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 71
    :cond_0
    return-void
.end method

.method private calcNowPeriodType()Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;
    .locals 6

    .prologue
    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 42
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/TimePeriod;->getNowOfDay(Ljava/util/Calendar;)J

    move-result-wide v2

    .line 43
    .local v2, "millis":J
    const-wide/32 v4, 0x112a880

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const-wide/32 v4, 0x44aa200

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 44
    sget-object v1, Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;->DAY_TIME:Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    iput-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mPeriodType:Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    .line 45
    const-string v1, "calcNowPeriodType DAY_TIME"

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/TimePeriod;->log(Ljava/lang/String;)V

    .line 50
    :goto_0
    const-string v1, "calcNowPeriodType "

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/TimePeriod;->log(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mPeriodType:Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    return-object v1

    .line 47
    :cond_0
    sget-object v1, Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;->NIGHT_TIME:Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    iput-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mPeriodType:Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    .line 48
    const-string v1, "calcNowPeriodType NIGHT_TIME"

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/TimePeriod;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cancelTimer()V
    .locals 3

    .prologue
    .line 123
    const-string v1, "cancelTimer()"

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/TimePeriod;->log(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 125
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mPendingStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 126
    iget-object v1, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mPendingEndIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 127
    return-void
.end method

.method private getNowOfDay(Ljava/util/Calendar;)J
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 94
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3c

    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method private getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 90
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "TimePeriod"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    return-void
.end method

.method private setupTimer()Z
    .locals 18

    .prologue
    .line 99
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/vivo/common/autobrightness/TimePeriod;->cancelTimer()V

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 101
    .local v3, "calendar":Ljava/util/Calendar;
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 102
    .local v6, "now":J
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vivo/common/autobrightness/TimePeriod;->getNowOfDay(Ljava/util/Calendar;)J

    move-result-wide v8

    .line 103
    .local v8, "nowOfDay":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/common/autobrightness/TimePeriod;->mContext:Landroid/content/Context;

    const-string v14, "alarm"

    invoke-virtual {v5, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 105
    .local v2, "alarmManager":Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/common/autobrightness/TimePeriod;->mPendingStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/common/autobrightness/TimePeriod;->mPendingEndIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 108
    const-wide/32 v14, 0x112a880

    cmp-long v5, v14, v8

    if-lez v5, :cond_0

    const-wide/32 v14, 0x112a880

    sub-long v10, v14, v8

    .line 109
    .local v10, "timeToDayStart":J
    :goto_0
    const-wide/32 v14, 0x44aa200

    cmp-long v5, v14, v8

    if-lez v5, :cond_1

    const-wide/32 v14, 0x44aa200

    sub-long v12, v14, v8

    .line 111
    .local v12, "timeTodayEnd":J
    :goto_1
    const/4 v5, 0x0

    add-long v14, v6, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/autobrightness/TimePeriod;->mPendingStartIntent:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v5, v14, v15, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 112
    const/4 v5, 0x0

    add-long v14, v6, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/autobrightness/TimePeriod;->mPendingEndIntent:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v5, v14, v15, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setupTimer timeInMills="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " nowOfDay="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " timeToDayStart:"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " timeTodayEnd="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vivo/common/autobrightness/TimePeriod;->log(Ljava/lang/String;)V

    .line 115
    const/4 v5, 0x1

    .line 118
    .end local v2    # "alarmManager":Landroid/app/AlarmManager;
    .end local v3    # "calendar":Ljava/util/Calendar;
    .end local v6    # "now":J
    .end local v8    # "nowOfDay":J
    .end local v10    # "timeToDayStart":J
    .end local v12    # "timeTodayEnd":J
    :goto_2
    return v5

    .line 108
    .restart local v2    # "alarmManager":Landroid/app/AlarmManager;
    .restart local v3    # "calendar":Ljava/util/Calendar;
    .restart local v6    # "now":J
    .restart local v8    # "nowOfDay":J
    :cond_0
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/vivo/common/autobrightness/TimePeriod;->DAY_REPEAT_INTERVAL:J

    const-wide/32 v16, 0x112a880

    add-long v14, v14, v16

    sub-long v10, v14, v8

    goto :goto_0

    .line 109
    .restart local v10    # "timeToDayStart":J
    :cond_1
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/vivo/common/autobrightness/TimePeriod;->DAY_REPEAT_INTERVAL:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v16, 0x44aa200

    add-long v14, v14, v16

    sub-long v12, v14, v8

    goto :goto_1

    .line 116
    .end local v2    # "alarmManager":Landroid/app/AlarmManager;
    .end local v3    # "calendar":Ljava/util/Calendar;
    .end local v6    # "now":J
    .end local v8    # "nowOfDay":J
    .end local v10    # "timeToDayStart":J
    :catch_0
    move-exception v4

    .line 117
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setupNextTimer FAIL:"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vivo/common/autobrightness/TimePeriod;->log(Ljava/lang/String;)V

    .line 118
    const/4 v5, 0x0

    goto :goto_2
.end method


# virtual methods
.method public getTimePeriod()Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mPeriodType:Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    return-object v0
.end method

.method public timePeriodToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/vivo/common/autobrightness/TimePeriod;->mPeriodType:Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    sget-object v1, Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;->DAY_TIME:Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    if-ne v0, v1, :cond_0

    .line 152
    const-string v0, "DAY_TIME"

    .line 154
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NIGHT_TIME"

    goto :goto_0
.end method
