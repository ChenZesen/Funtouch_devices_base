.class public Lcom/vivo/common/widget/BBKDatePicker;
.super Landroid/widget/FrameLayout;
.source "BBKDatePicker.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/widget/BBKDatePicker$SavedState;,
        Lcom/vivo/common/widget/BBKDatePicker$OnDateChangedListener;,
        Lcom/vivo/common/widget/BBKDatePicker$DateType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final TAG:Ljava/lang/String; = "BBKDatePicker"


# instance fields
.field private DATE_FORMAT:Ljava/lang/String;

.field private final DEFAULT_MAX_YEAR:I

.field private final DEFAULT_MIN_YEAR:I

.field private final SPINNER_SCROLL_RANGE:I

.field private final THAI_CALENDAR_OFFSET:I

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mDayPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

.field private mEndYear:I

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

.field private mOnDateChangedListener:Lcom/vivo/common/widget/BBKDatePicker$OnDateChangedListener;

.field private mStartYear:I

.field private mTempDate:Ljava/util/Calendar;

.field private mYearPicker:Lcom/vivo/common/widget/ScrollNumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/common/widget/BBKDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vivo/common/widget/BBKDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v3, 0x834

    const/16 v2, 0x76c

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->DEFAULT_MIN_YEAR:I

    .line 37
    iput v3, p0, Lcom/vivo/common/widget/BBKDatePicker;->DEFAULT_MAX_YEAR:I

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->SPINNER_SCROLL_RANGE:I

    .line 40
    const/16 v0, 0x21f

    iput v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->THAI_CALENDAR_OFFSET:I

    .line 46
    iput-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    .line 47
    iput-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 48
    iput-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 49
    iput-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 51
    iput v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mStartYear:I

    .line 52
    iput v3, p0, Lcom/vivo/common/widget/BBKDatePicker;->mEndYear:I

    .line 94
    invoke-static {p1}, Lcom/vivo/common/widget/BBKDatePicker;->getDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->DATE_FORMAT:Ljava/lang/String;

    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/BBKDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/widget/BBKDatePicker;->initBBKDatePick(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method static synthetic access$500(Lcom/vivo/common/widget/BBKDatePicker;Ljava/lang/String;Ljava/lang/String;Lcom/vivo/common/widget/BBKDatePicker$DateType;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/BBKDatePicker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/vivo/common/widget/BBKDatePicker$DateType;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/widget/BBKDatePicker;->updateBBKDate(Ljava/lang/String;Ljava/lang/String;Lcom/vivo/common/widget/BBKDatePicker$DateType;)V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 4
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, "calendar":Ljava/util/Calendar;
    if-nez p1, :cond_0

    .line 203
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    .line 205
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 207
    .local v2, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 208
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method public static getDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 294
    const/4 v1, 0x0

    .line 296
    .local v1, "format":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 297
    .local v0, "dateFormat":Ljava/text/DateFormat;
    instance-of v2, v0, Ljava/text/SimpleDateFormat;

    if-eqz v2, :cond_1

    .line 298
    check-cast v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    .line 302
    :goto_0
    if-nez v1, :cond_0

    .line 303
    const-string v1, "yyyy-MM-dd"

    .line 306
    :cond_0
    const-string v2, "BBKDatePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DateFormat : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {v1}, Lcom/vivo/common/widget/BBKDatePicker;->getDateFormatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 300
    .restart local v0    # "dateFormat":Ljava/text/DateFormat;
    :cond_1
    const-string v2, "BBKDatePicker"

    const-string v3, "can\'t get DateFormat for SimpleDateFormat"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getDateFormatString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 312
    if-nez p0, :cond_0

    .line 313
    const/4 v3, 0x0

    .line 323
    :goto_0
    return-object v3

    .line 315
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v3, "y"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 318
    .local v2, "start":I
    const-string v3, "y"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 320
    .local v1, "end":I
    if-ltz v2, :cond_1

    if-ltz v1, :cond_1

    .line 321
    add-int/lit8 v3, v1, 0x1

    const-string v4, "yyyy"

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private initBBKDatePick(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x5

    .line 556
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 557
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x3030010

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 559
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKDatePicker;->initBBKDatePickView()V

    .line 561
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mDayPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    iget-object v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v6, v2, v5}, Lcom/vivo/common/widget/ScrollNumberPicker;->setRange(III)V

    .line 562
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mDayPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    new-instance v2, Lcom/vivo/common/widget/BBKDatePicker$1;

    invoke-direct {v2, p0}, Lcom/vivo/common/widget/BBKDatePicker$1;-><init>(Lcom/vivo/common/widget/BBKDatePicker;)V

    invoke-virtual {v1, v2}, Lcom/vivo/common/widget/ScrollNumberPicker;->setOnSelectChangedListener(Lcom/vivo/common/widget/ScrollNumberPicker$OnChangedListener;)V

    .line 568
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMonthPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    const/16 v2, 0xc

    invoke-virtual {v1, v6, v2, v5}, Lcom/vivo/common/widget/ScrollNumberPicker;->setRange(III)V

    .line 569
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMonthPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    new-instance v2, Lcom/vivo/common/widget/BBKDatePicker$2;

    invoke-direct {v2, p0}, Lcom/vivo/common/widget/BBKDatePicker$2;-><init>(Lcom/vivo/common/widget/BBKDatePicker;)V

    invoke-virtual {v1, v2}, Lcom/vivo/common/widget/ScrollNumberPicker;->setOnSelectChangedListener(Lcom/vivo/common/widget/ScrollNumberPicker$OnChangedListener;)V

    .line 575
    invoke-static {p1}, Lcom/vivo/common/widget/BBKDatePicker;->isThaiCalendar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 576
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mYearPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    iget v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mStartYear:I

    add-int/lit16 v2, v2, 0x21f

    iget v3, p0, Lcom/vivo/common/widget/BBKDatePicker;->mEndYear:I

    add-int/lit16 v3, v3, 0x21f

    invoke-virtual {v1, v2, v3, v5}, Lcom/vivo/common/widget/ScrollNumberPicker;->setRange(III)V

    .line 580
    :goto_0
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mYearPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    new-instance v2, Lcom/vivo/common/widget/BBKDatePicker$3;

    invoke-direct {v2, p0}, Lcom/vivo/common/widget/BBKDatePicker$3;-><init>(Lcom/vivo/common/widget/BBKDatePicker;)V

    invoke-virtual {v1, v2}, Lcom/vivo/common/widget/ScrollNumberPicker;->setOnSelectChangedListener(Lcom/vivo/common/widget/ScrollNumberPicker$OnChangedListener;)V

    .line 586
    invoke-static {}, Landroid/os/FtBuild;->isOverSeas()Z

    move-result v1

    if-nez v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mDayPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    const v2, 0x30e0066

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/common/widget/ScrollNumberPicker;->setPickText(Ljava/lang/String;)V

    .line 588
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMonthPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    const v2, 0x30e0065

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/common/widget/ScrollNumberPicker;->setPickText(Ljava/lang/String;)V

    .line 589
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mYearPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    const v2, 0x30e0064

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/common/widget/ScrollNumberPicker;->setPickText(Ljava/lang/String;)V

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 593
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    iget v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mStartYear:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v6}, Ljava/util/Calendar;->set(III)V

    .line 594
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/vivo/common/widget/BBKDatePicker;->setMinDate(J)V

    .line 596
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 597
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    iget v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mEndYear:I

    const/16 v3, 0xb

    const/16 v4, 0x1f

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 598
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/vivo/common/widget/BBKDatePicker;->setMaxDate(J)V

    .line 600
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 601
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/vivo/common/widget/BBKDatePicker;->init(IIILcom/vivo/common/widget/BBKDatePicker$OnDateChangedListener;)V

    .line 602
    return-void

    .line 578
    :cond_1
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mYearPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    iget v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mStartYear:I

    iget v3, p0, Lcom/vivo/common/widget/BBKDatePicker;->mEndYear:I

    invoke-virtual {v1, v2, v3, v5}, Lcom/vivo/common/widget/ScrollNumberPicker;->setRange(III)V

    goto/16 :goto_0
.end method

.method private initBBKDatePickView()V
    .locals 13

    .prologue
    const v12, 0x30d0037

    const v11, 0x30d0036

    const v10, 0x30d0035

    .line 502
    invoke-virtual {p0, v12}, Lcom/vivo/common/widget/BBKDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/ScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKDatePicker;->mDayPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    .line 503
    invoke-virtual {p0, v11}, Lcom/vivo/common/widget/BBKDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/ScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMonthPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    .line 504
    invoke-virtual {p0, v10}, Lcom/vivo/common/widget/BBKDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/ScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKDatePicker;->mYearPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    .line 506
    iget-object v7, p0, Lcom/vivo/common/widget/BBKDatePicker;->DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "dateFormat":Ljava/lang/String;
    const/16 v7, 0x44

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 508
    .local v1, "dayIndex":I
    const/16 v7, 0x4d

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 509
    .local v4, "monthIndex":I
    const/16 v7, 0x59

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 512
    .local v6, "yearIndex":I
    const-string v7, "BBKDatePicker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dayIndex["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] monthIndex["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] yearIndex["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v7, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ar"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 516
    const-string v7, "BBKDatePicker"

    const-string v8, "revert date sequence anim at Arabic"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int v1, v7, v1

    .line 519
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int v4, v7, v4

    .line 520
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int v6, v7, v6

    .line 523
    :cond_0
    if-ltz v1, :cond_2

    if-ge v1, v4, :cond_2

    if-ge v4, v6, :cond_2

    .line 524
    invoke-virtual {p0, v10}, Lcom/vivo/common/widget/BBKDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/ScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKDatePicker;->mDayPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    .line 525
    invoke-virtual {p0, v11}, Lcom/vivo/common/widget/BBKDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/ScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMonthPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    .line 526
    invoke-virtual {p0, v12}, Lcom/vivo/common/widget/BBKDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/ScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKDatePicker;->mYearPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    .line 528
    iget-object v7, p0, Lcom/vivo/common/widget/BBKDatePicker;->mDayPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {v7}, Lcom/vivo/common/widget/ScrollNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 529
    .local v2, "lp1":Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Lcom/vivo/common/widget/BBKDatePicker;->mYearPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {v7}, Lcom/vivo/common/widget/ScrollNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 531
    .local v3, "lp2":Landroid/view/ViewGroup$LayoutParams;
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 532
    .local v5, "tmp":I
    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 533
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 535
    iget-object v7, p0, Lcom/vivo/common/widget/BBKDatePicker;->mDayPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {v7, v2}, Lcom/vivo/common/widget/ScrollNumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    iget-object v7, p0, Lcom/vivo/common/widget/BBKDatePicker;->mYearPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {v7, v3}, Lcom/vivo/common/widget/ScrollNumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    .end local v2    # "lp1":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "lp2":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "tmp":I
    :cond_1
    :goto_0
    return-void

    .line 538
    :cond_2
    if-ltz v4, :cond_1

    if-ge v4, v1, :cond_1

    if-ge v1, v6, :cond_1

    .line 539
    invoke-virtual {p0, v11}, Lcom/vivo/common/widget/BBKDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/ScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKDatePicker;->mDayPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    .line 540
    invoke-virtual {p0, v10}, Lcom/vivo/common/widget/BBKDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/ScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMonthPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    .line 541
    invoke-virtual {p0, v12}, Lcom/vivo/common/widget/BBKDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/ScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKDatePicker;->mYearPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    .line 543
    iget-object v7, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMonthPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {v7}, Lcom/vivo/common/widget/ScrollNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 544
    .restart local v2    # "lp1":Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Lcom/vivo/common/widget/BBKDatePicker;->mYearPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {v7}, Lcom/vivo/common/widget/ScrollNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 546
    .restart local v3    # "lp2":Landroid/view/ViewGroup$LayoutParams;
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 547
    .restart local v5    # "tmp":I
    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 548
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 550
    iget-object v7, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMonthPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {v7, v2}, Lcom/vivo/common/widget/ScrollNumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    iget-object v7, p0, Lcom/vivo/common/widget/BBKDatePicker;->mYearPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {v7, v3}, Lcom/vivo/common/widget/ScrollNumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private isNewDate(III)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x1

    .line 327
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isThaiCalendar(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 288
    const-string v0, "1"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "use_thai_calendar"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 391
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/vivo/common/widget/BBKDatePicker;->sendAccessibilityEvent(I)V

    .line 393
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mOnDateChangedListener:Lcom/vivo/common/widget/BBKDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mOnDateChangedListener:Lcom/vivo/common/widget/BBKDatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKDatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKDatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/vivo/common/widget/BBKDatePicker$OnDateChangedListener;->onDateChanged(Lcom/vivo/common/widget/BBKDatePicker;III)V

    .line 396
    :cond_0
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 183
    :cond_0
    iput-object p1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 185
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/vivo/common/widget/BBKDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    .line 186
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/vivo/common/widget/BBKDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 187
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/vivo/common/widget/BBKDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 188
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/vivo/common/widget/BBKDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private setDate(III)V
    .locals 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v4, 0x5

    .line 333
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 335
    .local v0, "lastMonth":I
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 337
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 338
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 343
    :cond_0
    :goto_0
    if-eq v0, p2, :cond_1

    .line 344
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mDayPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/vivo/common/widget/ScrollNumberPicker;->setRange(III)V

    .line 345
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mDayPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    iget-object v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/common/widget/ScrollNumberPicker;->setScrollItemPositionByRange(I)V

    .line 347
    :cond_1
    return-void

    .line 339
    :cond_2
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private updateBBKDate(Ljava/lang/String;Ljava/lang/String;Lcom/vivo/common/widget/BBKDatePicker$DateType;)V
    .locals 10
    .param p1, "oldString"    # Ljava/lang/String;
    .param p2, "newString"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/vivo/common/widget/BBKDatePicker$DateType;

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 470
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 471
    .local v1, "oldVal":I
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 473
    .local v0, "newVal":I
    iget-object v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 474
    sget-object v2, Lcom/vivo/common/widget/BBKDatePicker$DateType;->DAY:Lcom/vivo/common/widget/BBKDatePicker$DateType;

    if-ne p3, v2, :cond_1

    .line 475
    iget-object v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v8, v0}, Ljava/util/Calendar;->set(II)V

    .line 492
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/vivo/common/widget/BBKDatePicker;->updateDateByScroller(III)V

    .line 493
    return-void

    .line 476
    :cond_1
    sget-object v2, Lcom/vivo/common/widget/BBKDatePicker$DateType;->MONTH:Lcom/vivo/common/widget/BBKDatePicker$DateType;

    if-ne p3, v2, :cond_4

    .line 477
    if-ne v1, v9, :cond_2

    if-nez v0, :cond_2

    .line 478
    iget-object v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 479
    :cond_2
    if-nez v1, :cond_3

    if-ne v0, v9, :cond_3

    .line 480
    iget-object v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v3, -0x1

    invoke-virtual {v2, v7, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 482
    :cond_3
    iget-object v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    sub-int v3, v0, v1

    invoke-virtual {v2, v7, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 484
    :cond_4
    sget-object v2, Lcom/vivo/common/widget/BBKDatePicker$DateType;->YEAR:Lcom/vivo/common/widget/BBKDatePicker$DateType;

    if-ne p3, v2, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKDatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/common/widget/BBKDatePicker;->isThaiCalendar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 486
    iget-object v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    add-int/lit16 v3, v0, -0x21f

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 488
    :cond_5
    iget-object v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method private updateCalendarView()V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method private updateDateByScroller(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 236
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/widget/BBKDatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/widget/BBKDatePicker;->setDate(III)V

    .line 240
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKDatePicker;->notifyDateChanged()V

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 350
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mDayPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/ScrollNumberPicker;->setScrollItemPositionByRange(I)V

    .line 351
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMonthPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/ScrollNumberPicker;->setScrollItemPositionByRange(I)V

    .line 353
    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKDatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/common/widget/BBKDatePicker;->isThaiCalendar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mYearPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x21f

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/ScrollNumberPicker;->setScrollItemPositionByRange(I)V

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mYearPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/ScrollNumberPicker;->setScrollItemPositionByRange(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/vivo/common/widget/BBKDatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/vivo/common/widget/BBKDatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 247
    return-void
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getDayPicker()Lcom/vivo/common/widget/ScrollNumberPicker;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mDayPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    return-object v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonthPicker()Lcom/vivo/common/widget/ScrollNumberPicker;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMonthPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    return-object v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getYearPicker()Lcom/vivo/common/widget/ScrollNumberPicker;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mYearPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    return-object v0
.end method

.method public init(IIILcom/vivo/common/widget/BBKDatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/vivo/common/widget/BBKDatePicker$OnDateChangedListener;

    .prologue
    .line 279
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/widget/BBKDatePicker;->setDate(III)V

    .line 281
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKDatePicker;->updateSpinners()V

    .line 282
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKDatePicker;->updateCalendarView()V

    .line 284
    iput-object p4, p0, Lcom/vivo/common/widget/BBKDatePicker;->mOnDateChangedListener:Lcom/vivo/common/widget/BBKDatePicker$OnDateChangedListener;

    .line 285
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 170
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/BBKDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 171
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 161
    const/16 v0, 0x14

    .line 163
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKDatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 257
    move-object v0, p1

    check-cast v0, Lcom/vivo/common/widget/BBKDatePicker$SavedState;

    .line 258
    .local v0, "ss":Lcom/vivo/common/widget/BBKDatePicker$SavedState;
    invoke-virtual {v0}, Lcom/vivo/common/widget/BBKDatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 260
    # getter for: Lcom/vivo/common/widget/BBKDatePicker$SavedState;->mYear:I
    invoke-static {v0}, Lcom/vivo/common/widget/BBKDatePicker$SavedState;->access$100(Lcom/vivo/common/widget/BBKDatePicker$SavedState;)I

    move-result v1

    # getter for: Lcom/vivo/common/widget/BBKDatePicker$SavedState;->mMonth:I
    invoke-static {v0}, Lcom/vivo/common/widget/BBKDatePicker$SavedState;->access$200(Lcom/vivo/common/widget/BBKDatePicker$SavedState;)I

    move-result v2

    # getter for: Lcom/vivo/common/widget/BBKDatePicker$SavedState;->mDay:I
    invoke-static {v0}, Lcom/vivo/common/widget/BBKDatePicker$SavedState;->access$300(Lcom/vivo/common/widget/BBKDatePicker$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/vivo/common/widget/BBKDatePicker;->setDate(III)V

    .line 261
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKDatePicker;->updateSpinners()V

    .line 262
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKDatePicker;->updateCalendarView()V

    .line 263
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 251
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 252
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/vivo/common/widget/BBKDatePicker$SavedState;

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKDatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKDatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKDatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/common/widget/BBKDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/vivo/common/widget/BBKDatePicker$1;)V

    return-object v0
.end method

.method public setDatePickerTopBackgroundResource(I)V
    .locals 0
    .param p1, "resid"    # I

    .prologue
    .line 463
    return-void
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 137
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 138
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 149
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 144
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKDatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 111
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 112
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 118
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKDatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setSelectedItemTextColor(I)V
    .locals 1
    .param p1, "selectedItemColor"    # I

    .prologue
    .line 617
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mDayPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {v0, p1}, Lcom/vivo/common/widget/ScrollNumberPicker;->setSelectedItemTextColor(I)V

    .line 618
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mMonthPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {v0, p1}, Lcom/vivo/common/widget/ScrollNumberPicker;->setSelectedItemTextColor(I)V

    .line 619
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mYearPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {v0, p1}, Lcom/vivo/common/widget/ScrollNumberPicker;->setSelectedItemTextColor(I)V

    .line 620
    return-void
.end method

.method public setYearDisableRange(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 467
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 225
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/widget/BBKDatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/widget/BBKDatePicker;->setDate(III)V

    .line 229
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKDatePicker;->updateSpinners()V

    .line 230
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKDatePicker;->updateCalendarView()V

    .line 232
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKDatePicker;->notifyDateChanged()V

    goto :goto_0
.end method

.method public updateYearRange(II)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 446
    const/16 v0, 0x76c

    if-lt p1, v0, :cond_0

    if-lt p1, p2, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iput p1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mStartYear:I

    .line 450
    iput p2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mEndYear:I

    .line 452
    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKDatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/common/widget/BBKDatePicker;->isThaiCalendar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mYearPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    iget v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mStartYear:I

    add-int/lit16 v1, v1, 0x21f

    iget v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mEndYear:I

    add-int/lit16 v2, v2, 0x21f

    invoke-virtual {v0, v1, v2, v4}, Lcom/vivo/common/widget/ScrollNumberPicker;->setRange(III)V

    .line 454
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mYearPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x21f

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/ScrollNumberPicker;->setScrollItemPositionByRange(I)V

    goto :goto_0

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mYearPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    iget v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mStartYear:I

    iget v2, p0, Lcom/vivo/common/widget/BBKDatePicker;->mEndYear:I

    invoke-virtual {v0, v1, v2, v4}, Lcom/vivo/common/widget/ScrollNumberPicker;->setRange(III)V

    .line 457
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker;->mYearPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    iget-object v1, p0, Lcom/vivo/common/widget/BBKDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/ScrollNumberPicker;->setScrollItemPositionByRange(I)V

    goto :goto_0
.end method
