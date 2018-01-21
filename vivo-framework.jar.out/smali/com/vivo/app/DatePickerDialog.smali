.class public Lcom/vivo/app/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/app/DatePickerDialog$DateSetCallBack;
    }
.end annotation


# static fields
.field public static final MAX_YEAR:I = 0x802

.field public static final MIN_YEAR:I = 0x76d


# instance fields
.field private final DATE:Ljava/lang/String;

.field private final DAY:Ljava/lang/String;

.field private final Green:I

.field private IsLunarCalendar:Z

.field private final LEAP_MONTH:Ljava/lang/String;

.field private final MONTH:Ljava/lang/String;

.field private final White:I

.field private final YEAR:Ljava/lang/String;

.field private birthMonth:Ljava/lang/String;

.field private birthYear:Ljava/lang/String;

.field private mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Lcom/vivo/app/DatePickerDialog$DateSetCallBack;

.field private mDateChangedGeli:Lcom/vivo/common/widget/BBKVivoGeliDatePicker$OnDateChangedListener;

.field private mDateChangedLunar:Lcom/vivo/common/widget/BBKVivoLunarDatePicker$OnDateChangedListener;

.field private final mDatePicker:Lcom/vivo/common/widget/BBKVivoGeliDatePicker;

.field private mExtendContent:Landroid/widget/FrameLayout;

.field private mInitial_Geli_Day:I

.field private mInitial_Geli_Month:I

.field private mInitial_Geli_Year:I

.field private mLunar:Lcom/vivo/common/widget/Lunar;

.field private mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRes:Landroid/content/res/Resources;

.field private mShowLunar:Z

.field private mTabSelector:Lcom/vivo/common/TabSelector;

.field private mTitleDateFormat:Ljava/text/DateFormat;

.field private mView:Landroid/view/View;

.field private final mVivoDatePicker:Lcom/vivo/common/widget/BBKVivoLunarDatePicker;

