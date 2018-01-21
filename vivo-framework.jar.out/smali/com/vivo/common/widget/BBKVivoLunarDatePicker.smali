.class public Lcom/vivo/common/widget/BBKVivoLunarDatePicker;
.super Landroid/widget/FrameLayout;
.source "BBKVivoLunarDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;,
        Lcom/vivo/common/widget/BBKVivoLunarDatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field public static final MAX_YEAR:I = 0x802

.field public static final MIN_YEAR:I = 0x76d


# instance fields
.field private OldDay:I

.field private OldMonth:I

.field private OldYear:I

.field private final TAG:Ljava/lang/String;

.field public iLunarMonth:[Ljava/lang/String;

.field private mBBKDayPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

.field private mBBKMonthPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

.field private mBBKYearPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

.field private mCurrentDay:I

.field private mCurrentMonth:I

.field private mCurrentYear:I

.field private mEndYear:I

.field private mIsEnabled:Z

.field private mLunar:Lcom/vivo/common/widget/Lunar;

.field private mMonth:Ljava/lang/String;

.field private mOnDateChangedListener:Lcom/vivo/common/widget/BBKVivoLunarDatePicker$OnDateChangedListener;

.field private mRes:Landroid/content/res/Resources;

.field private mStartYear:I

.field private mYear:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v3, 0x76d

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->OldYear:I

    .line 38
    iput v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->OldMonth:I

    .line 39
    iput v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->OldDay:I

    .line 41
    iput v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mStartYear:I

    .line 42
    const/16 v0, 0x802

    iput v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mEndYear:I

    .line 44
    const-string v0, "BBKVivoLunarDatePicker"

    iput-object v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->TAG:Ljava/lang/String;

    .line 49
    iput-boolean v2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mIsEnabled:Z

    .line 51
    iput v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    .line 52
    iput v2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentMonth:I

    .line 53
    iput v2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    .line 54
    iput-object v1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mLunar:Lcom/vivo/common/widget/Lunar;

    .line 55
    iput-object v1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mRes:Landroid/content/res/Resources;

    .line 56
    iput-object v1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mYear:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mMonth:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mRes:Landroid/content/res/Resources;

    .line 88
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mRes:Landroid/content/res/Resources;

    const v1, 0x30e0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mYear:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mRes:Landroid/content/res/Resources;

    const v1, 0x30e0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mMonth:Ljava/lang/String;

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->initBBKDatePick(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method static synthetic access$500(Lcom/vivo/common/widget/BBKVivoLunarDatePicker;II)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/BBKVivoLunarDatePicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->updateBBKDate(II)V

    return-void
.end method

.method private initBBKDatePick(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 387
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 388
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x303001c

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 390
    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 393
    .local v1, "mDensity":F
    const v2, 0x30d0037

    invoke-virtual {p0, v2}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vivo/common/widget/LunarScrollNumberPicker;

    iput-object v2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    .line 398
    iget-object v2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    new-instance v3, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$1;

    invoke-direct {v3, p0}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$1;-><init>(Lcom/vivo/common/widget/BBKVivoLunarDatePicker;)V

    invoke-virtual {v2, v3}, Lcom/vivo/common/widget/LunarScrollNumberPicker;->setOnSelectChangedListener(Lcom/vivo/common/widget/LunarScrollNumberPicker$OnChangedListener;)V

    .line 405
    const v2, 0x30d0036

    invoke-virtual {p0, v2}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vivo/common/widget/LunarScrollNumberPicker;

    iput-object v2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    .line 409
    iget-object v2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    new-instance v3, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$2;

    invoke-direct {v3, p0}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$2;-><init>(Lcom/vivo/common/widget/BBKVivoLunarDatePicker;)V

    invoke-virtual {v2, v3}, Lcom/vivo/common/widget/LunarScrollNumberPicker;->setOnSelectChangedListener(Lcom/vivo/common/widget/LunarScrollNumberPicker$OnChangedListener;)V

    .line 417
    const v2, 0x30d0035

    invoke-virtual {p0, v2}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vivo/common/widget/LunarScrollNumberPicker;

    iput-object v2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    .line 421
    iget-object v2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    new-instance v3, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$3;

    invoke-direct {v3, p0}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$3;-><init>(Lcom/vivo/common/widget/BBKVivoLunarDatePicker;)V

    invoke-virtual {v2, v3}, Lcom/vivo/common/widget/LunarScrollNumberPicker;->setOnSelectChangedListener(Lcom/vivo/common/widget/LunarScrollNumberPicker$OnChangedListener;)V

    .line 427
    return-void
.end method

.method private isNewDate(III)Z
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 169
    iget v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentMonth:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    if-eq v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 301
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mOnDateChangedListener:Lcom/vivo/common/widget/BBKVivoLunarDatePicker$OnDateChangedListener;

    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->getsolarDate()Landroid/text/format/Time;

    move-result-object v0

    .line 303
    .local v0, "GeliDate":Landroid/text/format/Time;
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mOnDateChangedListener:Lcom/vivo/common/widget/BBKVivoLunarDatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->getLunarDate()Lcom/vivo/common/widget/Lunar$LunarDate;

    move-result-object v2

    iget-object v2, v2, Lcom/vivo/common/widget/Lunar$LunarDate;->mDate:Ljava/lang/String;

    iget v3, v0, Landroid/text/format/Time;->weekDay:I

    invoke-interface {v1, p0, v2, v3}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$OnDateChangedListener;->onDateChanged(Lcom/vivo/common/widget/BBKVivoLunarDatePicker;Ljava/lang/String;I)V

    .line 305
    .end local v0    # "GeliDate":Landroid/text/format/Time;
    :cond_0
    return-void
.end method

.method private setDate(III)V
    .locals 12
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/16 v8, 0x76d

    const/16 v11, 0xd

    const/4 v7, 0x1

    const/16 v10, 0xc

    const/4 v9, 0x5

    .line 175
    const/4 v3, 0x0

    .line 176
    .local v3, "mCurrntMonthName":Ljava/lang/String;
    iget-object v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 177
    iget-object v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    iget v6, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentMonth:I

    add-int/lit8 v6, v6, -0x1

    aget-object v3, v5, v6

    .line 179
    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    .line 180
    iget-object v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mRes:Landroid/content/res/Resources;

    const v6, 0x3090026

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    .line 182
    invoke-static {p1}, Lcom/vivo/common/widget/Lunar;->GetLunarLeapMonth(I)I

    move-result v0

    .line 183
    .local v0, "LeapMonth":I
    if-nez p2, :cond_1

    add-int/lit8 p2, v0, 0x1

    .line 185
    :cond_1
    iput p1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    .line 186
    iput p2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentMonth:I

    .line 187
    iput p3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    .line 189
    iget v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    const/16 v6, 0x7f5

    if-le v5, v6, :cond_3

    .line 190
    const/16 v5, 0x802

    iput v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    .line 191
    iput v10, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentMonth:I

    .line 192
    const/16 v5, 0x1e

    iput v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    .line 198
    :cond_2
    :goto_0
    if-eqz v0, :cond_b

    .line 199
    const/16 v2, 0xc

    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_5

    .line 200
    if-le v2, v0, :cond_4

    .line 201
    iget-object v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    iget-object v6, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    add-int/lit8 v7, v2, -0x1

    aget-object v6, v6, v7

    aput-object v6, v5, v2

    .line 199
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 193
    .end local v2    # "i":I
    :cond_3
    iget v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    if-ge v5, v8, :cond_2

    .line 194
    iput v8, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    .line 195
    iput v7, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentMonth:I

    .line 196
    iput v7, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    goto :goto_0

    .line 203
    .restart local v2    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mRes:Landroid/content/res/Resources;

    const v8, 0x30e00f9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    add-int/lit8 v8, v0, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    goto :goto_2

    .line 206
    :cond_5
    iget-object v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    iget-object v6, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    invoke-virtual {v5, v6, v9, v11}, Lcom/vivo/common/widget/LunarScrollNumberPicker;->setRange([Ljava/lang/String;II)V

    .line 210
    .end local v2    # "i":I
    :goto_3
    iget v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->OldYear:I

    const/16 v6, 0x76c

    if-le v5, v6, :cond_7

    iget v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->OldYear:I

    if-eq p1, v5, :cond_7

    .line 212
    iget v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->OldYear:I

    invoke-static {v5}, Lcom/vivo/common/widget/Lunar;->GetLunarLeapMonth(I)I

    move-result v1

    .line 213
    .local v1, "OldLeapMonth":I
    if-nez v1, :cond_c

    if-eqz v0, :cond_c

    .line 215
    iget v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->OldMonth:I

    if-ne v5, p2, :cond_6

    if-le p2, v0, :cond_6

    add-int/lit8 p2, p2, 0x1

    .line 216
    :cond_6
    if-le p2, v11, :cond_7

    const/16 p2, 0xd

    .line 224
    .end local v1    # "OldLeapMonth":I
    :cond_7
    :goto_4
    if-nez v0, :cond_8

    if-le p2, v10, :cond_8

    .line 226
    const/16 p2, 0xc

    .line 228
    :cond_8
    invoke-static {p1, p2}, Lcom/vivo/common/widget/Lunar;->GetLunarMonthDays(II)I

    move-result v4

    .line 229
    .local v4, "monthdays":I
    iget v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    if-le v5, v4, :cond_9

    iget v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    .line 230
    :cond_9
    iget-object v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    iget-object v6, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mLunar:Lcom/vivo/common/widget/Lunar;

    iget-object v6, v6, Lcom/vivo/common/widget/Lunar;->iLunarDay:[Ljava/lang/String;

    invoke-virtual {v5, v6, v9, v4}, Lcom/vivo/common/widget/LunarScrollNumberPicker;->setRange([Ljava/lang/String;II)V

    .line 232
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    iget-object v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_a

    .line 233
    if-eqz v3, :cond_e

    iget-object v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 234
    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentMonth:I

    .line 238
    :cond_a
    return-void

    .line 208
    .end local v2    # "i":I
    .end local v4    # "monthdays":I
    :cond_b
    iget-object v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    iget-object v6, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    invoke-virtual {v5, v6, v9, v10}, Lcom/vivo/common/widget/LunarScrollNumberPicker;->setRange([Ljava/lang/String;II)V

    goto :goto_3

    .line 218
    .restart local v1    # "OldLeapMonth":I
    :cond_c
    if-eqz v1, :cond_7

    if-nez v0, :cond_7

    .line 220
    iget v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->OldMonth:I

    if-ne v5, p2, :cond_d

    if-le p2, v1, :cond_d

    add-int/lit8 p2, p2, -0x1

    .line 221
    :cond_d
    if-gez p2, :cond_7

    const/4 p2, 0x1

    goto :goto_4

    .line 232
    .end local v1    # "OldLeapMonth":I
    .restart local v2    # "i":I
    .restart local v4    # "monthdays":I
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private updateBBKDate(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "cur"    # I

    .prologue
    .line 370
    if-nez p2, :cond_1

    .line 371
    iput p1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    .line 377
    :cond_0
    :goto_0
    iget v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    iget v1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentMonth:I

    iget v2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    invoke-direct {p0, v0, v1, v2}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->setDate(III)V

    .line 378
    iget v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    iput v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->OldYear:I

    .line 379
    iget v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentMonth:I

    iput v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->OldMonth:I

    .line 380
    iget v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    iput v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->OldDay:I

    .line 381
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->updateSpinners()V

    .line 382
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->notifyDateChanged()V

    .line 383
    return-void

    .line 372
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 373
    iput p1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentMonth:I

    goto :goto_0

    .line 374
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 375
    add-int/lit16 v0, p1, 0x76d

    iput v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 4

    .prologue
    .line 290
    iget v1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    invoke-static {v1}, Lcom/vivo/common/widget/Lunar;->GetLunarLeapMonth(I)I

    move-result v0

    .line 291
    .local v0, "LeapMonth":I
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    iget-object v2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mLunar:Lcom/vivo/common/widget/Lunar;

    iget-object v2, v2, Lcom/vivo/common/widget/Lunar;->iLunarDay:[Ljava/lang/String;

    iget v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/vivo/common/widget/LunarScrollNumberPicker;->setScrollItemPositionByRange(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    iget-object v2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mLunar:Lcom/vivo/common/widget/Lunar;

    iget v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    invoke-virtual {v2, v3}, Lcom/vivo/common/widget/Lunar;->getChineseLunarYear(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/common/widget/LunarScrollNumberPicker;->setScrollItemPositionByRange(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    iget-object v2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    iget v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentMonth:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/vivo/common/widget/LunarScrollNumberPicker;->setScrollItemPositionByRange(Ljava/lang/String;)V

    .line 295
    return-void
.end method


# virtual methods
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
    .line 128
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 129
    return-void
.end method

.method public getDayPicker()Lcom/vivo/common/widget/LunarScrollNumberPicker;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    return-object v0
.end method

.method public getLunarDate()Lcom/vivo/common/widget/Lunar$LunarDate;
    .locals 8

    .prologue
    .line 430
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mLunar:Lcom/vivo/common/widget/Lunar;

    iget v1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    iget v2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentMonth:I

    iget v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    iget v4, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    invoke-static {v4}, Lcom/vivo/common/widget/Lunar;->GetLunarLeapMonth(I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mLunar:Lcom/vivo/common/widget/Lunar;

    iget v7, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    invoke-virtual {v6, v7}, Lcom/vivo/common/widget/Lunar;->getChineseLunarYear(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mYear:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    iget v7, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentMonth:I

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mMonth:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mLunar:Lcom/vivo/common/widget/Lunar;

    iget-object v6, v6, Lcom/vivo/common/widget/Lunar;->iLunarDay:[Ljava/lang/String;

    iget v7, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/vivo/common/widget/Lunar;->getLunarDate(IIIILjava/lang/String;)Lcom/vivo/common/widget/Lunar$LunarDate;

    move-result-object v0

    return-object v0
.end method

.method public getMonthPicker()Lcom/vivo/common/widget/LunarScrollNumberPicker;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    return-object v0
.end method

.method public getYearPicker()Lcom/vivo/common/widget/LunarScrollNumberPicker;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    return-object v0
.end method

.method public getsolarDate()Landroid/text/format/Time;
    .locals 3

    .prologue
    .line 435
    iget v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    iget v1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentMonth:I

    iget v2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    invoke-static {v0, v1, v2}, Lcom/vivo/common/widget/Lunar;->CalendarLundarToSolar(III)Landroid/text/format/Time;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/vivo/common/widget/Lunar$LunarDate;Lcom/vivo/common/widget/BBKVivoLunarDatePicker$OnDateChangedListener;Lcom/vivo/common/widget/Lunar;)V
    .locals 5
    .param p1, "lunarDate"    # Lcom/vivo/common/widget/Lunar$LunarDate;
    .param p2, "onDateChangedListener"    # Lcom/vivo/common/widget/BBKVivoLunarDatePicker$OnDateChangedListener;
    .param p3, "lunar"    # Lcom/vivo/common/widget/Lunar;

    .prologue
    .line 159
    iput-object p3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mLunar:Lcom/vivo/common/widget/Lunar;

    .line 161
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mLunar:Lcom/vivo/common/widget/Lunar;

    iget v2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mStartYear:I

    iget v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mEndYear:I

    invoke-virtual {v1, v2, v3}, Lcom/vivo/common/widget/Lunar;->getChineseLunarYear(II)[Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "LunarYear":[Ljava/lang/String;
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    const/4 v2, 0x5

    iget v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mEndYear:I

    iget v4, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mStartYear:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/vivo/common/widget/LunarScrollNumberPicker;->setRange([Ljava/lang/String;II)V

    .line 163
    iget v1, p1, Lcom/vivo/common/widget/Lunar$LunarDate;->year:I

    iget v2, p1, Lcom/vivo/common/widget/Lunar$LunarDate;->monthOfYear:I

    iget v3, p1, Lcom/vivo/common/widget/Lunar$LunarDate;->dayOfMonth:I

    invoke-direct {p0, v1, v2, v3}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->setDate(III)V

    .line 164
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->updateSpinners()V

    .line 165
    iput-object p2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mOnDateChangedListener:Lcom/vivo/common/widget/BBKVivoLunarDatePicker$OnDateChangedListener;

    .line 166
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 139
    move-object v0, p1

    check-cast v0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;

    .line 140
    .local v0, "ss":Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;
    invoke-virtual {v0}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 142
    # getter for: Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;->mYear:I
    invoke-static {v0}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;->access$100(Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;)I

    move-result v1

    # getter for: Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;->mMonth:I
    invoke-static {v0}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;->access$200(Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;)I

    move-result v2

    # getter for: Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;->mDay:I
    invoke-static {v0}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;->access$300(Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->setDate(III)V

    .line 143
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->updateSpinners()V

    .line 144
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 133
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 134
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;

    iget v2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    iget v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentMonth:I

    iget v4, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/vivo/common/widget/BBKVivoLunarDatePicker$1;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 99
    iput-boolean p1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mIsEnabled:Z

    goto :goto_0
.end method

.method public setSelectedItemTextColor(I)V
    .locals 1
    .param p1, "selectedItemColor"    # I

    .prologue
    .line 450
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    invoke-virtual {v0, p1}, Lcom/vivo/common/widget/LunarScrollNumberPicker;->setSelectedItemTextColor(I)V

    .line 451
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    invoke-virtual {v0, p1}, Lcom/vivo/common/widget/LunarScrollNumberPicker;->setSelectedItemTextColor(I)V

    .line 452
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    invoke-virtual {v0, p1}, Lcom/vivo/common/widget/LunarScrollNumberPicker;->setSelectedItemTextColor(I)V

    .line 453
    return-void
.end method

.method public setYearDisableRange(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 366
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/vivo/common/widget/LunarScrollNumberPicker;->setDisableRang(II)V

    .line 367
    return-void
.end method

.method public updateDate(Lcom/vivo/common/widget/Lunar$LunarDate;)V
    .locals 3
    .param p1, "lunarDate"    # Lcom/vivo/common/widget/Lunar$LunarDate;

    .prologue
    .line 116
    iget v0, p1, Lcom/vivo/common/widget/Lunar$LunarDate;->year:I

    iget v1, p1, Lcom/vivo/common/widget/Lunar$LunarDate;->monthOfYear:I

    iget v2, p1, Lcom/vivo/common/widget/Lunar$LunarDate;->dayOfMonth:I

    invoke-direct {p0, v0, v1, v2}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->notifyDateChanged()V

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    iget v0, p1, Lcom/vivo/common/widget/Lunar$LunarDate;->year:I

    iget v1, p1, Lcom/vivo/common/widget/Lunar$LunarDate;->monthOfYear:I

    iget v2, p1, Lcom/vivo/common/widget/Lunar$LunarDate;->dayOfMonth:I

    invoke-direct {p0, v0, v1, v2}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->setDate(III)V

    .line 121
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->updateSpinners()V

    .line 122
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->notifyDateChanged()V

    goto :goto_0
.end method

.method public updateDateAndSpinners(IIIIZ)V
    .locals 9
    .param p1, "LunarYear"    # I
    .param p2, "LunarMonth"    # I
    .param p3, "LunarDay"    # I
    .param p4, "LunarLeapMonth"    # I
    .param p5, "AddMonth"    # Z

    .prologue
    const/16 v8, 0x76d

    const/16 v6, 0xc

    const/4 v5, 0x1

    const/4 v7, 0x5

    .line 241
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->isNewDate(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 288
    :goto_0
    return-void

    .line 243
    :cond_0
    if-eqz p5, :cond_1

    .line 244
    add-int/lit8 p2, p2, 0x1

    .line 246
    :cond_1
    if-nez p2, :cond_2

    .line 247
    add-int/lit8 p2, p4, 0x1

    .line 249
    :cond_2
    invoke-static {p1}, Lcom/vivo/common/widget/Lunar;->GetLunarLeapMonth(I)I

    move-result v0

    .line 250
    .local v0, "LeapMonth":I
    iput p1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    .line 251
    iput p2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentMonth:I

    .line 252
    iput p3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    .line 254
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    .line 255
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mRes:Landroid/content/res/Resources;

    const v4, 0x3090026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    .line 257
    iget v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    const/16 v4, 0x7f5

    if-le v3, v4, :cond_4

    .line 258
    const/16 v3, 0x802

    iput v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    .line 259
    iput v6, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentMonth:I

    .line 260
    const/16 v3, 0x1e

    iput v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    .line 267
    :cond_3
    :goto_1
    if-eqz v0, :cond_8

    .line 268
    const/16 v1, 0xc

    .local v1, "i":I
    :goto_2
    if-lt v1, v0, :cond_6

    .line 269
    if-le v1, v0, :cond_5

    .line 270
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    iget-object v4, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    aput-object v4, v3, v1

    .line 268
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 261
    .end local v1    # "i":I
    :cond_4
    iget v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    if-ge v3, v8, :cond_3

    .line 262
    iput v8, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    .line 263
    iput v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentMonth:I

    .line 264
    iput v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    goto :goto_1

    .line 272
    .restart local v1    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mRes:Landroid/content/res/Resources;

    const v6, 0x30e00f9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    add-int/lit8 v6, v0, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_3

    .line 275
    :cond_6
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    iget-object v4, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    const/16 v5, 0xd

    invoke-virtual {v3, v4, v7, v5}, Lcom/vivo/common/widget/LunarScrollNumberPicker;->setRange([Ljava/lang/String;II)V

    .line 280
    .end local v1    # "i":I
    :goto_4
    invoke-static {p1, p2}, Lcom/vivo/common/widget/Lunar;->GetLunarMonthDays(II)I

    move-result v2

    .line 281
    .local v2, "monthdays":I
    iget v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    if-le v3, v2, :cond_7

    iget v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    .line 282
    :cond_7
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKDayPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    iget-object v4, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mLunar:Lcom/vivo/common/widget/Lunar;

    iget-object v4, v4, Lcom/vivo/common/widget/Lunar;->iLunarDay:[Ljava/lang/String;

    invoke-virtual {v3, v4, v7, v2}, Lcom/vivo/common/widget/LunarScrollNumberPicker;->setRange([Ljava/lang/String;II)V

    .line 284
    iget v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    iput v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->OldYear:I

    .line 285
    iget v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentMonth:I

    iput v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->OldMonth:I

    .line 286
    iget v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentDay:I

    iput v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->OldDay:I

    .line 287
    invoke-direct {p0}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->updateSpinners()V

    goto/16 :goto_0

    .line 277
    .end local v2    # "monthdays":I
    :cond_8
    iget-object v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKMonthPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    iget-object v4, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->iLunarMonth:[Ljava/lang/String;

    invoke-virtual {v3, v4, v7, v6}, Lcom/vivo/common/widget/LunarScrollNumberPicker;->setRange([Ljava/lang/String;II)V

    goto :goto_4
.end method

.method public updateYearRange(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 353
    const/16 v1, 0x76d

    if-lt p1, v1, :cond_0

    const/16 v1, 0x802

    if-gt p2, v1, :cond_0

    if-lt p1, p2, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iput p1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mStartYear:I

    .line 357
    iput p2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mEndYear:I

    .line 359
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mLunar:Lcom/vivo/common/widget/Lunar;

    invoke-virtual {v1, p1, p2}, Lcom/vivo/common/widget/Lunar;->getChineseLunarYear(II)[Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "LunarYear":[Ljava/lang/String;
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    const/4 v2, 0x5

    sub-int v3, p2, p1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/vivo/common/widget/LunarScrollNumberPicker;->setRange([Ljava/lang/String;II)V

    .line 362
    iget-object v1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mBBKYearPicker:Lcom/vivo/common/widget/LunarScrollNumberPicker;

    iget-object v2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mLunar:Lcom/vivo/common/widget/Lunar;

    iget v3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->mCurrentYear:I

    invoke-virtual {v2, v3}, Lcom/vivo/common/widget/Lunar;->getChineseLunarYear(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/common/widget/LunarScrollNumberPicker;->setScrollItemPositionByRange(Ljava/lang/String;)V

    goto :goto_0
.end method
