.class public Lcom/vivo/common/widget/appwidget/AppWidgetClock;
.super Ljava/lang/Object;
.source "AppWidgetClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;,
        Lcom/vivo/common/widget/appwidget/AppWidgetClock$PeriodUpdateListener;,
        Lcom/vivo/common/widget/appwidget/AppWidgetClock$HalfSecondUpdateListener;,
        Lcom/vivo/common/widget/appwidget/AppWidgetClock$SecondUpdateListener;,
        Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;,
        Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockWidgetReceiver;
    }
.end annotation


# static fields
.field private static final HALFSECONDUPDATE:I = 0x2

.field private static final PERIODUPDATE:I = 0x3

.field private static final SECONDUPDATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppWidgetClock"


# instance fields
.field private mClockDateTime:Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;

.field private mContext:Landroid/content/Context;

.field private mHalfSecondUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$HalfSecondUpdateListener;

.field private mIsBroadcastRegistered:Z

.field private mPeriod:I

.field private mPeriodUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$PeriodUpdateListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecondUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$SecondUpdateListener;

.field private mTimeListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;

.field private mUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeListener"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;

    .prologue
    const/4 v3, 0x0

    .line 79
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;-><init>(Landroid/content/Context;Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;Lcom/vivo/common/widget/appwidget/AppWidgetClock$SecondUpdateListener;Lcom/vivo/common/widget/appwidget/AppWidgetClock$HalfSecondUpdateListener;Lcom/vivo/common/widget/appwidget/AppWidgetClock$PeriodUpdateListener;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;Lcom/vivo/common/widget/appwidget/AppWidgetClock$HalfSecondUpdateListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeListener"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;
    .param p3, "halfSecondUpdateListener"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock$HalfSecondUpdateListener;

    .prologue
    const/4 v3, 0x0

    .line 91
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;-><init>(Landroid/content/Context;Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;Lcom/vivo/common/widget/appwidget/AppWidgetClock$SecondUpdateListener;Lcom/vivo/common/widget/appwidget/AppWidgetClock$HalfSecondUpdateListener;Lcom/vivo/common/widget/appwidget/AppWidgetClock$PeriodUpdateListener;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;Lcom/vivo/common/widget/appwidget/AppWidgetClock$PeriodUpdateListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeListener"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;
    .param p3, "periodUpdateListener"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock$PeriodUpdateListener;

    .prologue
    const/4 v3, 0x0

    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;-><init>(Landroid/content/Context;Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;Lcom/vivo/common/widget/appwidget/AppWidgetClock$SecondUpdateListener;Lcom/vivo/common/widget/appwidget/AppWidgetClock$HalfSecondUpdateListener;Lcom/vivo/common/widget/appwidget/AppWidgetClock$PeriodUpdateListener;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;Lcom/vivo/common/widget/appwidget/AppWidgetClock$SecondUpdateListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeListener"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;
    .param p3, "secondUpdateListener"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock$SecondUpdateListener;

    .prologue
    const/4 v4, 0x0

    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;-><init>(Landroid/content/Context;Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;Lcom/vivo/common/widget/appwidget/AppWidgetClock$SecondUpdateListener;Lcom/vivo/common/widget/appwidget/AppWidgetClock$HalfSecondUpdateListener;Lcom/vivo/common/widget/appwidget/AppWidgetClock$PeriodUpdateListener;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;Lcom/vivo/common/widget/appwidget/AppWidgetClock$SecondUpdateListener;Lcom/vivo/common/widget/appwidget/AppWidgetClock$HalfSecondUpdateListener;Lcom/vivo/common/widget/appwidget/AppWidgetClock$PeriodUpdateListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeListener"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;
    .param p3, "secondUpdateListener"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock$SecondUpdateListener;
    .param p4, "halfSecondUpdateListener"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock$HalfSecondUpdateListener;
    .param p5, "periodUpdateListener"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock$PeriodUpdateListener;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockWidgetReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockWidgetReceiver;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetClock;Lcom/vivo/common/widget/appwidget/AppWidgetClock$1;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mIsBroadcastRegistered:Z

    .line 45
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$1;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$1;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mUpdateHandler:Landroid/os/Handler;

    .line 106
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mTimeListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;

    .line 108
    iput-object p3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mSecondUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$SecondUpdateListener;

    .line 109
    iput-object p4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mHalfSecondUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$HalfSecondUpdateListener;

    .line 110
    iput-object p5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mPeriodUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$PeriodUpdateListener;

    .line 111
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;

    invoke-direct {v0, p1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mClockDateTime:Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;

    .line 112
    return-void
.end method

.method static synthetic access$100(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mClockDateTime:Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$SecondUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mSecondUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$SecondUpdateListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->sendSecondUpdateMessage()V

    return-void
.end method

.method static synthetic access$400(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$HalfSecondUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mHalfSecondUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$HalfSecondUpdateListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->sendHalfSecondUpdateMessage()V

    return-void
.end method

.method static synthetic access$600(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$PeriodUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mPeriodUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$PeriodUpdateListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mTimeListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;

    return-object v0
.end method

.method private sendHalfSecondUpdateMessage()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v4, 0x2

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    rem-long/2addr v2, v6

    sub-long v0, v6, v2

    .line 303
    .local v0, "delay":J
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 304
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 305
    return-void
.end method

.method private sendSecondUpdateMessage()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v4, 0x1

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    rem-long/2addr v2, v6

    sub-long v0, v6, v2

    .line 274
    .local v0, "delay":J
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 275
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 276
    return-void
.end method


# virtual methods
.method public getClockDateTime(Z)Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;
    .locals 1
    .param p1, "update"    # Z

    .prologue
    .line 159
    if-eqz p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mClockDateTime:Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;

    invoke-virtual {v0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->setToNow()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mClockDateTime:Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;

    return-object v0
.end method

.method public registerBroadcastReceiver()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->registerBroadcastReceiver([Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public registerBroadcastReceiver([Ljava/lang/String;)V
    .locals 7
    .param p1, "broadcasts"    # [Ljava/lang/String;

    .prologue
    .line 180
    iget-boolean v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mIsBroadcastRegistered:Z

    if-nez v5, :cond_1

    .line 182
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 184
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.TIME_TICK"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v5, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    if-eqz p1, :cond_0

    array-length v5, p1

    if-eqz v5, :cond_0

    .line 189
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 190
    .local v1, "broadcast":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "broadcast":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    iget-object v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mIsBroadcastRegistered:Z

    .line 195
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method public sendPeriodUpdateMessage()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 334
    iget v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mPeriod:I

    int-to-long v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v6, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mPeriod:I

    int-to-long v6, v6

    rem-long/2addr v4, v6

    sub-long v0, v2, v4

    .line 335
    .local v0, "delay":J
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 336
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 337
    return-void
.end method

.method public setHalfSecondUpdateListener(Lcom/vivo/common/widget/appwidget/AppWidgetClock$HalfSecondUpdateListener;)V
    .locals 0
    .param p1, "halfSecondUpdateListener"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock$HalfSecondUpdateListener;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mHalfSecondUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$HalfSecondUpdateListener;

    .line 141
    return-void
.end method

.method public setPeriodUpdateListener(Lcom/vivo/common/widget/appwidget/AppWidgetClock$PeriodUpdateListener;)V
    .locals 0
    .param p1, "periodUpdateListener"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock$PeriodUpdateListener;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mPeriodUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$PeriodUpdateListener;

    .line 150
    return-void
.end method

.method public setSecondUpdateListener(Lcom/vivo/common/widget/appwidget/AppWidgetClock$SecondUpdateListener;)V
    .locals 0
    .param p1, "secondUpdateListener"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock$SecondUpdateListener;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mSecondUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$SecondUpdateListener;

    .line 132
    return-void
.end method

.method public setTimeListener(Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;)V
    .locals 0
    .param p1, "timeListener"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mTimeListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;

    .line 123
    return-void
.end method

.method public startHalfSecondUpdate()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mHalfSecondUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$HalfSecondUpdateListener;

    if-eqz v0, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->sendHalfSecondUpdateMessage()V

    .line 295
    :cond_0
    return-void
.end method

.method public startPeriodUpdate(I)V
    .locals 1
    .param p1, "milliseconds"    # I

    .prologue
    .line 322
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mPeriodUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$PeriodUpdateListener;

    if-eqz v0, :cond_0

    .line 324
    iput p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mPeriod:I

    .line 325
    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->sendPeriodUpdateMessage()V

    .line 327
    :cond_0
    return-void
.end method

.method public startSecondUpdate()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mSecondUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$SecondUpdateListener;

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->sendSecondUpdateMessage()V

    .line 266
    :cond_0
    return-void
.end method

.method public stopHalfSecondUpdate()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 313
    return-void
.end method

.method public stopPeriodUpdate()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    return-void
.end method

.method public stopSecondUpdate()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mIsBroadcastRegistered:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mIsBroadcastRegistered:Z

    .line 255
    :cond_0
    return-void
.end method