.field private mWeekWord:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWeekWordRes:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vivo/app/DatePickerDialog$DateSetCallBack;III)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/vivo/app/DatePickerDialog$DateSetCallBack;
    .param p3, "year"    # I
    .param p4, "month"    # I
    .param p5, "day"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 46
    const-string v5, "year"

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->YEAR:Ljava/lang/String;

    .line 47
    const-string v5, "month"

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->MONTH:Ljava/lang/String;

    .line 48
    const-string v5, "day"

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->DAY:Ljava/lang/String;

    .line 49
    const-string v5, "leapmonth"

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->LEAP_MONTH:Ljava/lang/String;

    .line 50
    const-string v5, "date"

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->DATE:Ljava/lang/String;

    .line 52
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mWeekWordRes:[Ljava/lang/String;

    .line 54
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mWeekWord:Ljava/util/HashMap;

    .line 58
    const-string v5, "#ffff5a00"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/vivo/app/DatePickerDialog;->Green:I

    .line 59
    const-string v5, "#ffffffff"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/vivo/app/DatePickerDialog;->White:I

    .line 63
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 64
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    .line 65
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mLunar:Lcom/vivo/common/widget/Lunar;

    .line 66
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    .line 67
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mRes:Landroid/content/res/Resources;

    .line 68
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mView:Landroid/view/View;

    .line 69
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vivo/app/DatePickerDialog;->IsLunarCalendar:Z

    .line 74
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vivo/app/DatePickerDialog;->mShowLunar:Z

    .line 76
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mTabSelector:Lcom/vivo/common/TabSelector;

    .line 78
    new-instance v5, Lcom/vivo/app/DatePickerDialog$1;

    invoke-direct {v5, p0}, Lcom/vivo/app/DatePickerDialog$1;-><init>(Lcom/vivo/app/DatePickerDialog;)V

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 97
    new-instance v5, Lcom/vivo/app/DatePickerDialog$2;

    invoke-direct {v5, p0}, Lcom/vivo/app/DatePickerDialog$2;-><init>(Lcom/vivo/app/DatePickerDialog;)V

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mDateChangedLunar:Lcom/vivo/common/widget/BBKVivoLunarDatePicker$OnDateChangedListener;

    .line 112
    new-instance v5, Lcom/vivo/app/DatePickerDialog$3;

    invoke-direct {v5, p0}, Lcom/vivo/app/DatePickerDialog$3;-><init>(Lcom/vivo/app/DatePickerDialog;)V

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mDateChangedGeli:Lcom/vivo/common/widget/BBKVivoGeliDatePicker$OnDateChangedListener;

    .line 128
    const/4 v2, 0x0

    .line 130
    .local v2, "isLunar":Z
    iput-boolean v2, p0, Lcom/vivo/app/DatePickerDialog;->IsLunarCalendar:Z

    .line 132
    const/16 v5, 0x802

    const/16 v6, 0x76d

    invoke-static {p3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 133
    const/16 v5, 0x76d

    if-ne p3, v5, :cond_0

    .line 134
    if-nez p4, :cond_1

    .line 135
    const/4 p4, 0x1

    .line 136
    const/16 p5, 0x13

    .line 142
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/FtBuild;->isOverSeas()Z

    move-result v5

    if-nez v5, :cond_2

    .line 143
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v5

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    .line 148
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 150
    new-instance v5, Lcom/vivo/common/widget/Lunar;

    invoke-direct {v5, p1}, Lcom/vivo/common/widget/Lunar;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mLunar:Lcom/vivo/common/widget/Lunar;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mRes:Landroid/content/res/Resources;

    .line 153
    iget-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mRes:Landroid/content/res/Resources;

    const v6, 0x30e00fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->birthYear:Ljava/lang/String;

    .line 154
    iget-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mRes:Landroid/content/res/Resources;

    const v6, 0x30e00ff

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->birthMonth:Ljava/lang/String;

    .line 156
    iget-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mRes:Landroid/content/res/Resources;

    const v6, 0x3090028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mWeekWordRes:[Ljava/lang/String;

    .line 157
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mWeekWord:Ljava/util/HashMap;

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v5, 0x7

    if-ge v0, v5, :cond_3

    .line 160
    iget-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mWeekWord:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/app/DatePickerDialog;->mWeekWordRes:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 137
    .end local v0    # "i":I
    :cond_1
    const/4 v5, 0x1

    if-ne p4, v5, :cond_0

    const/16 v5, 0x13

    if-ge p5, v5, :cond_0

    .line 138
    const/16 p5, 0x13

    goto :goto_0

    .line 145
    :cond_2
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-static {p1}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->getDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    goto :goto_1

    .line 162
    .restart local v0    # "i":I
    :cond_3
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mWeekWordRes:[Ljava/lang/String;

    .line 164
    iget-boolean v5, p0, Lcom/vivo/app/DatePickerDialog;->IsLunarCalendar:Z

    if-nez v5, :cond_4

    .line 165
    iput p3, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Year:I

    .line 166
    iput p4, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I

    .line 167
    iput p5, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I

    .line 169
    iget-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mLunar:Lcom/vivo/common/widget/Lunar;

    invoke-virtual {v5, p3, p4, p5}, Lcom/vivo/common/widget/Lunar;->CalendarSolarToLundar(III)Lcom/vivo/common/widget/Lunar$LunarDate;

    move-result-object v5

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    .line 181
    :goto_3
    iput-object p2, p0, Lcom/vivo/app/DatePickerDialog;->mCallBack:Lcom/vivo/app/DatePickerDialog$DateSetCallBack;

    .line 183
    iget v5, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Year:I

    iget v6, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I

    iget v7, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I

    invoke-direct {p0, v5, v6, v7}, Lcom/vivo/app/DatePickerDialog;->updateTitle(III)V

    .line 185
    move-object v4, p1

    .line 187
    .local v4, "themeContext":Landroid/content/Context;
    const/4 v5, -0x1

    const v6, 0x30e00f5

    invoke-virtual {v4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/app/DatePickerDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v6, v7}, Lcom/vivo/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 189
    const/4 v6, -0x2

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v5, 0x0

    check-cast v5, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v7, v5}, Lcom/vivo/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 192
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/vivo/app/DatePickerDialog;->setIcon(I)V

    .line 194
    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 195
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x303001d

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mView:Landroid/view/View;

    .line 196
    iget-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/vivo/app/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 198
    iget-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mView:Landroid/view/View;

    const v6, 0x30d0038

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mVivoDatePicker:Lcom/vivo/common/widget/BBKVivoLunarDatePicker;

    .line 200
    iget-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mView:Landroid/view/View;

    const v6, 0x30d004a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKVivoGeliDatePicker;

    .line 201
    iget-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKVivoGeliDatePicker;

    const/16 v6, 0x76d

    const/16 v7, 0x802

    invoke-virtual {v5, v6, v7}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->updateYearRange(II)V

    .line 202
    iget-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKVivoGeliDatePicker;

    iget v6, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Year:I

    iget v7, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I

    iget v8, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I

    iget-object v9, p0, Lcom/vivo/app/DatePickerDialog;->mDateChangedGeli:Lcom/vivo/common/widget/BBKVivoGeliDatePicker$OnDateChangedListener;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->init(IIILcom/vivo/common/widget/BBKVivoGeliDatePicker$OnDateChangedListener;)V

    .line 204
    iget-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mVivoDatePicker:Lcom/vivo/common/widget/BBKVivoLunarDatePicker;

    iget-object v6, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    iget-object v7, p0, Lcom/vivo/app/DatePickerDialog;->mDateChangedLunar:Lcom/vivo/common/widget/BBKVivoLunarDatePicker$OnDateChangedListener;

    iget-object v8, p0, Lcom/vivo/app/DatePickerDialog;->mLunar:Lcom/vivo/common/widget/Lunar;

    invoke-virtual {v5, v6, v7, v8}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->init(Lcom/vivo/common/widget/Lunar$LunarDate;Lcom/vivo/common/widget/BBKVivoLunarDatePicker$OnDateChangedListener;Lcom/vivo/common/widget/Lunar;)V

    .line 206
    iget-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mView:Landroid/view/View;

    const v6, 0x30d004b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mExtendContent:Landroid/widget/FrameLayout;

    .line 207
    iget-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mView:Landroid/view/View;

    const v6, 0x30d0048

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vivo/common/TabSelector;

    iput-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mTabSelector:Lcom/vivo/common/TabSelector;

    .line 209
    iget-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mTabSelector:Lcom/vivo/common/TabSelector;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/vivo/app/DatePickerDialog;->mRes:Landroid/content/res/Resources;

    const v8, 0x30e00fb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/vivo/common/TabSelector;->setTabString(ILjava/lang/String;)V

    .line 210
    iget-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mTabSelector:Lcom/vivo/common/TabSelector;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/vivo/app/DatePickerDialog;->mRes:Landroid/content/res/Resources;

    const v8, 0x30e00fa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/vivo/common/TabSelector;->setTabString(ILjava/lang/String;)V

    .line 212
    iget-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mTabSelector:Lcom/vivo/common/TabSelector;

    const/4 v6, 0x0

    new-instance v7, Lcom/vivo/app/DatePickerDialog$4;

    invoke-direct {v7, p0}, Lcom/vivo/app/DatePickerDialog$4;-><init>(Lcom/vivo/app/DatePickerDialog;)V

    invoke-virtual {v5, v6, v7}, Lcom/vivo/common/TabSelector;->setTabOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 226
    iget-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mTabSelector:Lcom/vivo/common/TabSelector;

    const/4 v6, 0x2

    new-instance v7, Lcom/vivo/app/DatePickerDialog$5;

    invoke-direct {v7, p0}, Lcom/vivo/app/DatePickerDialog$5;-><init>(Lcom/vivo/app/DatePickerDialog;)V

    invoke-virtual {v5, v6, v7}, Lcom/vivo/common/TabSelector;->setTabOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 232
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/vivo/app/DatePickerDialog;->showLunar(Z)V

    .line 233
    return-void

    .line 171
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "themeContext":Landroid/content/Context;
    :cond_4
    iget-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    iput p3, v5, Lcom/vivo/common/widget/Lunar$LunarDate;->year:I

    .line 172
    iget-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    iput p4, v5, Lcom/vivo/common/widget/Lunar$LunarDate;->monthOfYear:I

    .line 173
    iget-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    iput p5, v5, Lcom/vivo/common/widget/Lunar$LunarDate;->dayOfMonth:I

    .line 175
    iget-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mLunar:Lcom/vivo/common/widget/Lunar;

    invoke-static {p3, p4, p5}, Lcom/vivo/common/widget/Lunar;->CalendarLundarToSolar(III)Landroid/text/format/Time;

    move-result-object v3

    .line 176
    .local v3, "t":Landroid/text/format/Time;
    iget v5, v3, Landroid/text/format/Time;->year:I

    iput v5, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Year:I

    .line 177
    iget v5, v3, Landroid/text/format/Time;->month:I

    iput v5, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I

    .line 178
    iget v5, v3, Landroid/text/format/Time;->monthDay:I

    iput v5, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I

    goto/16 :goto_3
.end method

.method private AddorNotMonthValue(Lcom/vivo/common/widget/Lunar$LunarDate;)Z
    .locals 10
    .param p1, "lunarDate"    # Lcom/vivo/common/widget/Lunar$LunarDate;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 353
    iget v7, p1, Lcom/vivo/common/widget/Lunar$LunarDate;->LeapMonth:I

    if-eqz v7, :cond_0

    .line 354
    iget-object v7, p0, Lcom/vivo/app/DatePickerDialog;->mLunar:Lcom/vivo/common/widget/Lunar;

    iget v7, p1, Lcom/vivo/common/widget/Lunar$LunarDate;->year:I

    iget v8, p1, Lcom/vivo/common/widget/Lunar$LunarDate;->LeapMonth:I

    add-int/lit8 v8, v8, 0x2

    invoke-static {v7, v8, v5}, Lcom/vivo/common/widget/Lunar;->CalendarLundarToSolar(III)Landroid/text/format/Time;

    move-result-object v0

    .line 356
    .local v0, "Geli_LunarLeapMonth_Date":Landroid/text/format/Time;
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 357
    .local v1, "LastDayTime":Landroid/text/format/Time;
    const/16 v7, 0x1f

    const/16 v8, 0xb

    iget v9, p1, Lcom/vivo/common/widget/Lunar$LunarDate;->year:I

    invoke-virtual {v1, v7, v8, v9}, Landroid/text/format/Time;->set(III)V

    .line 359
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 360
    .local v4, "NowTime":Landroid/text/format/Time;
    iget v7, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I

    iget v8, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I

    iget v9, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Year:I

    invoke-virtual {v4, v7, v8, v9}, Landroid/text/format/Time;->set(III)V

    .line 363
    invoke-virtual {v4, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 365
    .local v2, "NowDateTime":J
    invoke-virtual {v1, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    cmp-long v7, v2, v8

    if-gtz v7, :cond_0

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    cmp-long v7, v2, v8

    if-ltz v7, :cond_0

    .line 371
    .end local v0    # "Geli_LunarLeapMonth_Date":Landroid/text/format/Time;
    .end local v1    # "LastDayTime":Landroid/text/format/Time;
    .end local v2    # "NowDateTime":J
    .end local v4    # "NowTime":Landroid/text/format/Time;
    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/vivo/app/DatePickerDialog;)Lcom/vivo/app/DatePickerDialog$DateSetCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/app/DatePickerDialog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mCallBack:Lcom/vivo/app/DatePickerDialog$DateSetCallBack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/app/DatePickerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/app/DatePickerDialog;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/vivo/app/DatePickerDialog;->IsLunarCalendar:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/vivo/app/DatePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/app/DatePickerDialog;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/vivo/app/DatePickerDialog;->lunarSelect()V

    return-void
.end method

.method static synthetic access$102(Lcom/vivo/app/DatePickerDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/app/DatePickerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/vivo/app/DatePickerDialog;->IsLunarCalendar:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vivo/app/DatePickerDialog;)Lcom/vivo/common/widget/BBKVivoLunarDatePicker;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/app/DatePickerDialog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mVivoDatePicker:Lcom/vivo/common/widget/BBKVivoLunarDatePicker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/app/DatePickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/app/DatePickerDialog;

    .prologue
    .line 42
    iget v0, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Year:I

    return v0
.end method

.method static synthetic access$302(Lcom/vivo/app/DatePickerDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/app/DatePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Year:I

    return p1
.end method

.method static synthetic access$400(Lcom/vivo/app/DatePickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/app/DatePickerDialog;

    .prologue
    .line 42
    iget v0, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I

    return v0
.end method

.method static synthetic access$402(Lcom/vivo/app/DatePickerDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/app/DatePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I

    return p1
.end method

.method static synthetic access$500(Lcom/vivo/app/DatePickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/app/DatePickerDialog;

    .prologue
    .line 42
    iget v0, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I

    return v0
.end method

.method static synthetic access$502(Lcom/vivo/app/DatePickerDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/app/DatePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I

    return p1
.end method

.method static synthetic access$600(Lcom/vivo/app/DatePickerDialog;)Lcom/vivo/common/widget/BBKVivoGeliDatePicker;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/app/DatePickerDialog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKVivoGeliDatePicker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vivo/app/DatePickerDialog;)Lcom/vivo/common/widget/Lunar;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/app/DatePickerDialog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mLunar:Lcom/vivo/common/widget/Lunar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vivo/app/DatePickerDialog;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/app/DatePickerDialog;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/vivo/app/DatePickerDialog;->updateTitle(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/vivo/app/DatePickerDialog;III)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/app/DatePickerDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/app/DatePickerDialog;->updateTitle(III)V

    return-void
.end method

.method private lunarSelect()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v3, 0x13

    const/4 v2, 0x1

    .line 236
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKVivoGeliDatePicker;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mVivoDatePicker:Lcom/vivo/common/widget/BBKVivoLunarDatePicker;

    invoke-virtual {v0, v6}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->setVisibility(I)V

    .line 238
    iput-boolean v2, p0, Lcom/vivo/app/DatePickerDialog;->IsLunarCalendar:Z

    .line 240
    iget v0, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Year:I

    const/16 v1, 0x76d

    if-ne v0, v1, :cond_0

    .line 242
    iget v0, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I

    if-nez v0, :cond_1

    .line 244
    iput v2, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I

    .line 245
    iput v3, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I

    .line 252
    :cond_0
    :goto_0
    const-string v0, "dialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lunarbutton111----------------------->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Year:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mLunar:Lcom/vivo/common/widget/Lunar;

    iget v1, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Year:I

    iget v2, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I

    iget v3, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/common/widget/Lunar;->CalendarSolarToLundar(III)Lcom/vivo/common/widget/Lunar$LunarDate;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    .line 257
    const-string v0, "dialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lunarbutton222----------------------->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    iget-object v2, v2, Lcom/vivo/common/widget/Lunar$LunarDate;->mDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    iget v2, v2, Lcom/vivo/common/widget/Lunar$LunarDate;->year:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    iget v2, v2, Lcom/vivo/common/widget/Lunar$LunarDate;->monthOfYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    iget v2, v2, Lcom/vivo/common/widget/Lunar$LunarDate;->dayOfMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    invoke-direct {p0, v2}, Lcom/vivo/app/DatePickerDialog;->AddorNotMonthValue(Lcom/vivo/common/widget/Lunar$LunarDate;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  LeapMonth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    iget v2, v2, Lcom/vivo/common/widget/Lunar$LunarDate;->LeapMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mVivoDatePicker:Lcom/vivo/common/widget/BBKVivoLunarDatePicker;

    iget-object v1, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    iget v1, v1, Lcom/vivo/common/widget/Lunar$LunarDate;->year:I

    iget-object v2, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    iget v2, v2, Lcom/vivo/common/widget/Lunar$LunarDate;->monthOfYear:I

    iget-object v3, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    iget v3, v3, Lcom/vivo/common/widget/Lunar$LunarDate;->dayOfMonth:I

    iget-object v4, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    iget v4, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->LeapMonth:I

    iget-object v5, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    invoke-direct {p0, v5}, Lcom/vivo/app/DatePickerDialog;->AddorNotMonthValue(Lcom/vivo/common/widget/Lunar$LunarDate;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->updateDateAndSpinners(IIIIZ)V

    .line 266
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    iget-object v0, v0, Lcom/vivo/common/widget/Lunar$LunarDate;->mDate:Ljava/lang/String;

    invoke-direct {p0, v0, v6}, Lcom/vivo/app/DatePickerDialog;->updateTitle(Ljava/lang/String;I)V

    .line 267
    return-void

    .line 246
    :cond_1
    iget v0, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I

    if-ge v0, v3, :cond_0

    .line 248
    iput v3, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I

    goto/16 :goto_0
.end method

.method private setYearDisableRange(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/vivo/app/DatePickerDialog;->IsLunarCalendar:Z

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mVivoDatePicker:Lcom/vivo/common/widget/BBKVivoLunarDatePicker;

    invoke-virtual {v0, p1, p2}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->setYearDisableRange(II)V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKVivoGeliDatePicker;

    invoke-virtual {v0, p1, p2}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->setYearDisableRange(II)V

    goto :goto_0
.end method

.method private updateDate(III)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/vivo/app/DatePickerDialog;->IsLunarCalendar:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mLunar:Lcom/vivo/common/widget/Lunar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vivo/common/widget/Lunar;->CalendarSolarToLundar(III)Lcom/vivo/common/widget/Lunar$LunarDate;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    .line 303
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mVivoDatePicker:Lcom/vivo/common/widget/BBKVivoLunarDatePicker;

    iget-object v1, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->updateDate(Lcom/vivo/common/widget/Lunar$LunarDate;)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKVivoGeliDatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->updateDate(III)V

    goto :goto_0
.end method

.method private updateTitle(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v3, 0x1

    .line 273
    iget-object v1, p0, Lcom/vivo/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 274
    iget-object v1, p0, Lcom/vivo/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 275
    iget-object v1, p0, Lcom/vivo/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 277
    iget-object v1, p0, Lcom/vivo/app/DatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/vivo/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "titleDate":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vivo/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->isThaiCalendar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/vivo/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x21f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 285
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vivo/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 286
    return-void
.end method

.method private updateTitle(Ljava/lang/String;I)V
    .locals 3
    .param p1, "LunarDate"    # Ljava/lang/String;
    .param p2, "WeekDay"    # I

    .prologue
    .line 289
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "LunarYear":Ljava/lang/String;
    const-string v0, "Y"

    .line 292
    iget-object v1, p0, Lcom/vivo/app/DatePickerDialog;->birthYear:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 293
    const-string v0, "M"

    .line 294
    iget-object v1, p0, Lcom/vivo/app/DatePickerDialog;->birthMonth:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 296
    invoke-virtual {p0, p1}, Lcom/vivo/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 297
    return-void
.end method

.method private updateYearRange(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/vivo/app/DatePickerDialog;->IsLunarCalendar:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mVivoDatePicker:Lcom/vivo/common/widget/BBKVivoLunarDatePicker;

    invoke-virtual {v0, p1, p2}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->updateYearRange(II)V

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKVivoGeliDatePicker;

    invoke-virtual {v0, p1, p2}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->updateYearRange(II)V

    goto :goto_0
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 321
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 322
    const-string v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Year:I

    .line 323
    const-string v0, "month"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I

    .line 324
    const-string v0, "day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I

    .line 326
    iget-boolean v0, p0, Lcom/vivo/app/DatePickerDialog;->IsLunarCalendar:Z

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mLunar:Lcom/vivo/common/widget/Lunar;

    iget v1, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Year:I

    iget v2, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I

    iget v3, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/common/widget/Lunar;->CalendarSolarToLundar(III)Lcom/vivo/common/widget/Lunar$LunarDate;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    .line 329
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mVivoDatePicker:Lcom/vivo/common/widget/BBKVivoLunarDatePicker;

    iget-object v1, p0, Lcom/vivo/app/DatePickerDialog;->mLunarDate:Lcom/vivo/common/widget/Lunar$LunarDate;

    iget-object v2, p0, Lcom/vivo/app/DatePickerDialog;->mDateChangedLunar:Lcom/vivo/common/widget/BBKVivoLunarDatePicker$OnDateChangedListener;

    iget-object v3, p0, Lcom/vivo/app/DatePickerDialog;->mLunar:Lcom/vivo/common/widget/Lunar;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->init(Lcom/vivo/common/widget/Lunar$LunarDate;Lcom/vivo/common/widget/BBKVivoLunarDatePicker$OnDateChangedListener;Lcom/vivo/common/widget/Lunar;)V

    .line 334
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKVivoGeliDatePicker;

    iget v1, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Year:I

    iget v2, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I

    iget v3, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I

    iget-object v4, p0, Lcom/vivo/app/DatePickerDialog;->mDateChangedGeli:Lcom/vivo/common/widget/BBKVivoGeliDatePicker$OnDateChangedListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->init(IIILcom/vivo/common/widget/BBKVivoGeliDatePicker$OnDateChangedListener;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 311
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 312
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "year"

    iget v2, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Year:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    const-string v1, "month"

    iget v2, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    const-string v1, "day"

    iget v2, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    return-object v0
.end method

.method public selectLunar(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x0

    .line 400
    iget-boolean v0, p0, Lcom/vivo/app/DatePickerDialog;->mShowLunar:Z

    if-eqz v0, :cond_0

    .line 402
    iput-boolean p1, p0, Lcom/vivo/app/DatePickerDialog;->IsLunarCalendar:Z

    .line 403
    iget-boolean v0, p0, Lcom/vivo/app/DatePickerDialog;->IsLunarCalendar:Z

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mTabSelector:Lcom/vivo/common/TabSelector;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vivo/common/TabSelector;->setSelectorTab(I)V

    .line 406
    invoke-direct {p0}, Lcom/vivo/app/DatePickerDialog;->lunarSelect()V

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mTabSelector:Lcom/vivo/common/TabSelector;

    invoke-virtual {v0, v1}, Lcom/vivo/common/TabSelector;->setSelectorTab(I)V

    .line 411
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKVivoGeliDatePicker;

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mVivoDatePicker:Lcom/vivo/common/widget/BBKVivoLunarDatePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKVivoGeliDatePicker;

    iget v1, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Year:I

    iget v2, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I

    iget v3, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->updateDateAndSpinners(III)V

    .line 417
    iget v0, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Year:I

    iget v1, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I

    iget v2, p0, Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I

    invoke-direct {p0, v0, v1, v2}, Lcom/vivo/app/DatePickerDialog;->updateTitle(III)V

    goto :goto_0
.end method

.method public setBottomContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mExtendContent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mExtendContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 380
    :cond_0
    return-void
.end method

.method public showLunar(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 384
    iput-boolean p1, p0, Lcom/vivo/app/DatePickerDialog;->mShowLunar:Z

    .line 385
    iget-boolean v0, p0, Lcom/vivo/app/DatePickerDialog;->mShowLunar:Z

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mTabSelector:Lcom/vivo/common/TabSelector;

    invoke-virtual {v0, v1}, Lcom/vivo/common/TabSelector;->setVisibility(I)V

    .line 388
    iget-boolean v0, p0, Lcom/vivo/app/DatePickerDialog;->IsLunarCalendar:Z

    invoke-virtual {p0, v0}, Lcom/vivo/app/DatePickerDialog;->selectLunar(Z)V

    .line 396
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mTabSelector:Lcom/vivo/common/TabSelector;

    invoke-virtual {v0, v2}, Lcom/vivo/common/TabSelector;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKVivoGeliDatePicker;

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog;->mVivoDatePicker:Lcom/vivo/common/widget/BBKVivoLunarDatePicker;

    invoke-virtual {v0, v2}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->setVisibility(I)V

    goto :goto_0
.end method
