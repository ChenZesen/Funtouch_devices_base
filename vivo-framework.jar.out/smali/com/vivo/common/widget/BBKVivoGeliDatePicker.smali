.class public Lcom/vivo/common/widget/BBKVivoGeliDatePicker;
.super Landroid/widget/FrameLayout;
.source "BBKVivoGeliDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/widget/BBKVivoGeliDatePicker$SavedState;,
        Lcom/vivo/common/widget/BBKVivoGeliDatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static DATE_FORMAT:Ljava/lang/String; = null

.field private static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_MAX_YEAR:I = 0x802

.field private static final DEFAULT_MIN_YEAR:I = 0x76d

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBBKDayPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

.field private mBBKMonthPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

.field private mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mDateFormat:Ljava/text/DateFormat;

.field private mDensityScale:F

.field private mEndYear:I

.field private mIsEnabled:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Lcom/vivo/common/widget/BBKVivoGeliDatePicker$OnDateChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private mStartYear:I

.field private mTempDate:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const/16 v0, 0x76d

    iput v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mStartYear:I

    .line 66
    const/16 v0, 0x802

    iput v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mEndYear:I

    .line 68
    const-string v0, "BBKGeliDatePicker"

    iput-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->TAG:Ljava/lang/String;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mIsEnabled:Z

    .line 125
    invoke-static {p1}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->getDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->DATE_FORMAT:Ljava/lang/String;

    .line 126
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->initBBKDatePick(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    return-void
.end method

.method static synthetic access$500(Lcom/vivo/common/widget/BBKVivoGeliDatePicker;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/BBKVivoGeliDatePicker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->updateBBKDate(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 244
    if-nez p1, :cond_0

    .line 245
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 250
    :goto_0
    return-object v2

    .line 247
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 248
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 249
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method public static getDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 720
    const/4 v1, 0x0

    .line 722
    .local v1, "format":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 723
    .local v0, "dateFormat":Ljava/text/DateFormat;
    instance-of v2, v0, Ljava/text/SimpleDateFormat;

    if-eqz v2, :cond_1

    .line 724
    check-cast v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    .line 728
    :goto_0
    if-nez v1, :cond_0

    .line 729
    const-string v1, "yyyy-MM-dd"

    .line 731
    :cond_0
    invoke-static {v1}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->getDateFormatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 726
    .restart local v0    # "dateFormat":Ljava/text/DateFormat;
    :cond_1
    sget-object v2, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->LOG_TAG:Ljava/lang/String;

    const-string v3, "can\'t get DateFormat for SimpleDateFormat"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getDateFormatString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 735
    if-nez p0, :cond_0

    .line 736
    const/4 v3, 0x0

    .line 746
    :goto_0
    return-object v3

    .line 738
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 740
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v3, "y"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 741
    .local v2, "start":I
    const-string v3, "y"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 743
    .local v1, "end":I
    if-ltz v2, :cond_1

    if-ltz v1, :cond_1

    .line 744
    add-int/lit8 v3, v1, 0x1

    const-string v4, "yyyy"

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private initBBKDatePick(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v5, 0xc

    const/4 v8, 0x1

    const/4 v7, 0x5

    .line 626
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 628
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x3030012

    invoke-virtual {v1, v3, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 630
    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mDensityScale:F

    .line 632
    invoke-static {}, Landroid/os/FtBuild;->getRomVersion()F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 633
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->initBBKDatePickViewROM3_0()V

    .line 637
    :goto_0
    invoke-static {}, Landroid/os/FtBuild;->isOverSeas()Z

    move-result v3

    if-nez v3, :cond_0

    .line 638
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    const v4, 0x30e0066

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setPickText(Ljava/lang/String;)V

    .line 639
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    const v4, 0x30e0065

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setPickText(Ljava/lang/String;)V

    .line 640
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    const v4, 0x30e0064

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setPickText(Ljava/lang/String;)V

    .line 643
    :cond_0
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    new-instance v4, Lcom/vivo/common/widget/BBKVivoGeliDatePicker$1;

    invoke-direct {v4, p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker$1;-><init>(Lcom/vivo/common/widget/BBKVivoGeliDatePicker;)V

    invoke-virtual {v3, v4}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setOnSelectChangedListener(Lcom/vivo/common/widget/ScrollNumberPicker$OnChangedListener;)V

    .line 652
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iget-object v4, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    invoke-virtual {v3, v8, v4, v7}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setRange(III)V

    .line 656
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    invoke-virtual {v3, v8, v5, v7}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setRange(III)V

    .line 659
    new-array v2, v5, [Ljava/lang/String;

    .line 660
    .local v2, "months":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 661
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 660
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 635
    .end local v0    # "i":I
    .end local v2    # "months":[Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->initBBKDatePickView()V

    goto :goto_0

    .line 663
    .restart local v0    # "i":I
    .restart local v2    # "months":[Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    new-instance v4, Lcom/vivo/common/widget/BBKVivoGeliDatePicker$2;

    invoke-direct {v4, p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker$2;-><init>(Lcom/vivo/common/widget/BBKVivoGeliDatePicker;)V

    invoke-virtual {v3, v4}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setOnSelectChangedListener(Lcom/vivo/common/widget/ScrollNumberPicker$OnChangedListener;)V

    .line 671
    invoke-static {p1}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->isThaiCalendar(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 672
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iget v4, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mStartYear:I

    add-int/lit16 v4, v4, 0x21f

    iget v5, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mEndYear:I

    add-int/lit16 v5, v5, 0x21f

    invoke-virtual {v3, v4, v5, v7}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setRange(III)V

    .line 677
    :goto_2
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    new-instance v4, Lcom/vivo/common/widget/BBKVivoGeliDatePicker$3;

    invoke-direct {v4, p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker$3;-><init>(Lcom/vivo/common/widget/BBKVivoGeliDatePicker;)V

    invoke-virtual {v3, v4}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setOnSelectChangedListener(Lcom/vivo/common/widget/ScrollNumberPicker$OnChangedListener;)V

    .line 685
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 686
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    iget v4, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mStartYear:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v8}, Ljava/util/Calendar;->set(III)V

    .line 687
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->setMinDate(J)V

    .line 690
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 691
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    iget v4, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mEndYear:I

    const/16 v5, 0xb

    const/16 v6, 0x1f

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 692
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->setMaxDate(J)V

    .line 695
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 696
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->init(IIILcom/vivo/common/widget/BBKVivoGeliDatePicker$OnDateChangedListener;)V

    .line 699
    return-void

    .line 674
    :cond_3
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iget v4, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mStartYear:I

    iget v5, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mEndYear:I

    invoke-virtual {v3, v4, v5, v7}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setRange(III)V

    goto :goto_2
.end method

.method private initBBKDatePickView()V
    .locals 12

    .prologue
    const v11, 0x30d0037

    const v10, 0x30d0036

    const v9, 0x30d0035

    .line 576
    sget-object v7, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "dateFormat":Ljava/lang/String;
    const/16 v7, 0x44

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 578
    .local v1, "dayIndex":I
    const/16 v7, 0x4d

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 579
    .local v4, "monthIndex":I
    const/16 v7, 0x59

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 582
    .local v6, "yearIndex":I
    iget-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ar"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 583
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int v1, v7, v1

    .line 584
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int v4, v7, v4

    .line 585
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int v6, v7, v6

    .line 588
    :cond_0
    if-ltz v1, :cond_1

    if-ge v1, v4, :cond_1

    if-ge v4, v6, :cond_1

    .line 589
    invoke-virtual {p0, v9}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    .line 590
    invoke-virtual {p0, v10}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    .line 591
    invoke-virtual {p0, v11}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    .line 593
    iget-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    invoke-virtual {v7}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 594
    .local v2, "h1":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    invoke-virtual {v7}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 595
    .local v3, "h2":Landroid/widget/RelativeLayout$LayoutParams;
    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 596
    .local v5, "tmp":I
    iget v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 597
    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 599
    iget-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    invoke-virtual {v7, v2}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    iget-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    invoke-virtual {v7, v3}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    .end local v2    # "h1":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "h2":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "tmp":I
    :goto_0
    return-void

    .line 602
    :cond_1
    if-ltz v4, :cond_2

    if-ge v4, v1, :cond_2

    if-ge v1, v6, :cond_2

    .line 603
    invoke-virtual {p0, v10}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    .line 604
    invoke-virtual {p0, v9}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    .line 605
    invoke-virtual {p0, v11}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    .line 607
    iget-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    invoke-virtual {v7}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 609
    .restart local v2    # "h1":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    invoke-virtual {v7}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 610
    .restart local v3    # "h2":Landroid/widget/RelativeLayout$LayoutParams;
    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 611
    .restart local v5    # "tmp":I
    iget v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 612
    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 614
    iget-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    invoke-virtual {v7, v2}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    iget-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    invoke-virtual {v7, v3}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 618
    .end local v2    # "h1":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "h2":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "tmp":I
    :cond_2
    invoke-virtual {p0, v11}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    .line 619
    invoke-virtual {p0, v10}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    .line 620
    invoke-virtual {p0, v9}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    goto :goto_0
.end method

.method private initBBKDatePickViewROM3_0()V
    .locals 12

    .prologue
    const v11, 0x30d0037

    const v10, 0x30d0036

    const v9, 0x30d0035

    .line 527
    sget-object v7, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "dateFormat":Ljava/lang/String;
    const/16 v7, 0x44

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 529
    .local v1, "dayIndex":I
    const/16 v7, 0x4d

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 530
    .local v4, "monthIndex":I
    const/16 v7, 0x59

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 533
    .local v6, "yearIndex":I
    iget-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ar"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 534
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int v1, v7, v1

    .line 535
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int v4, v7, v4

    .line 536
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int v6, v7, v6

    .line 539
    :cond_0
    invoke-virtual {p0, v11}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    .line 540
    invoke-virtual {p0, v10}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    .line 541
    invoke-virtual {p0, v9}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    .line 543
    if-ltz v1, :cond_2

    if-ge v1, v4, :cond_2

    if-ge v4, v6, :cond_2

    .line 544
    invoke-virtual {p0, v9}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    .line 545
    invoke-virtual {p0, v10}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    .line 546
    invoke-virtual {p0, v11}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    .line 548
    iget-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    invoke-virtual {v7}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 549
    .local v2, "h1":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    invoke-virtual {v7}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 550
    .local v3, "h2":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 551
    .local v5, "tmp":I
    iget v7, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 552
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 554
    iget-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    invoke-virtual {v7, v2}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    iget-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    invoke-virtual {v7, v3}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    .end local v2    # "h1":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "h2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "tmp":I
    :cond_1
    :goto_0
    return-void

    .line 556
    :cond_2
    if-ltz v4, :cond_1

    if-ge v4, v1, :cond_1

    if-ge v1, v6, :cond_1

    .line 557
    invoke-virtual {p0, v10}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    .line 558
    invoke-virtual {p0, v9}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    .line 559
    invoke-virtual {p0, v11}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iput-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    .line 561
    iget-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    invoke-virtual {v7}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 562
    .restart local v2    # "h1":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    invoke-virtual {v7}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 564
    .restart local v3    # "h2":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 565
    .restart local v5    # "tmp":I
    iget v7, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 566
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 568
    iget-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    invoke-virtual {v7, v2}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    iget-object v7, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    invoke-virtual {v7, v3}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private isNewDate(III)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x1

    .line 341
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

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
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 755
    const-string v4, "1"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "use_thai_calendar"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 773
    :cond_0
    :goto_0
    return v3

    .line 759
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 760
    .local v0, "calendar":Ljava/util/Calendar;
    const-string v4, "[1-2]\\d{3}"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 761
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 v6, 0x4

    invoke-static {p0, v4, v5, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 765
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 766
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int/2addr v4, v5

    const/16 v5, 0x21f

    if-eq v4, v5, :cond_0

    .line 773
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 413
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->sendAccessibilityEvent(I)V

    .line 414
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mOnDateChangedListener:Lcom/vivo/common/widget/BBKVivoGeliDatePicker$OnDateChangedListener;

    if-eqz v3, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->getYear()I

    move-result v2

    .line 416
    .local v2, "Geli_Year":I
    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->getMonth()I

    move-result v1

    .line 417
    .local v1, "Geli_Month":I
    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->getDayOfMonth()I

    move-result v0

    .line 418
    .local v0, "Geli_DayofMonth":I
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mOnDateChangedListener:Lcom/vivo/common/widget/BBKVivoGeliDatePicker$OnDateChangedListener;

    invoke-interface {v3, p0, v2, v1, v0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker$OnDateChangedListener;->onDateChanged(Lcom/vivo/common/widget/BBKVivoGeliDatePicker;III)V

    .line 420
    .end local v0    # "Geli_DayofMonth":I
    .end local v1    # "Geli_Month":I
    .end local v2    # "Geli_Year":I
    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    .line 330
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->DATE_FORMAT:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mDateFormat:Ljava/text/DateFormat;

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    const/4 v1, 0x1

    .line 336
    :goto_0
    return v1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/text/ParseException;
    sget-object v1, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 215
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    :cond_0
    return-void

    .line 219
    :cond_1
    iput-object p1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 221
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    .line 222
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 223
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 224
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 226
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mNumberOfMonths:I

    .line 227
    iget v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mShortMonths:[Ljava/lang/String;

    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mNumberOfMonths:I

    if-ge v0, v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x0

    const/16 v3, 0x14

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setDate(III)V
    .locals 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v4, 0x5

    .line 347
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 349
    .local v0, "lastMonth":I
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 351
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 352
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 357
    :cond_0
    :goto_0
    if-eq v0, p2, :cond_1

    .line 358
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setRange(III)V

    .line 359
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iget-object v2, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setScrollItemPositionByRange(I)V

    .line 361
    :cond_1
    return-void

    .line 353
    :cond_2
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private updateBBKDate(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "oldString"    # Ljava/lang/String;
    .param p2, "newString"    # Ljava/lang/String;
    .param p3, "cur"    # I

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 497
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 498
    .local v1, "oldVal":I
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 500
    .local v0, "newVal":I
    iget-object v2, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 501
    if-nez p3, :cond_1

    .line 502
    iget-object v2, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v8, v0}, Ljava/util/Calendar;->set(II)V

    .line 519
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->setDate(III)V

    .line 521
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->notifyDateChanged()V

    .line 522
    return-void

    .line 503
    :cond_1
    if-ne p3, v6, :cond_4

    .line 504
    if-ne v1, v9, :cond_2

    if-nez v0, :cond_2

    .line 505
    iget-object v2, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 506
    :cond_2
    if-nez v1, :cond_3

    if-ne v0, v9, :cond_3

    .line 507
    iget-object v2, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v3, -0x1

    invoke-virtual {v2, v7, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 509
    :cond_3
    iget-object v2, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    sub-int v3, v0, v1

    invoke-virtual {v2, v7, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 511
    :cond_4
    if-ne p3, v7, :cond_0

    .line 512
    iget-object v2, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->isThaiCalendar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 513
    iget-object v2, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    add-int/lit16 v3, v0, -0x21f

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 515
    :cond_5
    iget-object v2, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method private updateCalendarView()V
    .locals 0

    .prologue
    .line 386
    return-void
.end method

.method private updateSpinners()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 370
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setScrollItemPositionByRange(I)V

    .line 372
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setScrollItemPositionByRange(I)V

    .line 374
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->isThaiCalendar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x21f

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setScrollItemPositionByRange(I)V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setScrollItemPositionByRange(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 199
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
    .line 279
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 280
    return-void
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getDayPicker()Lcom/vivo/common/widget/GeliScrollNumberPicker;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    return-object v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonthPicker()Lcom/vivo/common/widget/GeliScrollNumberPicker;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    return-object v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getYearPicker()Lcom/vivo/common/widget/GeliScrollNumberPicker;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    return-object v0
.end method

.method public init(IIILcom/vivo/common/widget/BBKVivoGeliDatePicker$OnDateChangedListener;)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/vivo/common/widget/BBKVivoGeliDatePicker$OnDateChangedListener;

    .prologue
    .line 316
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->setDate(III)V

    .line 317
    const-string v0, "BBKGeliDatePicker"

    const-string v1, "updateSpinners777----------------------->"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->updateSpinners()V

    .line 319
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->updateCalendarView()V

    .line 320
    iput-object p4, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mOnDateChangedListener:Lcom/vivo/common/widget/BBKVivoGeliDatePicker$OnDateChangedListener;

    .line 321
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 205
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 206
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 291
    move-object v0, p1

    check-cast v0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker$SavedState;

    .line 292
    .local v0, "ss":Lcom/vivo/common/widget/BBKVivoGeliDatePicker$SavedState;
    invoke-virtual {v0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 294
    # getter for: Lcom/vivo/common/widget/BBKVivoGeliDatePicker$SavedState;->mYear:I
    invoke-static {v0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker$SavedState;->access$100(Lcom/vivo/common/widget/BBKVivoGeliDatePicker$SavedState;)I

    move-result v1

    # getter for: Lcom/vivo/common/widget/BBKVivoGeliDatePicker$SavedState;->mMonth:I
    invoke-static {v0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker$SavedState;->access$200(Lcom/vivo/common/widget/BBKVivoGeliDatePicker$SavedState;)I

    move-result v2

    # getter for: Lcom/vivo/common/widget/BBKVivoGeliDatePicker$SavedState;->mDay:I
    invoke-static {v0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker$SavedState;->access$300(Lcom/vivo/common/widget/BBKVivoGeliDatePicker$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->setDate(III)V

    .line 295
    const-string v1, "BBKGeliDatePicker"

    const-string v2, "updateSpinners666----------------------->"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->updateSpinners()V

    .line 297
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->updateCalendarView()V

    .line 298
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 284
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 285
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker$SavedState;

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/vivo/common/widget/BBKVivoGeliDatePicker$1;)V

    return-object v0
.end method

.method public setDatePickerTopBackgroundResource(I)V
    .locals 0
    .param p1, "resid"    # I

    .prologue
    .line 489
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 187
    iput-boolean p1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mIsEnabled:Z

    goto :goto_0
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 166
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 167
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 174
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 177
    :cond_1
    const-string v0, "BBKGeliDatePicker"

    const-string v1, "updateSpinners444----------------------->"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 142
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 143
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 149
    const-string v0, "BBKGeliDatePicker"

    const-string v1, "updateSpinners333----------------------->"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setSelectedItemTextColor(I)V
    .locals 1
    .param p1, "selectedItemColor"    # I

    .prologue
    .line 714
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    invoke-virtual {v0, p1}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setSelectedItemTextColor(I)V

    .line 715
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    invoke-virtual {v0, p1}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setSelectedItemTextColor(I)V

    .line 716
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    invoke-virtual {v0, p1}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setSelectedItemTextColor(I)V

    .line 717
    return-void
.end method

.method public setYearDisableRange(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 493
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setDisableRang(II)V

    .line 494
    return-void
.end method

.method public updateDate(III)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 265
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->setDate(III)V

    .line 269
    const-string v0, "BBKGeliDatePicker"

    const-string v1, "updateSpinners555----------------------->"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->updateSpinners()V

    .line 271
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->updateCalendarView()V

    .line 272
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->notifyDateChanged()V

    goto :goto_0
.end method

.method public updateDateAndSpinners(III)V
    .locals 2
    .param p1, "Geli_year"    # I
    .param p2, "Geli_month"    # I
    .param p3, "Geli_DayofMonth"    # I

    .prologue
    .line 364
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->setDate(III)V

    .line 365
    const-string v0, "BBKGeliDatePicker"

    const-string v1, "updateSpinners111----------------------->"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->updateSpinners()V

    .line 367
    return-void
.end method

.method public updateYearRange(II)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 472
    const/16 v0, 0x76d

    if-lt p1, v0, :cond_0

    if-lt p1, p2, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iput p1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mStartYear:I

    .line 476
    iput p2, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mEndYear:I

    .line 478
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->isThaiCalendar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iget v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mStartYear:I

    add-int/lit16 v1, v1, 0x21f

    iget v2, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mEndYear:I

    add-int/lit16 v2, v2, 0x21f

    invoke-virtual {v0, v1, v2, v4}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setRange(III)V

    .line 480
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x21f

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setScrollItemPositionByRange(I)V

    goto :goto_0

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iget v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mStartYear:I

    iget v2, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mEndYear:I

    invoke-virtual {v0, v1, v2, v4}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setRange(III)V

    .line 483
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/GeliScrollNumberPicker;

    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/GeliScrollNumberPicker;->setScrollItemPositionByRange(I)V

    goto :goto_0
.end method
