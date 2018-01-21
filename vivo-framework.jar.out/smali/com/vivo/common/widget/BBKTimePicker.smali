.class public Lcom/vivo/common/widget/BBKTimePicker;
.super Landroid/widget/FrameLayout;
.source "BBKTimePicker.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/widget/BBKTimePicker$SavedState;,
        Lcom/vivo/common/widget/BBKTimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final NO_OP_CHANGE_LISTENER:Lcom/vivo/common/widget/BBKTimePicker$OnTimeChangedListener;


# instance fields
.field private isExport:Z

.field private layoutId:I

.field private mAmPmPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

.field private mAmPmStrings:[Ljava/lang/String;

.field private mCurrentHour:I

.field private mCurrentLocale:Ljava/util/Locale;

.field private mCurrentMinute:I

.field private mHourPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private mMinutePicker:Lcom/vivo/common/widget/ScrollNumberPicker;

.field private mOnTimeChangedListener:Lcom/vivo/common/widget/BBKTimePicker$OnTimeChangedListener;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/vivo/common/widget/BBKTimePicker$1;

    invoke-direct {v0}, Lcom/vivo/common/widget/BBKTimePicker$1;-><init>()V

    sput-object v0, Lcom/vivo/common/widget/BBKTimePicker;->NO_OP_CHANGE_LISTENER:Lcom/vivo/common/widget/BBKTimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/common/widget/BBKTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vivo/common/widget/BBKTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-boolean v1, p0, Lcom/vivo/common/widget/BBKTimePicker;->mIs24HourView:Z

    .line 53
    iput v1, p0, Lcom/vivo/common/widget/BBKTimePicker;->mCurrentHour:I

    .line 54
    iput v1, p0, Lcom/vivo/common/widget/BBKTimePicker;->mCurrentMinute:I

    .line 63
    invoke-static {}, Landroid/os/FtBuild;->isOverSeas()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->isExport:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mIsEnabled:Z

    .line 66
    iput v1, p0, Lcom/vivo/common/widget/BBKTimePicker;->layoutId:I

    .line 105
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/BBKTimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/widget/BBKTimePicker;->initBBKTimePick(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKTimePicker;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/common/widget/BBKTimePicker;->setEnabled(Z)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/widget/BBKTimePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/BBKTimePicker;

    .prologue
    .line 41
    iget v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$002(Lcom/vivo/common/widget/BBKTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/BBKTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/vivo/common/widget/BBKTimePicker;->mCurrentHour:I

    return p1
.end method

.method static synthetic access$012(Lcom/vivo/common/widget/BBKTimePicker;I)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/BBKTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iget v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mCurrentHour:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$020(Lcom/vivo/common/widget/BBKTimePicker;I)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/BBKTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iget v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mCurrentHour:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$100(Lcom/vivo/common/widget/BBKTimePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/BBKTimePicker;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mIs24HourView:Z

    return v0
.end method

.method static synthetic access$200(Lcom/vivo/common/widget/BBKTimePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/BBKTimePicker;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$202(Lcom/vivo/common/widget/BBKTimePicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/BBKTimePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/vivo/common/widget/BBKTimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$300(Lcom/vivo/common/widget/BBKTimePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/BBKTimePicker;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKTimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$402(Lcom/vivo/common/widget/BBKTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/BBKTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/vivo/common/widget/BBKTimePicker;->mCurrentMinute:I

    return p1
.end method

.method private configurePickerRanges()V
    .locals 10

    .prologue
    const/16 v9, 0x18

    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 368
    iget-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x30c00a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 370
    .local v2, "paddingStart":I
    iget-boolean v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mIs24HourView:Z

    if-eqz v3, :cond_3

    .line 371
    iget-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mAmPmPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/vivo/common/widget/ScrollNumberPicker;->setVisibility(I)V

    .line 372
    iget-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mHourPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKTimePicker;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKTimePicker;->getPaddingEnd()I

    move-result v5

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKTimePicker;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/vivo/common/widget/ScrollNumberPicker;->setPaddingRelative(IIII)V

    .line 374
    invoke-static {}, Landroid/os/FtBuild;->getRomVersion()F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 375
    new-array v0, v9, [Ljava/lang/String;

    .line 376
    .local v0, "hour":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_1

    .line 377
    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 376
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_1

    .line 382
    :cond_1
    iget-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mHourPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {v3, v0, v8}, Lcom/vivo/common/widget/ScrollNumberPicker;->setRange([Ljava/lang/String;I)V

    .line 391
    .end local v0    # "hour":[Ljava/lang/String;
    .end local v1    # "i":I
    :goto_2
    return-void

    .line 385
    :cond_2
    iget-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mHourPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    const/16 v4, 0x17

    invoke-virtual {v3, v7, v4, v8}, Lcom/vivo/common/widget/ScrollNumberPicker;->setRange(III)V

    goto :goto_2

    .line 387
    :cond_3
    iget-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mAmPmPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {v3, v7}, Lcom/vivo/common/widget/ScrollNumberPicker;->setVisibility(I)V

    .line 388
    iget-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mHourPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    const/4 v4, 0x1

    const/16 v5, 0xc

    invoke-virtual {v3, v4, v5, v8}, Lcom/vivo/common/widget/ScrollNumberPicker;->setRange(III)V

    .line 389
    iget-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mHourPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKTimePicker;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKTimePicker;->getPaddingEnd()I

    move-result v5

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKTimePicker;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v3, v7, v4, v5, v6}, Lcom/vivo/common/widget/ScrollNumberPicker;->setPaddingRelative(IIII)V

    goto :goto_2
.end method

.method private hidePickerText()Z
    .locals 2

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->isExport:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/FtBuild;->getRomVersion()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initBBKTimePick(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defAttr"    # I

    .prologue
    const/16 v8, 0xc

    const/4 v7, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 276
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 277
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x303003b

    invoke-virtual {v1, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 279
    const v3, 0x30d007f

    invoke-virtual {p0, v3}, Lcom/vivo/common/widget/BBKTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vivo/common/widget/ScrollNumberPicker;

    iput-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mHourPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    .line 280
    const v3, 0x30d0080

    invoke-virtual {p0, v3}, Lcom/vivo/common/widget/BBKTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vivo/common/widget/ScrollNumberPicker;

    iput-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mMinutePicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    .line 281
    const v3, 0x30d007e

    invoke-virtual {p0, v3}, Lcom/vivo/common/widget/BBKTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vivo/common/widget/ScrollNumberPicker;

    iput-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mAmPmPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    .line 283
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKTimePicker;->hidePickerText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    iget-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mHourPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    const-string v6, ""

    invoke-virtual {v3, v6}, Lcom/vivo/common/widget/ScrollNumberPicker;->setPickText(Ljava/lang/String;)V

    .line 288
    :goto_0
    iget-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mHourPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    new-instance v6, Lcom/vivo/common/widget/BBKTimePicker$2;

    invoke-direct {v6, p0}, Lcom/vivo/common/widget/BBKTimePicker$2;-><init>(Lcom/vivo/common/widget/BBKTimePicker;)V

    invoke-virtual {v3, v6}, Lcom/vivo/common/widget/ScrollNumberPicker;->setOnSelectChangedListener(Lcom/vivo/common/widget/ScrollNumberPicker$OnChangedListener;)V

    .line 304
    const/16 v3, 0x3c

    new-array v2, v3, [Ljava/lang/String;

    .line 305
    .local v2, "mins":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 306
    const/16 v3, 0xa

    if-ge v0, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    aput-object v3, v2, v0

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 286
    .end local v0    # "i":I
    .end local v2    # "mins":[Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mHourPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    const v6, 0x30e0067

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/vivo/common/widget/ScrollNumberPicker;->setPickText(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    .restart local v0    # "i":I
    .restart local v2    # "mins":[Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 309
    :cond_2
    iget-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mMinutePicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {v3, v2, v7}, Lcom/vivo/common/widget/ScrollNumberPicker;->setRange([Ljava/lang/String;I)V

    .line 310
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKTimePicker;->hidePickerText()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 311
    iget-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mMinutePicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    const-string v6, ""

    invoke-virtual {v3, v6}, Lcom/vivo/common/widget/ScrollNumberPicker;->setPickText(Ljava/lang/String;)V

    .line 315
    :goto_3
    iget-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mMinutePicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    new-instance v6, Lcom/vivo/common/widget/BBKTimePicker$3;

    invoke-direct {v6, p0}, Lcom/vivo/common/widget/BBKTimePicker$3;-><init>(Lcom/vivo/common/widget/BBKTimePicker;)V

    invoke-virtual {v3, v6}, Lcom/vivo/common/widget/ScrollNumberPicker;->setOnSelectChangedListener(Lcom/vivo/common/widget/ScrollNumberPicker$OnChangedListener;)V

    .line 325
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKTimePicker;->configurePickerRanges()V

    .line 328
    sget-object v3, Lcom/vivo/common/widget/BBKTimePicker;->NO_OP_CHANGE_LISTENER:Lcom/vivo/common/widget/BBKTimePicker$OnTimeChangedListener;

    invoke-virtual {p0, v3}, Lcom/vivo/common/widget/BBKTimePicker;->setOnTimeChangedListener(Lcom/vivo/common/widget/BBKTimePicker$OnTimeChangedListener;)V

    .line 331
    iget v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mCurrentHour:I

    if-ge v3, v8, :cond_4

    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mIsAm:Z

    .line 333
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mAmPmStrings:[Ljava/lang/String;

    .line 334
    iget-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mAmPmPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    iget-object v6, p0, Lcom/vivo/common/widget/BBKTimePicker;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/vivo/common/widget/ScrollNumberPicker;->setRange([Ljava/lang/String;I)V

    .line 335
    iget-boolean v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mIsAm:Z

    if-eqz v3, :cond_5

    .line 336
    iget-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mAmPmPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    iget-object v4, p0, Lcom/vivo/common/widget/BBKTimePicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/vivo/common/widget/ScrollNumberPicker;->setScrollItemPositionByRange(Ljava/lang/String;)V

    .line 341
    :goto_5
    iget-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mAmPmPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    new-instance v4, Lcom/vivo/common/widget/BBKTimePicker$4;

    invoke-direct {v4, p0}, Lcom/vivo/common/widget/BBKTimePicker$4;-><init>(Lcom/vivo/common/widget/BBKTimePicker;)V

    invoke-virtual {v3, v4}, Lcom/vivo/common/widget/ScrollNumberPicker;->setOnSelectChangedListener(Lcom/vivo/common/widget/ScrollNumberPicker$OnChangedListener;)V

    .line 361
    iget-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vivo/common/widget/BBKTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 362
    iget-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vivo/common/widget/BBKTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 364
    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKTimePicker;->isEnabled()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/vivo/common/widget/BBKTimePicker;->setEnabled(Z)V

    .line 365
    return-void

    .line 313
    :cond_3
    iget-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mMinutePicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    const v6, 0x30e0068

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/vivo/common/widget/ScrollNumberPicker;->setPickText(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move v3, v5

    .line 331
    goto :goto_4

    .line 338
    :cond_5
    iget-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mAmPmPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    iget-object v5, p0, Lcom/vivo/common/widget/BBKTimePicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v4, v5, v4

    invoke-virtual {v3, v4}, Lcom/vivo/common/widget/ScrollNumberPicker;->setScrollItemPositionByRange(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 260
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/vivo/common/widget/BBKTimePicker;->sendAccessibilityEvent(I)V

    .line 262
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mOnTimeChangedListener:Lcom/vivo/common/widget/BBKTimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mOnTimeChangedListener:Lcom/vivo/common/widget/BBKTimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/vivo/common/widget/BBKTimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/vivo/common/widget/BBKTimePicker;II)V

    .line 264
    :cond_0
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iput-object p1, p0, Lcom/vivo/common/widget/BBKTimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 143
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mTempCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private updateAmPmControl()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 250
    iget v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mCurrentHour:I

    const/16 v3, 0xc

    if-ge v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mIsAm:Z

    .line 252
    iget-boolean v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mIsAm:Z

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mAmPmPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    iget-object v1, p0, Lcom/vivo/common/widget/BBKTimePicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/ScrollNumberPicker;->setScrollItemPositionByRange(Ljava/lang/String;)V

    .line 257
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 250
    goto :goto_0

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mAmPmPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    iget-object v2, p0, Lcom/vivo/common/widget/BBKTimePicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/ScrollNumberPicker;->setScrollItemPositionByRange(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateHourControl()V
    .locals 2

    .prologue
    .line 236
    iget v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mCurrentHour:I

    .line 238
    .local v0, "currentHour":I
    iget-boolean v1, p0, Lcom/vivo/common/widget/BBKTimePicker;->mIs24HourView:Z

    if-nez v1, :cond_0

    .line 240
    const/16 v1, 0xc

    if-le v0, v1, :cond_1

    .line 241
    add-int/lit8 v0, v0, -0xc

    .line 246
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vivo/common/widget/BBKTimePicker;->mHourPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {v1, v0}, Lcom/vivo/common/widget/ScrollNumberPicker;->setScrollItemPositionByRange(I)V

    .line 247
    return-void

    .line 242
    :cond_1
    if-nez v0, :cond_0

    .line 243
    const/16 v0, 0xc

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/vivo/common/widget/BBKTimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public getAmPmPicker()Lcom/vivo/common/widget/ScrollNumberPicker;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mAmPmPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    return-object v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mCurrentHour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mCurrentMinute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getHourPicker()Lcom/vivo/common/widget/ScrollNumberPicker;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mHourPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    return-object v0
.end method

.method public getMinutePicker()Lcom/vivo/common/widget/ScrollNumberPicker;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mMinutePicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/BBKTimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 130
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 222
    const/4 v0, 0x1

    .line 223
    .local v0, "flags":I
    iget-boolean v2, p0, Lcom/vivo/common/widget/BBKTimePicker;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 224
    or-int/lit16 v0, v0, 0x80

    .line 228
    :goto_0
    iget-object v2, p0, Lcom/vivo/common/widget/BBKTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 229
    iget-object v2, p0, Lcom/vivo/common/widget/BBKTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 230
    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKTimePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/widget/BBKTimePicker;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    return-void

    .line 226
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 465
    move-object v0, p1

    check-cast v0, Lcom/vivo/common/widget/BBKTimePicker$SavedState;

    .line 466
    .local v0, "ss":Lcom/vivo/common/widget/BBKTimePicker$SavedState;
    invoke-virtual {v0}, Lcom/vivo/common/widget/BBKTimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 467
    invoke-virtual {v0}, Lcom/vivo/common/widget/BBKTimePicker$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vivo/common/widget/BBKTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 468
    invoke-virtual {v0}, Lcom/vivo/common/widget/BBKTimePicker$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vivo/common/widget/BBKTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 469
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 459
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 460
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/vivo/common/widget/BBKTimePicker$SavedState;

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/vivo/common/widget/BBKTimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILcom/vivo/common/widget/BBKTimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    .line 167
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mCurrentHour:I

    .line 169
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKTimePicker;->updateHourControl()V

    .line 170
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKTimePicker;->updateAmPmControl()V

    .line 171
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKTimePicker;->onTimeChanged()V

    .line 172
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 206
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mCurrentMinute:I

    .line 208
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mMinutePicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    iget v1, p0, Lcom/vivo/common/widget/BBKTimePicker;->mCurrentMinute:I

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/ScrollNumberPicker;->setScrollItemPositionByRange(I)V

    .line 209
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKTimePicker;->onTimeChanged()V

    .line 210
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 115
    iput-boolean p1, p0, Lcom/vivo/common/widget/BBKTimePicker;->mIsEnabled:Z

    .line 116
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mMinutePicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {v0, p1}, Lcom/vivo/common/widget/ScrollNumberPicker;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mHourPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {v0, p1}, Lcom/vivo/common/widget/ScrollNumberPicker;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mAmPmPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {v0, p1}, Lcom/vivo/common/widget/ScrollNumberPicker;->setEnabled(Z)V

    .line 119
    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mIs24HourView:Z

    .line 185
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKTimePicker;->configurePickerRanges()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Lcom/vivo/common/widget/BBKTimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Lcom/vivo/common/widget/BBKTimePicker$OnTimeChangedListener;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/vivo/common/widget/BBKTimePicker;->mOnTimeChangedListener:Lcom/vivo/common/widget/BBKTimePicker$OnTimeChangedListener;

    .line 154
    return-void
.end method

.method public setSelectedItemTextColor(I)V
    .locals 1
    .param p1, "selectedItemColor"    # I

    .prologue
    .line 406
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mHourPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {v0, p1}, Lcom/vivo/common/widget/ScrollNumberPicker;->setSelectedItemTextColor(I)V

    .line 407
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mMinutePicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {v0, p1}, Lcom/vivo/common/widget/ScrollNumberPicker;->setSelectedItemTextColor(I)V

    .line 408
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker;->mAmPmPicker:Lcom/vivo/common/widget/ScrollNumberPicker;

    invoke-virtual {v0, p1}, Lcom/vivo/common/widget/ScrollNumberPicker;->setSelectedItemTextColor(I)V

    .line 409
    return-void
.end method

.method public setTimePickerTopBackgroundResource(I)V
    .locals 0
    .param p1, "resid"    # I

    .prologue
    .line 269
    return-void
.end method
