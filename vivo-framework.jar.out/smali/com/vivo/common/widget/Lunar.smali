.class public Lcom/vivo/common/widget/Lunar;
.super Ljava/lang/Object;
.source "Lunar.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/widget/Lunar$LunarDate;
    }
.end annotation


# static fields
.field public static final MAX_LUNAR_YEAR:I = 0x802

.field public static final MIN_LUNAR_YEAR:I = 0x76d

.field private static final START_LUNAR_YEAR:I = 0x76d

.field private static final SolarLunarOffsetTable:[C

.field private static mLunarMonthDays:[I

.field private static mLunarMonths:[S

.field private static mMaxGeliDateDay:I

.field private static mMaxGeliDateMonth:I

.field private static mMaxGeliDateYear:I


# instance fields
.field private Year_String:Ljava/lang/String;

.field public iLunarDay:[Ljava/lang/String;

.field public iLunarMonth:[Ljava/lang/String;

.field private leapmonth_String:Ljava/lang/String;

.field private mLunarWord:[Ljava/lang/String;

.field private mRes:Landroid/content/res/Resources;

.field private mlunarwordMap:Ljava/util/HashMap;
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

.field private month_String:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x96

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vivo/common/widget/Lunar;->mLunarMonthDays:[I

    .line 55
    const/16 v0, 0x4b

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lcom/vivo/common/widget/Lunar;->mLunarMonths:[S

    .line 75
    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/vivo/common/widget/Lunar;->SolarLunarOffsetTable:[C

    .line 95
    const/16 v0, 0x7f5

    sput v0, Lcom/vivo/common/widget/Lunar;->mMaxGeliDateYear:I

    .line 96
    const/16 v0, 0xc

    sput v0, Lcom/vivo/common/widget/Lunar;->mMaxGeliDateMonth:I

    .line 97
    const/16 v0, 0x1f

    sput v0, Lcom/vivo/common/widget/Lunar;->mMaxGeliDateDay:I

    return-void

    .line 32
    :array_0
    .array-data 4
        0x4ae0
        0xa570
        0x5268
        0xd260
        0xd950
        0x6aa8
        0x56a0
        0x9ad0
        0x4ae8
        0x4ae0
        0xa4d8
        0xa4d0
        0xd250
        0xd548
        0xb550
        0x56a0
        0x96d0
        0x95b0
        0x49b8
        0x49b0
        0xa4b0
        0xb258
        0x6a50
        0x6d40
        0xada8
        0x2b60
        0x9570
        0x4978
        0x4970
        0x64b0
        0xd4a0
        0xea50
        0x6d48
        0x5ad0
        0x2b60
        0x9370
        0x92e0
        0xc968
        0xc950
        0xd4a0
        0xda50
        0xb550
        0x56a0
        0xaad8
        0x25d0
        0x92d0
        0xc958
        0xa950
        0xb4a8
        0x6ca0
        0xb550
        0x55a8
        0x4da0
        0xa5b0
        0x52b8
        0x52b0
        0xa950
        0xe950
        0x6aa0
        0xad50
        0xab50
        0x4b60
        0xa570
        0xa570
        0x5260
        0xe930
        0xd950
        0x5aa8
        0x56a0
        0x96d0
        0x4ae8
        0x4ad0
        0xa4d0
        0xd268
        0xd250
        0xd528
        0xb540
        0xb6a0
        0x96d0
        0x95b0
        0x49b0
        0xa4b8
        0xa4b0
        0xb258
        0x6a50
        0x6d40
        0xada0
        0xab60
        0x9570
        0x4978
        0x4970
        0x64b0
        0x6a50
        0xea50
        0x6b28
        0x5ac0
        0xab60
        0x9368
        0x92e0
        0xc960
        0xd4a8
        0xd4a0
        0xda50
        0x5aa8
        0x56a0
        0xaad8
        0x25d0
        0x92d0
        0xc958
        0xa950
        0xb4a0
        0xb550
        0xad50
        0x55a8
        0x4ba0
        0xa5b0
        0x52b8
        0x52b0
        0xa930
        0x74a8
        0x6aa0
        0xad50
        0x4da8
        0x4b60
        0xa570
        0xa4e0
        0xd260
        0xe930
        0xd530
        0x5aa0
        0x6b50
        0x96d0
        0x4ae8
        0x4ad0
        0xa4d0
        0xd258
        0xd250
        0xd520
        0xdaa0
        0xb5a0
        0x56d0
        0x4ad8
        0x49b0
        0xa4b8
        0xa4b0
        0xaa50
        0xb528
        0x6d20
        0xada0
        0x55b0
    .end array-data

    .line 55
    :array_1
    .array-data 2
        0x0s
        0x50s
        0x4s
        0x0s
        0x20s
        0x60s
        0x5s
        0x0s
        0x20s
        0x70s
        0x5s
        0x0s
        0x40s
        0x2s
        0x6s
        0x0s
        0x50s
        0x3s
        0x7s
        0x0s
        0x60s
        0x4s
        0x0s
        0x20s
        0x70s
        0x5s
        0x0s
        0x30s
        0x80s
        0x6s
        0x0s
        0x40s
        0x3s
        0x7s
        0x0s
        0x50s
        0x4s
        0x8s
        0x0s
        0x60s
        0x4s
        0xas
        0x0s
        0x60s
        0x5s
        0x0s
        0x30s
        0x80s
        0x5s
        0x0s
        0x40s
        0x2s
        0x7s
        0x0s
        0x50s
        0x4s
        0x9s
        0x0s
        0x60s
        0x4s
        0x0s
        0x20s
        0x60s
        0x5s
        0x0s
        0x30s
        0x70s
        0x6s
        0x0s
        0x50s
        0x2s
        0x7s
        0x0s
        0x50s
        0x3s
    .end array-data

    .line 75
    nop

    :array_2
    .array-data 2
        0x32s
        0x27s
        0x1ds
        0x2fs
        0x23s
        0x19s
        0x2cs
        0x21s
        0x16s
        0x29s
        0x1es
        0x31s
        0x25s
        0x1as
        0x2ds
        0x23s
        0x17s
        0x2as
        0x20s
        0x33s
        0x27s
        0x1cs
        0x2fs
        0x24s
        0x18s
        0x2cs
        0x21s
        0x17s
        0x29s
        0x1es
        0x30s
        0x25s
        0x1as
        0x2ds
        0x23s
        0x18s
        0x2as
        0x1fs
        0x32s
        0x27s
        0x1bs
        0x2es
        0x24s
        0x19s
        0x2cs
        0x21s
        0x16s
        0x29s
        0x1ds
        0x30s
        0x25s
        0x1bs
        0x2ds
        0x22s
        0x18s
        0x2bs
        0x1fs
        0x31s
        0x27s
        0x1cs
        0x2es
        0x24s
        0x19s
        0x2cs
        0x21s
        0x15s
        0x28s
        0x1es
        0x30s
        0x25s
        0x1bs
        0x2es
        0x22s
        0x17s
        0x2as
        0x1fs
        0x31s
        0x26s
        0x1cs
        0x2fs
        0x24s
        0x19s
        0x2cs
        0x21s
        0x33s
        0x28s
        0x1ds
        0x30s
        0x25s
        0x1bs
        0x2es
        0x23s
        0x17s
        0x29s
        0x1fs
        0x32s
        0x26s
        0x1cs
        0x2fs
        0x24s
        0x18s
        0x2bs
        0x20s
        0x16s
        0x28s
        0x1ds
        0x31s
        0x26s
        0x1as
        0x2ds
        0x22s
        0x17s
        0x29s
        0x1fs
        0x32s
        0x27s
        0x1cs
        0x2fs
        0x24s
        0x19s
        0x2bs
        0x20s
        0x16s
        0x29s
        0x1ds
        0x30s
        0x25s
        0x1as
        0x2cs
        0x22s
        0x17s
        0x2as
        0x1fs
        0x32s
        0x27s
        0x1cs
        0x2es
        0x21s
        0x17s
        0x2as
        0x1fs
        0x15s
        0x28s
        0x1ds
        0x2fs
        0x24s
        0x19s
        0x2cs
        0x20s
        0x16s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/vivo/common/widget/Lunar;->mlunarwordMap:Ljava/util/HashMap;

    .line 20
    iput-object v1, p0, Lcom/vivo/common/widget/Lunar;->mLunarWord:[Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/vivo/common/widget/Lunar;->mRes:Landroid/content/res/Resources;

    .line 99
    iput-object v1, p0, Lcom/vivo/common/widget/Lunar;->Year_String:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lcom/vivo/common/widget/Lunar;->month_String:Ljava/lang/String;

    .line 101
    iput-object v1, p0, Lcom/vivo/common/widget/Lunar;->leapmonth_String:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lcom/vivo/common/widget/Lunar;->iLunarMonth:[Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/vivo/common/widget/Lunar;->iLunarDay:[Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/widget/Lunar;->mRes:Landroid/content/res/Resources;

    .line 116
    iget-object v1, p0, Lcom/vivo/common/widget/Lunar;->mRes:Landroid/content/res/Resources;

    const v2, 0x3090026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/widget/Lunar;->iLunarMonth:[Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/vivo/common/widget/Lunar;->mRes:Landroid/content/res/Resources;

    const v2, 0x3090027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/widget/Lunar;->iLunarDay:[Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/vivo/common/widget/Lunar;->mRes:Landroid/content/res/Resources;

    const v2, 0x30e0064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/widget/Lunar;->Year_String:Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/vivo/common/widget/Lunar;->mRes:Landroid/content/res/Resources;

    const v2, 0x30e0065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/widget/Lunar;->month_String:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcom/vivo/common/widget/Lunar;->mRes:Landroid/content/res/Resources;

    const v2, 0x30e00f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/widget/Lunar;->leapmonth_String:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/vivo/common/widget/Lunar;->mRes:Landroid/content/res/Resources;

    const v2, 0x3090025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/widget/Lunar;->mLunarWord:[Ljava/lang/String;

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/vivo/common/widget/Lunar;->mlunarwordMap:Ljava/util/HashMap;

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/vivo/common/widget/Lunar;->mlunarwordMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/widget/Lunar;->mLunarWord:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method

.method public static CalendarLundarToSolar(III)Landroid/text/format/Time;
    .locals 12
    .param p0, "lYear"    # I
    .param p1, "lMonth"    # I
    .param p2, "lMonthDay"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v11, 0x802

    const/16 v10, 0xc

    .line 226
    const/16 v7, 0x76d

    if-lt p0, v7, :cond_0

    if-le p0, v11, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-object v6

    .line 229
    :cond_1
    const/4 v0, 0x0

    .line 230
    .local v0, "OffsetDays":I
    move v5, p0

    .line 231
    .local v5, "sYear":I
    const/4 v3, 0x0

    .line 232
    .local v3, "sMonth":I
    const/4 v4, 0x0

    .line 234
    .local v4, "sMonthDay":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 235
    invoke-static {p0, v1}, Lcom/vivo/common/widget/Lunar;->GetLunarMonthDays(II)I

    move-result v7

    add-int/2addr v0, v7

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 237
    :cond_2
    add-int v7, v0, p2

    sget-object v8, Lcom/vivo/common/widget/Lunar;->SolarLunarOffsetTable:[C

    add-int/lit16 v9, p0, -0x76d

    aget-char v8, v8, v9

    add-int/2addr v7, v8

    add-int/lit8 v0, v7, -0x1

    .line 239
    const/4 v1, 0x1

    :goto_2
    if-gt v1, v10, :cond_4

    .line 240
    invoke-static {v5, v1}, Lcom/vivo/common/widget/Lunar;->GetSolarYearMonthDays(II)I

    move-result v2

    .line 241
    .local v2, "mMonthDays":I
    if-le v0, v2, :cond_3

    .line 242
    sub-int/2addr v0, v2

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 244
    :cond_3
    move v3, v1

    .line 245
    move v4, v0

    .line 249
    .end local v2    # "mMonthDays":I
    :cond_4
    if-nez v3, :cond_6

    .line 250
    add-int/lit8 v5, v5, 0x1

    .line 251
    if-gt v5, v11, :cond_0

    .line 254
    const/4 v1, 0x1

    :goto_3
    if-gt v1, v10, :cond_6

    .line 255
    invoke-static {v5, v1}, Lcom/vivo/common/widget/Lunar;->GetSolarYearMonthDays(II)I

    move-result v2

    .line 256
    .restart local v2    # "mMonthDays":I
    if-le v0, v2, :cond_5

    .line 257
    sub-int/2addr v0, v2

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 259
    :cond_5
    move v3, v1

    .line 260
    move v4, v0

    .line 266
    .end local v2    # "mMonthDays":I
    :cond_6
    sget v7, Lcom/vivo/common/widget/Lunar;->mMaxGeliDateYear:I

    if-le v5, v7, :cond_7

    .line 268
    sget v5, Lcom/vivo/common/widget/Lunar;->mMaxGeliDateYear:I

    .line 269
    sget v3, Lcom/vivo/common/widget/Lunar;->mMaxGeliDateMonth:I

    .line 270
    sget v4, Lcom/vivo/common/widget/Lunar;->mMaxGeliDateDay:I

    .line 272
    :cond_7
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 273
    .local v6, "time":Landroid/text/format/Time;
    iput v5, v6, Landroid/text/format/Time;->year:I

    .line 274
    add-int/lit8 v7, v3, -0x1

    iput v7, v6, Landroid/text/format/Time;->month:I

    .line 275
    iput v4, v6, Landroid/text/format/Time;->monthDay:I

    .line 276
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->normalize(Z)J

    goto :goto_0
.end method

.method public static GetLunarLeapMonth(I)I
    .locals 3
    .param p0, "lYear"    # I

    .prologue
    .line 329
    sget-object v1, Lcom/vivo/common/widget/Lunar;->mLunarMonths:[S

    add-int/lit16 v2, p0, -0x76d

    div-int/lit8 v2, v2, 0x2

    aget-short v0, v1, v2

    .line 331
    .local v0, "LeapMonth":S
    rem-int/lit8 v1, p0, 0x2

    if-nez v1, :cond_0

    .line 332
    and-int/lit8 v1, v0, 0xf

    .line 334
    :goto_0
    return v1

    :cond_0
    and-int/lit16 v1, v0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    goto :goto_0
.end method

.method public static GetLunarMonthDays(II)I
    .locals 3
    .param p0, "lYear"    # I
    .param p1, "lMonth"    # I

    .prologue
    .line 343
    sget-object v0, Lcom/vivo/common/widget/Lunar;->mLunarMonthDays:[I

    add-int/lit16 v1, p0, -0x76d

    aget v0, v0, v1

    const v1, 0x8000

    add-int/lit8 v2, p1, -0x1

    shr-int/2addr v1, v2

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 344
    const/16 v0, 0x1d

    .line 346
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public static GetSolarNewYearOffsetDays(III)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "monthDay"    # I

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 288
    .local v0, "OffsetDays":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 289
    invoke-static {p0, v1}, Lcom/vivo/common/widget/Lunar;->GetSolarYearMonthDays(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_0
    add-int/2addr v0, p2

    .line 293
    return v0
.end method

.method public static GetSolarYearMonthDays(II)I
    .locals 1
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 301
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 302
    :cond_0
    const/16 v0, 0x1f

    .line 312
    :goto_0
    return v0

    .line 303
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    .line 304
    :cond_2
    const/16 v0, 0x1e

    goto :goto_0

    .line 305
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 306
    invoke-static {p0}, Lcom/vivo/common/widget/Lunar;->IsSolarLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 307
    const/16 v0, 0x1d

    goto :goto_0

    .line 309
    :cond_4
    const/16 v0, 0x1c

    goto :goto_0

    .line 312
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsSolarLeapYear(I)Z
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 321
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public CalendarSolarToLundar(III)Lcom/vivo/common/widget/Lunar$LunarDate;
    .locals 11
    .param p1, "sYear"    # I
    .param p2, "sMonth"    # I
    .param p3, "sMonthDay"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 134
    const/16 v8, 0x76d

    if-lt p1, v8, :cond_0

    const/16 v8, 0x802

    if-le p1, v8, :cond_1

    :cond_0
    move-object v4, v7

    .line 218
    :goto_0
    return-object v4

    .line 138
    :cond_1
    new-instance v4, Lcom/vivo/common/widget/Lunar$LunarDate;

    invoke-direct {v4, p0}, Lcom/vivo/common/widget/Lunar$LunarDate;-><init>(Lcom/vivo/common/widget/Lunar;)V

    .line 139
    .local v4, "mLunarDate":Lcom/vivo/common/widget/Lunar$LunarDate;
    const/4 v0, 0x0

    .line 140
    .local v0, "LeapMonth":I
    const/4 v6, 0x0

    .line 142
    .local v6, "monthname":Ljava/lang/String;
    add-int/lit8 v8, p2, 0x1

    invoke-static {p1, v8, p3}, Lcom/vivo/common/widget/Lunar;->GetSolarNewYearOffsetDays(III)I

    move-result v1

    .line 143
    .local v1, "OffsetDays":I
    sget-object v8, Lcom/vivo/common/widget/Lunar;->SolarLunarOffsetTable:[C

    add-int/lit16 v9, p1, -0x76d

    aget-char v8, v8, v9

    if-ge v1, v8, :cond_8

    .line 144
    add-int/lit8 v3, p1, -0x1

    .line 145
    .local v3, "lYear":I
    add-int/lit16 v8, v3, -0x76d

    if-gez v8, :cond_2

    move-object v4, v7

    .line 146
    goto :goto_0

    .line 148
    :cond_2
    invoke-static {v3}, Lcom/vivo/common/widget/Lunar;->GetLunarLeapMonth(I)I

    move-result v0

    .line 149
    if-nez v0, :cond_4

    .line 150
    const/16 v2, 0xc

    .line 156
    .local v2, "lMonth":I
    :goto_1
    sget-object v7, Lcom/vivo/common/widget/Lunar;->SolarLunarOffsetTable:[C

    add-int/lit16 v8, p1, -0x76d

    aget-char v7, v7, v8

    add-int/lit8 v7, v7, -0x1

    sub-int v1, v7, v1

    .line 157
    :goto_2
    if-ltz v1, :cond_3

    .line 158
    invoke-static {v3, v2}, Lcom/vivo/common/widget/Lunar;->GetLunarMonthDays(II)I

    move-result v5

    .line 159
    .local v5, "monthDay":I
    if-ge v1, v5, :cond_5

    .line 160
    sub-int v7, v5, v1

    iput v7, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->dayOfMonth:I

    .line 166
    .end local v5    # "monthDay":I
    :cond_3
    iput v3, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->year:I

    .line 167
    iput v0, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->LeapMonth:I

    .line 168
    if-eqz v0, :cond_6

    add-int/lit8 v7, v0, 0x1

    if-ne v7, v2, :cond_6

    .line 169
    iput v10, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->monthOfYear:I

    .line 170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/vivo/common/widget/Lunar;->leapmonth_String:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/widget/Lunar;->iLunarMonth:[Ljava/lang/String;

    iget v9, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->LeapMonth:I

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 179
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->year:I

    invoke-virtual {p0, v8}, Lcom/vivo/common/widget/Lunar;->getChineseLunarYear(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/widget/Lunar;->Year_String:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/widget/Lunar;->month_String:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/widget/Lunar;->iLunarDay:[Ljava/lang/String;

    iget v9, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->dayOfMonth:I

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->mDate:Ljava/lang/String;

    goto/16 :goto_0

    .line 152
    .end local v2    # "lMonth":I
    :cond_4
    const/16 v2, 0xd

    .restart local v2    # "lMonth":I
    goto :goto_1

    .line 163
    .restart local v5    # "monthDay":I
    :cond_5
    sub-int/2addr v1, v5

    .line 157
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 171
    .end local v5    # "monthDay":I
    :cond_6
    if-eqz v0, :cond_7

    add-int/lit8 v7, v0, 0x1

    if-ge v7, v2, :cond_7

    .line 172
    iput v2, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->monthOfYear:I

    .line 173
    iget-object v7, p0, Lcom/vivo/common/widget/Lunar;->iLunarMonth:[Ljava/lang/String;

    iget v8, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->monthOfYear:I

    add-int/lit8 v8, v8, -0x2

    aget-object v6, v7, v8

    goto :goto_3

    .line 175
    :cond_7
    iput v2, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->monthOfYear:I

    .line 176
    iget-object v7, p0, Lcom/vivo/common/widget/Lunar;->iLunarMonth:[Ljava/lang/String;

    iget v8, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->monthOfYear:I

    add-int/lit8 v8, v8, -0x1

    aget-object v6, v7, v8

    goto :goto_3

    .line 183
    .end local v2    # "lMonth":I
    .end local v3    # "lYear":I
    :cond_8
    move v3, p1

    .line 184
    .restart local v3    # "lYear":I
    invoke-static {v3}, Lcom/vivo/common/widget/Lunar;->GetLunarLeapMonth(I)I

    move-result v0

    .line 187
    sget-object v7, Lcom/vivo/common/widget/Lunar;->SolarLunarOffsetTable:[C

    add-int/lit16 v8, p1, -0x76d

    aget-char v7, v7, v8

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v1, v7

    .line 188
    const/4 v2, 0x1

    .restart local v2    # "lMonth":I
    :goto_4
    if-lez v1, :cond_9

    .line 189
    invoke-static {v3, v2}, Lcom/vivo/common/widget/Lunar;->GetLunarMonthDays(II)I

    move-result v5

    .line 190
    .restart local v5    # "monthDay":I
    if-gt v1, v5, :cond_b

    .line 191
    iput v1, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->dayOfMonth:I

    .line 196
    .end local v5    # "monthDay":I
    :cond_9
    iput v3, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->year:I

    .line 197
    iput v0, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->LeapMonth:I

    .line 198
    if-eqz v0, :cond_e

    .line 199
    add-int/lit8 v7, v0, 0x1

    if-ne v2, v7, :cond_c

    .line 200
    iput v10, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->monthOfYear:I

    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/vivo/common/widget/Lunar;->leapmonth_String:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/widget/Lunar;->iLunarMonth:[Ljava/lang/String;

    iget v9, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->LeapMonth:I

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 214
    :cond_a
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->year:I

    invoke-virtual {p0, v8}, Lcom/vivo/common/widget/Lunar;->getChineseLunarYear(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/widget/Lunar;->Year_String:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/widget/Lunar;->month_String:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/widget/Lunar;->iLunarDay:[Ljava/lang/String;

    iget v9, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->dayOfMonth:I

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->mDate:Ljava/lang/String;

    goto/16 :goto_0

    .line 194
    .restart local v5    # "monthDay":I
    :cond_b
    sub-int/2addr v1, v5

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 202
    .end local v5    # "monthDay":I
    :cond_c
    add-int/lit8 v7, v0, 0x1

    if-ge v2, v7, :cond_d

    .line 203
    iput v2, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->monthOfYear:I

    .line 204
    iget-object v7, p0, Lcom/vivo/common/widget/Lunar;->iLunarMonth:[Ljava/lang/String;

    iget v8, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->monthOfYear:I

    add-int/lit8 v8, v8, -0x1

    aget-object v6, v7, v8

    goto :goto_5

    .line 205
    :cond_d
    add-int/lit8 v7, v0, 0x1

    if-le v2, v7, :cond_a

    .line 206
    add-int/lit8 v7, v2, -0x1

    iput v7, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->monthOfYear:I

    .line 207
    iget-object v7, p0, Lcom/vivo/common/widget/Lunar;->iLunarMonth:[Ljava/lang/String;

    iget v8, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->monthOfYear:I

    add-int/lit8 v8, v8, -0x1

    aget-object v6, v7, v8

    goto :goto_5

    .line 210
    :cond_e
    iput v2, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->monthOfYear:I

    .line 211
    iget-object v7, p0, Lcom/vivo/common/widget/Lunar;->iLunarMonth:[Ljava/lang/String;

    iget v8, v4, Lcom/vivo/common/widget/Lunar$LunarDate;->monthOfYear:I

    add-int/lit8 v8, v8, -0x1

    aget-object v6, v7, v8

    goto :goto_5
.end method

.method protected getChineseLunarYear(I)Ljava/lang/String;
    .locals 4
    .param p1, "start"    # I

    .prologue
    .line 371
    const/4 v0, 0x0

    .line 373
    .local v0, "LunarYear":Ljava/lang/String;
    div-int/lit8 v1, p1, 0x64

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vivo/common/widget/Lunar;->mLunarWord:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/widget/Lunar;->mLunarWord:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/vivo/common/widget/Lunar;->mlunarwordMap:Ljava/util/HashMap;

    rem-int/lit8 v3, p1, 0x64

    div-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/vivo/common/widget/Lunar;->mlunarwordMap:Ljava/util/HashMap;

    rem-int/lit8 v3, p1, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    return-object v0

    .line 376
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vivo/common/widget/Lunar;->mLunarWord:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/widget/Lunar;->mLunarWord:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getChineseLunarYear(II)[Ljava/lang/String;
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 393
    sub-int v3, p2, p1

    add-int/lit8 v1, v3, 0x1

    .line 394
    .local v1, "Size":I
    new-array v0, v1, [Ljava/lang/String;

    .line 396
    .local v0, "LunarYear":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 397
    div-int/lit8 v3, p1, 0x64

    const/16 v4, 0x13

    if-ne v3, v4, :cond_0

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vivo/common/widget/Lunar;->mLunarWord:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/common/widget/Lunar;->mLunarWord:[Ljava/lang/String;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 403
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/vivo/common/widget/Lunar;->mlunarwordMap:Ljava/util/HashMap;

    rem-int/lit8 v5, p1, 0x64

    div-int/lit8 v5, v5, 0xa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/vivo/common/widget/Lunar;->mlunarwordMap:Ljava/util/HashMap;

    rem-int/lit8 v5, p1, 0xa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 406
    add-int/lit8 p1, p1, 0x1

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 400
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vivo/common/widget/Lunar;->mLunarWord:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/common/widget/Lunar;->mLunarWord:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1

    .line 409
    :cond_1
    return-object v0
.end method

.method public getLunarDate(IIIILjava/lang/String;)Lcom/vivo/common/widget/Lunar$LunarDate;
    .locals 1
    .param p1, "lYear"    # I
    .param p2, "lMonth"    # I
    .param p3, "lDay"    # I
    .param p4, "LeapMonth"    # I
    .param p5, "mDate"    # Ljava/lang/String;

    .prologue
    .line 355
    new-instance v0, Lcom/vivo/common/widget/Lunar$LunarDate;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/Lunar$LunarDate;-><init>(Lcom/vivo/common/widget/Lunar;)V

    .line 356
    .local v0, "mLunarDate":Lcom/vivo/common/widget/Lunar$LunarDate;
    iput p1, v0, Lcom/vivo/common/widget/Lunar$LunarDate;->year:I

    .line 357
    iput p2, v0, Lcom/vivo/common/widget/Lunar$LunarDate;->monthOfYear:I

    .line 358
    iput p3, v0, Lcom/vivo/common/widget/Lunar$LunarDate;->dayOfMonth:I

    .line 359
    iput p4, v0, Lcom/vivo/common/widget/Lunar$LunarDate;->LeapMonth:I

    .line 360
    iput-object p5, v0, Lcom/vivo/common/widget/Lunar$LunarDate;->mDate:Ljava/lang/String;

    .line 361
    return-object v0
.end method
