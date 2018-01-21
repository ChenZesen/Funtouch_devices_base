.class public Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;
.super Ljava/lang/Object;
.source "AppWidgetClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/appwidget/AppWidgetClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClockDateTime"
.end annotation


# static fields
.field public static final AM:I = 0x0

.field private static final MONTHSHORT:[Ljava/lang/String;

.field public static final PM:I = 0x1


# instance fields
.field private mAmPm:I

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mDayOfMonth:I

.field private mDayOfWeek:I

.field private mDayOfWeekCn:Ljava/lang/String;

.field private mDayOfWeekEnLong:Ljava/lang/String;

.field private mDayOfWeekEnShort:Ljava/lang/String;

.field private mHour:I

.field private mHourHigh:I

.field private mHourLow:I

.field private mHourOfDay:I

.field private mIs24HourFormat:Z

.field private mIsChina:Z

.field private mMillisecond:I

.field private mMinute:I

.field private mMinuteHigh:I

.field private mMinuteLow:I

.field private mMonth:I

.field private mMonthEnLong:Ljava/lang/String;

.field private mMonthEnShort:Ljava/lang/String;

.field private mSecond:I

.field private mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 429
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Jan."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Feb."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Mar."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Apr."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "May."

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "June."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "July."

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Aug."

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Sept."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Oct."

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Nov."

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Dec."

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->MONTHSHORT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mContext:Landroid/content/Context;

    .line 440
    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->setToNow()V

    .line 441
    return-void
.end method


# virtual methods
.method public getAmPm()I
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mAmPm:I

    return v0
.end method

.method public getAmPmCn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mAmPm:I

    if-nez v0, :cond_0

    .line 474
    const-string v0, "\u4e0a\u5348"

    .line 476
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u4e0b\u5348"

    goto :goto_0
.end method

.method public getAmPmEn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mAmPm:I

    if-nez v0, :cond_0

    .line 483
    const-string v0, "am"

    .line 485
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "pm"

    goto :goto_0
.end method

.method public getAmPmStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mIsChina:Z

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getAmPmCn()Ljava/lang/String;

    move-result-object v0

    .line 496
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getAmPmEn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCalendar(Z)Ljava/util/Calendar;
    .locals 1
    .param p1, "update"    # Z

    .prologue
    .line 447
    if-eqz p1, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->setToNow()V

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mDayOfMonth:I

    return v0
.end method

.method public getDayOfMonthCn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mDayOfMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u65e5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfWeek()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mDayOfWeek:I

    return v0
.end method

.method public getDayOfWeekCn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mDayOfWeekCn:Ljava/lang/String;

    return-object v0
.end method

.method public getDayOfWeekEnLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mDayOfWeekEnLong:Ljava/lang/String;

    return-object v0
.end method

.method public getDayOfWeekEnShort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mDayOfWeekEnShort:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 717
    iget-object v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 719
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 721
    .local v1, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 723
    .local v2, "strDate":Ljava/lang/String;
    return-object v2
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHour:I

    return v0
.end method

.method public getHourHigh()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHourHigh:I

    return v0
.end method

.method public getHourLow()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHourLow:I

    return v0
.end method

.method public getHourMinuteString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHourHigh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHourLow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMinuteHigh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMinuteLow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHourOfDay()I
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHourOfDay:I

    return v0
.end method

.method public getHourString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHourHigh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHourLow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMillisecond()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMillisecond:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMinute:I

    return v0
.end method

.method public getMinuteHigh()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMinuteHigh:I

    return v0
.end method

.method public getMinuteLow()I
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMinuteLow:I

    return v0
.end method

.method public getMinuteString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMinuteHigh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMinuteLow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMonth:I

    return v0
.end method

.method public getMonthCn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMonthDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mIsChina:Z

    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getMonthDayCn()Ljava/lang/String;

    move-result-object v0

    .line 688
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getMonthDayEnShort()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMonthDayCn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mDayOfMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u65e5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMonthDayEnLong()Ljava/lang/String;
    .locals 2

    .prologue
    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMonthEnLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mDayOfMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMonthDayEnShort()Ljava/lang/String;
    .locals 2

    .prologue
    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMonthEnShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mDayOfMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMonthEnLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMonthEnLong:Ljava/lang/String;

    return-object v0
.end method

.method public getMonthEnShort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMonthEnShort:Ljava/lang/String;

    return-object v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mSecond:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mYear:I

    return v0
.end method

.method public getYearCn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYearMonthDayCn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mDayOfMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u65e5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public is24HourFormat()Z
    .locals 1

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mIs24HourFormat:Z

    return v0
.end method

.method public isChina()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mIsChina:Z

    return v0
.end method

.method public setToNow()V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x1

    const/4 v3, 0x7

    const/4 v2, 0x2

    .line 731
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mIsChina:Z

    .line 733
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mCalendar:Ljava/util/Calendar;

    .line 735
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mIs24HourFormat:Z

    .line 736
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHour:I

    .line 737
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHour:I

    if-nez v0, :cond_0

    .line 738
    iput v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHour:I

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHourOfDay:I

    .line 740
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMinute:I

    .line 741
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mSecond:I

    .line 742
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMillisecond:I

    .line 743
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mYear:I

    .line 744
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMonth:I

    .line 745
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mDayOfMonth:I

    .line 746
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mDayOfWeek:I

    .line 749
    sget-object v0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->MONTHSHORT:[Ljava/lang/String;

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMonth:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMonthEnShort:Ljava/lang/String;

    .line 750
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mCalendar:Ljava/util/Calendar;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2, v2, v1}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMonthEnLong:Ljava/lang/String;

    .line 751
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mCalendar:Ljava/util/Calendar;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v3, v2, v1}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mDayOfWeekCn:Ljava/lang/String;

    .line 752
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mCalendar:Ljava/util/Calendar;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3, v4, v1}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mDayOfWeekEnShort:Ljava/lang/String;

    .line 753
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mCalendar:Ljava/util/Calendar;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3, v2, v1}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mDayOfWeekEnLong:Ljava/lang/String;

    .line 754
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mAmPm:I

    .line 756
    iget-boolean v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mIs24HourFormat:Z

    if-eqz v0, :cond_1

    .line 758
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHourOfDay:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHourHigh:I

    .line 759
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHourOfDay:I

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHourLow:I

    .line 766
    :goto_0
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMinute:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMinuteHigh:I

    .line 767
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMinute:I

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMinuteLow:I

    .line 770
    return-void

    .line 763
    :cond_1
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHour:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHourHigh:I

    .line 764
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHour:I

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHourLow:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClockDateTime [mCalendar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHourOfDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHourOfDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAmPm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mAmPm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSecond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mSecond:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMillisecond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMillisecond:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDayOfMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mDayOfMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mDayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIs24HourFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mIs24HourFormat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHourHigh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHourHigh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHourLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mHourLow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinuteHigh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMinuteHigh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinuteLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMinuteLow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMonthEnShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMonthEnShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMonthEnLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mMonthEnLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDayOfWeekCn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mDayOfWeekCn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDayOfWeekEnShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mDayOfWeekEnShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDayOfWeekEnLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mDayOfWeekEnLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsChina="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->mIsChina:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isChina()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->isChina()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getHour()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getHour()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getAmPm()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getAmPm()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getAmPmCn()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getAmPmCn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getAmPmEn()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getAmPmEn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getAmPmStr()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getAmPmStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getMinute()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getSecond()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getSecond()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getMillisecond()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getMillisecond()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getYear()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getMonth()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getMonth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getDayOfMonth()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getDayOfMonth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getDayOfWeek()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getDayOfWeek()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getHourOfDay()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getHourOfDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", is24HourFormat()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->is24HourFormat()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getHourHigh()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getHourHigh()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getHourLow()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getHourLow()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getMinuteHigh()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getMinuteHigh()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getMinuteLow()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getMinuteLow()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getHourString()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getHourString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getMinuteString()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getMinuteString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getHourMinuteString()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getHourMinuteString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getYearCn()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getYearCn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getMonthCn()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getMonthCn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getDayOfMonthCn()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getDayOfMonthCn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getMonthDayCn()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getMonthDayCn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getYearMonthDayCn()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getYearMonthDayCn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getMonthEnShort()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getMonthEnShort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getMonthEnLong()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getMonthEnLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getMonthDayEnShort()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getMonthDayEnShort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getMonthDayEnLong()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getMonthDayEnLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getMonthDay()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getMonthDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getDayOfWeekCn()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getDayOfWeekCn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getDayOfWeekEnShort()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getDayOfWeekEnShort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getDayOfWeekEnLong()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getDayOfWeekEnLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
