.class public Lcom/vivo/common/utils/Lunar;
.super Ljava/lang/Object;
.source "Lunar.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static DefaultTime:I = 0x0

.field private static final END_YEAR:I = 0x802

.field private static final LOCKSCREEN_DEBUG:Z = true

.field public static LUNAR_DATE_STRING_LENGTH_LONG:I = 0x0

.field public static LUNAR_DATE_STRING_LENGTH_SHORT:I = 0x0

.field public static LastDayIsHoliday:Z = false

.field private static LockScreenChangeTimeAfterNow:Z = false

.field private static final START_YEAR:I = 0x76d

.field private static final TAG:Ljava/lang/String; = "Lunar"

.field private static Today:I

.field private static hashHoliday:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static lastScreenChangeDay:J

.field private static mContext:Landroid/content/Context;

.field private static mDefaultInstance:Lcom/vivo/common/utils/Lunar;

.field private static mLunarMonthDays:[I

.field private static mLunarMonths:[S

.field private static mRes:Landroid/content/res/Resources;

.field private static mSolarTerms:[S

.field private static oldLockSreenId:I


# instance fields
.field private animalYears:[Ljava/lang/String;

.field private celestialStem:[Ljava/lang/String;

.field private lunarDayPrefix:[Ljava/lang/String;

.field private lunarDaySuffix:[Ljava/lang/String;

.field private lunarMonths:[Ljava/lang/String;

.field private mSimpleGregorianHolidayArray:[Ljava/lang/Integer;

.field private mSimpleGregorianHolidayDateArray:[Ljava/lang/Integer;

.field private solarTermStrings:[Ljava/lang/String;

.field private terrestrialBranch:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 26
    sput-object v2, Lcom/vivo/common/utils/Lunar;->mDefaultInstance:Lcom/vivo/common/utils/Lunar;

    .line 27
    sput-object v2, Lcom/vivo/common/utils/Lunar;->mRes:Landroid/content/res/Resources;

    .line 28
    sput-object v2, Lcom/vivo/common/utils/Lunar;->mContext:Landroid/content/Context;

    .line 87
    const/16 v0, 0x96

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vivo/common/utils/Lunar;->mLunarMonthDays:[I

    .line 109
    const/16 v0, 0x4b

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lcom/vivo/common/utils/Lunar;->mLunarMonths:[S

    .line 163
    const/16 v0, 0x708

    new-array v0, v0, [S

    fill-array-data v0, :array_2

    sput-object v0, Lcom/vivo/common/utils/Lunar;->mSolarTerms:[S

    .line 318
    sput v1, Lcom/vivo/common/utils/Lunar;->LUNAR_DATE_STRING_LENGTH_SHORT:I

    .line 322
    const/4 v0, 0x1

    sput v0, Lcom/vivo/common/utils/Lunar;->LUNAR_DATE_STRING_LENGTH_LONG:I

    .line 1210
    const/4 v0, -0x1

    sput v0, Lcom/vivo/common/utils/Lunar;->oldLockSreenId:I

    .line 1214
    sput-boolean v1, Lcom/vivo/common/utils/Lunar;->LastDayIsHoliday:Z

    .line 1218
    sput v1, Lcom/vivo/common/utils/Lunar;->DefaultTime:I

    .line 1219
    sput v1, Lcom/vivo/common/utils/Lunar;->Today:I

    .line 1220
    sput-boolean v1, Lcom/vivo/common/utils/Lunar;->LockScreenChangeTimeAfterNow:Z

    .line 1221
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vivo/common/utils/Lunar;->lastScreenChangeDay:J

    .line 1498
    sput-object v2, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    return-void

    .line 87
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
        0x9570
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

    .line 109
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

    .line 163
    nop

    :array_2
    .array-data 2
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0x96s
        0x96s
        0x97s
        0x87s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x87s
        0x96s
        0x87s
        0x87s
        0x79s
        0x69s
        0x69s
        0x69s
        0x78s
        0x78s
        0x86s
        0xa5s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0x96s
        0x96s
        0x97s
        0x97s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x87s
        0x96s
        0x87s
        0x87s
        0x79s
        0x69s
        0x69s
        0x69s
        0x78s
        0x78s
        0x86s
        0xa5s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0x96s
        0x96s
        0x97s
        0x97s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x87s
        0x96s
        0x87s
        0x87s
        0x79s
        0x69s
        0x69s
        0x69s
        0x78s
        0x78s
        0x86s
        0xa5s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x97s
        0x96s
        0x97s
        0x87s
        0x79s
        0x79s
        0x69s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa6s
        0x96s
        0x97s
        0x78s
        0x79s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa5s
        0x97s
        0x96s
        0x97s
        0x87s
        0x79s
        0x79s
        0x69s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x78s
        0x79s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0x96s
        0x96s
        0x97s
        0x87s
        0x79s
        0x79s
        0x69s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x78s
        0x79s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0x96s
        0x96s
        0x97s
        0x87s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0x96s
        0x96s
        0x97s
        0x87s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0x96s
        0x96s
        0x97s
        0x97s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0x96s
        0x96s
        0x97s
        0x97s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0x96s
        0x96s
        0x97s
        0x97s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x96s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x78s
        0x69s
        0x78s
        0x77s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0xa6s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x79s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x78s
        0x79s
        0x78s
        0x69s
        0x78s
        0x77s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0xa6s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x78s
        0x79s
        0x78s
        0x68s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa5s
        0xa5s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0xa5s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0xa5s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0xa5s
        0xa5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0xa5s
        0xa5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x78s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x96s
        0x97s
        0x78s
        0x79s
        0x78s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x78s
        0x79s
        0x78s
        0x69s
        0x78s
        0x77s
        0x96s
        0xb4s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0xa6s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x79s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb4s
        0xa5s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xa5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xa5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xa5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x87s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x78s
        0x87s
        0x96s
        0xb4s
        0xa5s
        0xb5s
        0xa5s
        0xa6s
        0x87s
        0x88s
        0x87s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0xa5s
        0xb4s
        0xa5s
        0xa6s
        0x87s
        0x88s
        0x87s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xc3s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0xa6s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0xa5s
        0xb4s
        0xa5s
        0xa6s
        0x97s
        0x87s
        0x87s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xc3s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb4s
        0xa5s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0xa5s
        0xb4s
        0xa5s
        0xa6s
        0x97s
        0x87s
        0x87s
        0x78s
        0x87s
        0x96s
        0xa5s
        0xc3s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xa5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0xa5s
        0xb4s
        0xa5s
        0xa6s
        0x97s
        0x87s
        0x87s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xc3s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xa5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0xa5s
        0xb4s
        0xa5s
        0xa6s
        0x97s
        0x87s
        0x87s
        0x78s
        0x87s
        0x96s
        0xa5s
        0xc3s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xa5s
        0xa6s
        0xa6s
        0x88s
        0x78s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0xa5s
        0xb4s
        0xa5s
        0xa6s
        0x97s
        0x87s
        0x87s
        0x78s
        0x87s
        0x96s
        0xa5s
        0xc3s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xa5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0xa5s
        0xb4s
        0xa5s
        0xa6s
        0x97s
        0x87s
        0x87s
        0x78s
        0x87s
        0x96s
        0xa5s
        0xc3s
        0xa5s
        0xb5s
        0xa5s
        0xa6s
        0x87s
        0x88s
        0x87s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0xa5s
        0xb4s
        0xa5s
        0xa6s
        0x97s
        0x87s
        0x87s
        0x88s
        0x87s
        0x96s
        0xa5s
        0xc3s
        0xa5s
        0xb4s
        0xa5s
        0xa6s
        0x87s
        0x88s
        0x87s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0xa5s
        0xb4s
        0xa5s
        0xa5s
        0x97s
        0x87s
        0x87s
        0x88s
        0x86s
        0x96s
        0xa4s
        0xc3s
        0xa5s
        0xa5s
        0xa5s
        0xa6s
        0x97s
        0x87s
        0x87s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xc3s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/vivo/common/utils/Lunar;->celestialStem:[Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/vivo/common/utils/Lunar;->terrestrialBranch:[Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/vivo/common/utils/Lunar;->animalYears:[Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/vivo/common/utils/Lunar;->lunarDayPrefix:[Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/vivo/common/utils/Lunar;->lunarDaySuffix:[Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/vivo/common/utils/Lunar;->lunarMonths:[Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/vivo/common/utils/Lunar;->solarTermStrings:[Ljava/lang/String;

    .line 48
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x3090008

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x309000a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x309000c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x309000e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const v2, 0x3090010

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x3090012

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x3090014

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x3090016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x3090018

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x309001a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x309001c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x309001e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/vivo/common/utils/Lunar;->mSimpleGregorianHolidayDateArray:[Ljava/lang/Integer;

    .line 63
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x3090007

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x3090009

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x309000b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x309000d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const v2, 0x309000f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x3090011

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x3090013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x3090015

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x3090017

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x3090019

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x309001b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x309001d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/vivo/common/utils/Lunar;->mSimpleGregorianHolidayArray:[Ljava/lang/Integer;

    .line 515
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/utils/Lunar;->mRes:Landroid/content/res/Resources;

    .line 516
    sget-object v0, Lcom/vivo/common/utils/Lunar;->mRes:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/vivo/common/utils/Lunar;->init(Landroid/content/res/Resources;)V

    .line 517
    sget-object v0, Lcom/vivo/common/utils/Lunar;->mRes:Landroid/content/res/Resources;

    const/high16 v1, 0x3090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/utils/Lunar;->celestialStem:[Ljava/lang/String;

    .line 518
    sget-object v0, Lcom/vivo/common/utils/Lunar;->mRes:Landroid/content/res/Resources;

    const v1, 0x3090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/utils/Lunar;->terrestrialBranch:[Ljava/lang/String;

    .line 519
    sget-object v0, Lcom/vivo/common/utils/Lunar;->mRes:Landroid/content/res/Resources;

    const v1, 0x3090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/utils/Lunar;->animalYears:[Ljava/lang/String;

    .line 520
    sget-object v0, Lcom/vivo/common/utils/Lunar;->mRes:Landroid/content/res/Resources;

    const v1, 0x3090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/utils/Lunar;->lunarDayPrefix:[Ljava/lang/String;

    .line 521
    sget-object v0, Lcom/vivo/common/utils/Lunar;->mRes:Landroid/content/res/Resources;

    const v1, 0x3090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/utils/Lunar;->lunarDaySuffix:[Ljava/lang/String;

    .line 522
    sget-object v0, Lcom/vivo/common/utils/Lunar;->mRes:Landroid/content/res/Resources;

    const v1, 0x3090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/utils/Lunar;->lunarMonths:[Ljava/lang/String;

    .line 532
    sget-object v0, Lcom/vivo/common/utils/Lunar;->mRes:Landroid/content/res/Resources;

    const v1, 0x3090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/utils/Lunar;->solarTermStrings:[Ljava/lang/String;

    .line 533
    return-void
.end method

.method private CalcDateDiff([I[I)J
    .locals 12
    .param p1, "startDate"    # [I
    .param p2, "endDate"    # [I

    .prologue
    .line 427
    const/4 v9, 0x0

    aget v8, p1, v9

    .line 428
    .local v8, "startYear":I
    const/4 v9, 0x1

    aget v7, p1, v9

    .line 429
    .local v7, "startMonth":I
    const/4 v9, 0x2

    aget v6, p1, v9

    .line 431
    .local v6, "startDay":I
    const/4 v9, 0x0

    aget v2, p2, v9

    .line 432
    .local v2, "endYear":I
    const/4 v9, 0x1

    aget v1, p2, v9

    .line 433
    .local v1, "endMonth":I
    const/4 v9, 0x2

    aget v0, p2, v9

    .line 435
    .local v0, "endDay":I
    const/16 v9, 0xc

    new-array v3, v9, [I

    fill-array-data v3, :array_0

    .line 439
    .local v3, "monthday":[I
    sub-int v9, v2, v8

    mul-int/lit16 v9, v9, 0x16d

    int-to-long v4, v9

    .line 440
    .local v4, "iDiffDays":J
    add-int/lit8 v9, v2, -0x1

    div-int/lit8 v9, v9, 0x4

    add-int/lit8 v10, v8, -0x1

    div-int/lit8 v10, v10, 0x4

    sub-int/2addr v9, v10

    int-to-long v10, v9

    add-long/2addr v4, v10

    .line 441
    add-int/lit8 v9, v2, -0x1

    div-int/lit8 v9, v9, 0x64

    add-int/lit8 v10, v8, -0x1

    div-int/lit8 v10, v10, 0x64

    sub-int/2addr v9, v10

    int-to-long v10, v9

    sub-long/2addr v4, v10

    .line 442
    add-int/lit8 v9, v2, -0x1

    div-int/lit16 v9, v9, 0x190

    add-int/lit8 v10, v8, -0x1

    div-int/lit16 v10, v10, 0x190

    sub-int/2addr v9, v10

    int-to-long v10, v9

    add-long/2addr v4, v10

    .line 445
    add-int/lit8 v9, v1, -0x1

    aget v10, v3, v9

    invoke-direct {p0, v2}, Lcom/vivo/common/utils/Lunar;->isLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x2

    if-le v1, v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    add-int/2addr v9, v10

    int-to-long v10, v9

    add-long/2addr v4, v10

    .line 446
    int-to-long v10, v0

    add-long/2addr v4, v10

    .line 449
    add-int/lit8 v9, v7, -0x1

    aget v10, v3, v9

    invoke-direct {p0, v8}, Lcom/vivo/common/utils/Lunar;->isLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x2

    if-le v7, v9, :cond_1

    const/4 v9, 0x1

    :goto_1
    add-int/2addr v9, v10

    int-to-long v10, v9

    sub-long/2addr v4, v10

    .line 450
    int-to-long v10, v6

    sub-long/2addr v4, v10

    .line 451
    return-wide v4

    .line 445
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 449
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 435
    :array_0
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data
.end method

.method private CalcLunarDate(J[I)V
    .locals 11
    .param p1, "iSpanDays"    # J
    .param p3, "lunarDate"    # [I

    .prologue
    const-wide/16 v8, 0x31

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 457
    cmp-long v2, p1, v8

    if-gez v2, :cond_1

    .line 458
    const/16 v2, 0x76c

    aput v2, p3, v5

    .line 460
    const-wide/16 v2, 0x13

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 461
    const/16 v2, 0xb

    aput v2, p3, v4

    .line 462
    const-wide/16 v2, 0xb

    add-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, p3, v6

    .line 496
    :goto_0
    return-void

    .line 465
    :cond_0
    const/16 v2, 0xc

    aput v2, p3, v4

    .line 466
    long-to-int v2, p1

    add-int/lit8 v2, v2, -0x12

    aput v2, p3, v6

    goto :goto_0

    .line 471
    :cond_1
    sub-long/2addr p1, v8

    .line 472
    const/16 v2, 0x76d

    aput v2, p3, v5

    .line 473
    aput v4, p3, v4

    .line 474
    aput v4, p3, v6

    .line 476
    aget v2, p3, v5

    invoke-direct {p0, v2}, Lcom/vivo/common/utils/Lunar;->LunarYearDays(I)I

    move-result v2

    int-to-long v0, v2

    .line 477
    .local v0, "tmp":J
    :goto_1
    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    .line 478
    sub-long/2addr p1, v0

    .line 479
    aget v2, p3, v5

    add-int/lit8 v2, v2, 0x1

    aput v2, p3, v5

    invoke-direct {p0, v2}, Lcom/vivo/common/utils/Lunar;->LunarYearDays(I)I

    move-result v2

    int-to-long v0, v2

    goto :goto_1

    .line 482
    :cond_2
    aget v2, p3, v5

    aget v3, p3, v4

    invoke-direct {p0, v2, v3}, Lcom/vivo/common/utils/Lunar;->LunarMonthDays(II)S

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v0, v2

    .line 483
    :goto_2
    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    .line 484
    sub-long/2addr p1, v0

    .line 485
    aget v2, p3, v4

    aget v3, p3, v5

    invoke-direct {p0, v3}, Lcom/vivo/common/utils/Lunar;->getLeapMonth(I)I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 487
    aget v2, p3, v5

    aget v3, p3, v4

    invoke-direct {p0, v2, v3}, Lcom/vivo/common/utils/Lunar;->LunarMonthDays(II)S

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-long v0, v2

    .line 488
    cmp-long v2, p1, v0

    if-gez v2, :cond_4

    .line 495
    :cond_3
    aget v2, p3, v6

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, p3, v6

    goto :goto_0

    .line 490
    :cond_4
    sub-long/2addr p1, v0

    .line 492
    :cond_5
    aget v2, p3, v5

    aget v3, p3, v4

    add-int/lit8 v3, v3, 0x1

    aput v3, p3, v4

    invoke-direct {p0, v2, v3}, Lcom/vivo/common/utils/Lunar;->LunarMonthDays(II)S

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v0, v2

    goto :goto_2
.end method

.method private LunarMonthDays(II)S
    .locals 7
    .param p1, "iLunarYear"    # I
    .param p2, "iLunarMonth"    # I

    .prologue
    const/4 v6, 0x1

    .line 383
    const/16 v4, 0x76d

    if-ge p1, v4, :cond_0

    .line 384
    const/16 v4, 0x1e

    .line 409
    :goto_0
    return v4

    .line 386
    :cond_0
    const/4 v0, 0x0

    .line 387
    .local v0, "high":I
    const/16 v3, 0x1d

    .line 388
    .local v3, "low":I
    rsub-int/lit8 v1, p2, 0x10

    .line 395
    .local v1, "iBit":I
    invoke-direct {p0, p1}, Lcom/vivo/common/utils/Lunar;->getLeapMonth(I)I

    move-result v2

    .line 396
    .local v2, "leapMonth":I
    if-eqz v2, :cond_1

    if-le p2, v2, :cond_1

    .line 397
    add-int/lit8 v1, v1, -0x1

    .line 399
    :cond_1
    sget-object v4, Lcom/vivo/common/utils/Lunar;->mLunarMonthDays:[I

    add-int/lit16 v5, p1, -0x76d

    aget v4, v4, v5

    shl-int v5, v6, v1

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 400
    add-int/lit8 v3, v3, 0x1

    .line 402
    :cond_2
    if-ne p2, v2, :cond_3

    .line 403
    sget-object v4, Lcom/vivo/common/utils/Lunar;->mLunarMonthDays:[I

    add-int/lit16 v5, p1, -0x76d

    aget v4, v4, v5

    add-int/lit8 v5, v1, -0x1

    shl-int v5, v6, v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    .line 404
    const/16 v0, 0x1e

    .line 409
    :cond_3
    :goto_1
    int-to-short v4, v3

    int-to-short v5, v0

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-short v4, v4

    goto :goto_0

    .line 406
    :cond_4
    const/16 v0, 0x1d

    goto :goto_1
.end method

.method private LunarYearDays(I)I
    .locals 4
    .param p1, "iLunarYear"    # I

    .prologue
    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, "days":I
    const/4 v1, 0x1

    .line 416
    .local v1, "i":I
    const/4 v1, 0x1

    :goto_0
    const/16 v3, 0xc

    if-gt v1, v3, :cond_0

    .line 418
    invoke-direct {p0, p1, v1}, Lcom/vivo/common/utils/Lunar;->LunarMonthDays(II)S

    move-result v2

    .line 419
    .local v2, "tmp":S
    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    .line 420
    and-int/lit16 v3, v2, 0xff

    add-int/2addr v0, v3

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    .end local v2    # "tmp":S
    :cond_0
    return v0
.end method

.method private calLunarHoliday(II)Ljava/lang/String;
    .locals 5
    .param p1, "lunar_month"    # I
    .param p2, "lunar_day"    # I

    .prologue
    .line 736
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 737
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x3090023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 738
    .local v0, "dateArray":[I
    const v4, 0x3090022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 739
    .local v2, "lunarHolidayArray":[Ljava/lang/String;
    mul-int/lit8 v4, p1, 0x64

    add-int/2addr v4, p2

    invoke-static {v0, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    .line 740
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 741
    aget-object v4, v2, v1

    .line 743
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getDefault()Lcom/vivo/common/utils/Lunar;
    .locals 2

    .prologue
    .line 538
    sget-object v0, Lcom/vivo/common/utils/Lunar;->mDefaultInstance:Lcom/vivo/common/utils/Lunar;

    if-nez v0, :cond_0

    .line 539
    new-instance v0, Lcom/vivo/common/utils/Lunar;

    invoke-direct {v0}, Lcom/vivo/common/utils/Lunar;-><init>()V

    sput-object v0, Lcom/vivo/common/utils/Lunar;->mDefaultInstance:Lcom/vivo/common/utils/Lunar;

    .line 540
    const-string v0, "Lunar"

    const-string v1, "===============getDefault"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    sget-object v0, Lcom/vivo/common/utils/Lunar;->mDefaultInstance:Lcom/vivo/common/utils/Lunar;

    return-object v0
.end method

.method private getLeapMonth(I)I
    .locals 3
    .param p1, "iLunarYear"    # I

    .prologue
    .line 370
    sget-object v1, Lcom/vivo/common/utils/Lunar;->mLunarMonths:[S

    add-int/lit16 v2, p1, -0x76d

    div-int/lit8 v2, v2, 0x2

    aget-short v0, v1, v2

    .line 371
    .local v0, "flag":S
    add-int/lit16 v1, p1, -0x76d

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    and-int/lit8 v1, v0, 0xf

    :goto_0
    return v1

    :cond_0
    shr-int/lit8 v1, v0, 0x4

    goto :goto_0
.end method

.method private getLunarDayString(III)Ljava/lang/String;
    .locals 3
    .param p1, "lunarYear"    # I
    .param p2, "lunarMonth"    # I
    .param p3, "lunarDay"    # I

    .prologue
    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 841
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x14

    if-eq p3, v1, :cond_0

    const/16 v1, 0x1e

    if-eq p3, v1, :cond_0

    .line 843
    iget-object v1, p0, Lcom/vivo/common/utils/Lunar;->lunarDayPrefix:[Ljava/lang/String;

    add-int/lit8 v2, p3, -0x1

    div-int/lit8 v2, v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    iget-object v1, p0, Lcom/vivo/common/utils/Lunar;->lunarDaySuffix:[Ljava/lang/String;

    add-int/lit8 v2, p3, -0x1

    rem-int/lit8 v2, v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 848
    :cond_0
    iget-object v1, p0, Lcom/vivo/common/utils/Lunar;->lunarDayPrefix:[Ljava/lang/String;

    div-int/lit8 v2, p3, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    iget-object v1, p0, Lcom/vivo/common/utils/Lunar;->lunarDaySuffix:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getMonthLunarDays(Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;[[Ljava/lang/String;[[Z)V
    .locals 22
    .param p1, "cursor"    # Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;
    .param p2, "lunarDayStrings"    # [[Ljava/lang/String;
    .param p3, "holidayDays"    # [[Z

    .prologue
    .line 858
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1070
    :cond_0
    return-void

    .line 862
    :cond_1
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    .line 863
    .local v17, "rows":I
    const/16 v18, 0x0

    aget-object v18, p2, v18

    move-object/from16 v0, v18

    array-length v5, v0

    .line 872
    .local v5, "cols":I
    invoke-virtual/range {p1 .. p1}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->getYear()I

    move-result v8

    .line 873
    .local v8, "first_date_year":I
    invoke-virtual/range {p1 .. p1}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->getMonth()I

    move-result v18

    add-int/lit8 v7, v18, 0x1

    .line 874
    .local v7, "first_date_month":I
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->getDayAt(II)I

    move-result v6

    .line 875
    .local v6, "first_date_day":I
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v18

    if-nez v18, :cond_2

    .line 876
    add-int/lit8 v7, v7, -0x1

    .line 877
    if-nez v7, :cond_2

    .line 878
    const/16 v7, 0xc

    .line 879
    add-int/lit8 v8, v8, -0x1

    .line 886
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v7, v6}, Lcom/vivo/common/utils/Lunar;->getLunarDate(III)[I

    move-result-object v4

    .line 891
    .local v4, "LunarDate":[I
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v9, v0, [I

    .line 892
    .local v9, "gregorianDate":[I
    const/16 v18, 0x0

    aput v8, v9, v18

    .line 893
    const/16 v18, 0x1

    aput v7, v9, v18

    .line 894
    const/16 v18, 0x2

    aput v6, v9, v18

    .line 895
    const/16 v18, 0x0

    aget v18, v4, v18

    const/16 v19, 0x1

    aget v19, v4, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/vivo/common/utils/Lunar;->LunarMonthDays(II)S

    move-result v15

    .line 896
    .local v15, "lunarMonthDays":I
    const/16 v18, 0x0

    aget v18, v4, v18

    const/16 v19, 0x1

    aget v19, v4, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v9}, Lcom/vivo/common/utils/Lunar;->isLeapMonth(II[I)Z

    move-result v11

    .line 897
    .local v11, "isLeap":Z
    const/16 v18, 0x0

    aget v18, v4, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/vivo/common/utils/Lunar;->getLeapMonth(I)I

    move-result v18

    const/16 v19, 0x1

    aget v19, v4, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    if-eqz v11, :cond_9

    .line 898
    shr-int/lit8 v18, v15, 0x8

    move/from16 v0, v18

    and-int/lit16 v15, v0, 0xff

    .line 909
    :goto_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v10, v0, :cond_0

    .line 910
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_2
    if-ge v12, v5, :cond_13

    .line 911
    if-nez v10, :cond_3

    if-eqz v12, :cond_7

    .line 915
    :cond_3
    const/16 v18, 0x2

    aget v18, v4, v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-le v0, v15, :cond_e

    .line 923
    move v14, v10

    .line 924
    .local v14, "lastrow":I
    add-int/lit8 v13, v12, -0x1

    .line 925
    .local v13, "lastcol":I
    if-gez v13, :cond_4

    .line 926
    add-int/lit8 v13, v5, -0x1

    .line 927
    add-int/lit8 v14, v10, -0x1

    .line 929
    :cond_4
    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->getYear()I

    move-result v19

    aput v19, v9, v18

    .line 930
    const/16 v18, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->getMonth()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    aput v19, v9, v18

    .line 931
    const/16 v18, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v13}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->getDayAt(II)I

    move-result v19

    aput v19, v9, v18

    .line 932
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v13}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v18

    if-nez v18, :cond_5

    .line 933
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ge v10, v0, :cond_a

    .line 934
    const/16 v18, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->getMonth()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    aput v19, v9, v18

    .line 935
    const/16 v18, 0x1

    aget v19, v9, v18

    add-int/lit8 v19, v19, -0x1

    aput v19, v9, v18

    .line 936
    const/16 v18, 0x1

    aget v18, v9, v18

    if-nez v18, :cond_5

    .line 937
    const/16 v18, 0x0

    aget v19, v9, v18

    add-int/lit8 v19, v19, -0x1

    aput v19, v9, v18

    .line 938
    const/16 v18, 0x1

    const/16 v19, 0xc

    aput v19, v9, v18

    .line 953
    :cond_5
    :goto_3
    const/16 v18, 0x2

    const/16 v19, 0x1

    aput v19, v4, v18

    .line 954
    const/16 v18, 0x0

    aget v18, v4, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/vivo/common/utils/Lunar;->getLeapMonth(I)I

    move-result v18

    const/16 v19, 0x1

    aget v19, v4, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 955
    const/16 v18, 0x0

    aget v18, v4, v18

    const/16 v19, 0x1

    aget v19, v4, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v9}, Lcom/vivo/common/utils/Lunar;->isLeapMonth(II[I)Z

    move-result v11

    .line 956
    if-eqz v11, :cond_b

    .line 960
    const/16 v18, 0x1

    aget v19, v4, v18

    add-int/lit8 v19, v19, 0x1

    aput v19, v4, v18

    .line 961
    const/16 v18, 0x1

    aget v18, v4, v18

    const/16 v19, 0xc

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 962
    const/16 v18, 0x1

    const/16 v19, 0x1

    aput v19, v4, v18

    .line 963
    const/16 v18, 0x0

    aget v19, v4, v18

    add-int/lit8 v19, v19, 0x1

    aput v19, v4, v18

    .line 965
    :cond_6
    const/16 v18, 0x0

    aget v18, v4, v18

    const/16 v19, 0x1

    aget v19, v4, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/vivo/common/utils/Lunar;->LunarMonthDays(II)S

    move-result v15

    .line 966
    and-int/lit16 v15, v15, 0xff

    .line 1003
    .end local v13    # "lastcol":I
    .end local v14    # "lastrow":I
    :cond_7
    :goto_4
    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->getYear()I

    move-result v19

    aput v19, v9, v18

    .line 1004
    const/16 v18, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->getMonth()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    aput v19, v9, v18

    .line 1005
    const/16 v18, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v12}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->getDayAt(II)I

    move-result v19

    aput v19, v9, v18

    .line 1006
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v12}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v18

    if-nez v18, :cond_8

    .line 1011
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ge v10, v0, :cond_f

    .line 1015
    const/16 v18, 0x1

    aget v19, v9, v18

    add-int/lit8 v19, v19, -0x1

    aput v19, v9, v18

    .line 1016
    const/16 v18, 0x1

    aget v18, v9, v18

    if-nez v18, :cond_8

    .line 1017
    const/16 v18, 0x0

    aget v19, v9, v18

    add-int/lit8 v19, v19, -0x1

    aput v19, v9, v18

    .line 1018
    const/16 v18, 0x1

    const/16 v19, 0xc

    aput v19, v9, v18

    .line 1032
    :cond_8
    :goto_5
    const/16 v16, 0x0

    .line 1033
    .local v16, "result":Ljava/lang/String;
    const/16 v18, 0x0

    aget v18, v9, v18

    const/16 v19, 0x1

    aget v19, v9, v19

    const/16 v20, 0x2

    aget v20, v9, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/common/utils/Lunar;->getGregorianHoliday(III)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_10

    .line 1035
    aget-object v18, p2, v10

    aput-object v16, v18, v12

    .line 1036
    aget-object v18, p3, v10

    const/16 v19, 0x1

    aput-boolean v19, v18, v12

    .line 910
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 903
    .end local v10    # "i":I
    .end local v12    # "j":I
    .end local v16    # "result":Ljava/lang/String;
    :cond_9
    and-int/lit16 v15, v15, 0xff

    goto/16 :goto_0

    .line 941
    .restart local v10    # "i":I
    .restart local v12    # "j":I
    .restart local v13    # "lastcol":I
    .restart local v14    # "lastrow":I
    :cond_a
    const/16 v18, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->getMonth()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    aput v19, v9, v18

    .line 942
    const/16 v18, 0x1

    aget v19, v9, v18

    add-int/lit8 v19, v19, 0x1

    aput v19, v9, v18

    .line 943
    const/16 v18, 0x1

    aget v18, v9, v18

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 944
    const/16 v18, 0x0

    aget v19, v9, v18

    add-int/lit8 v19, v19, 0x1

    aput v19, v9, v18

    .line 945
    const/16 v18, 0x1

    const/16 v19, 0x1

    aput v19, v9, v18

    goto/16 :goto_3

    .line 968
    :cond_b
    const/16 v18, 0x0

    aget v18, v4, v18

    const/16 v19, 0x1

    aget v19, v4, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/vivo/common/utils/Lunar;->LunarMonthDays(II)S

    move-result v15

    .line 969
    shr-int/lit8 v18, v15, 0x8

    move/from16 v0, v18

    and-int/lit16 v15, v0, 0xff

    goto/16 :goto_4

    .line 975
    :cond_c
    const/16 v18, 0x1

    aget v19, v4, v18

    add-int/lit8 v19, v19, 0x1

    aput v19, v4, v18

    .line 976
    const/16 v18, 0x1

    aget v18, v4, v18

    const/16 v19, 0xc

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_d

    .line 977
    const/16 v18, 0x1

    const/16 v19, 0x1

    aput v19, v4, v18

    .line 978
    const/16 v18, 0x0

    aget v19, v4, v18

    add-int/lit8 v19, v19, 0x1

    aput v19, v4, v18

    .line 980
    :cond_d
    const/16 v18, 0x0

    aget v18, v4, v18

    const/16 v19, 0x1

    aget v19, v4, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/vivo/common/utils/Lunar;->LunarMonthDays(II)S

    move-result v15

    .line 981
    and-int/lit16 v15, v15, 0xff

    goto/16 :goto_4

    .line 991
    .end local v13    # "lastcol":I
    .end local v14    # "lastrow":I
    :cond_e
    const/16 v18, 0x2

    aget v19, v4, v18

    add-int/lit8 v19, v19, 0x1

    aput v19, v4, v18

    goto/16 :goto_4

    .line 1024
    :cond_f
    const/16 v18, 0x1

    aget v19, v9, v18

    add-int/lit8 v19, v19, 0x1

    aput v19, v9, v18

    .line 1025
    const/16 v18, 0x1

    aget v18, v9, v18

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 1026
    const/16 v18, 0x0

    aget v19, v9, v18

    add-int/lit8 v19, v19, 0x1

    aput v19, v9, v18

    .line 1027
    const/16 v18, 0x1

    const/16 v19, 0x1

    aput v19, v9, v18

    goto/16 :goto_5

    .line 1049
    .restart local v16    # "result":Ljava/lang/String;
    :cond_10
    const/16 v18, 0x0

    aget v18, v4, v18

    const/16 v19, 0x1

    aget v19, v4, v19

    const/16 v20, 0x2

    aget v20, v4, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/vivo/common/utils/Lunar;->getLunarHolidayByLunar(III[I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_11

    .line 1051
    aget-object v18, p2, v10

    aput-object v16, v18, v12

    .line 1052
    aget-object v18, p3, v10

    const/16 v19, 0x1

    aput-boolean v19, v18, v12

    goto/16 :goto_6

    .line 1057
    :cond_11
    const/16 v18, 0x0

    aget v18, v9, v18

    const/16 v19, 0x1

    aget v19, v9, v19

    const/16 v20, 0x2

    aget v20, v9, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/common/utils/Lunar;->getSolarTermString(III)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_12

    .line 1059
    aget-object v18, p2, v10

    aput-object v16, v18, v12

    .line 1060
    aget-object v18, p3, v10

    const/16 v19, 0x1

    aput-boolean v19, v18, v12

    goto/16 :goto_6

    .line 1064
    :cond_12
    aget-object v18, p3, v10

    const/16 v19, 0x0

    aput-boolean v19, v18, v12

    .line 1065
    aget-object v18, p2, v10

    const/16 v19, 0x0

    aget v19, v4, v19

    const/16 v20, 0x1

    aget v20, v4, v20

    const/16 v21, 0x2

    aget v21, v4, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/common/utils/Lunar;->getLunarDayString(III)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v18, v12

    goto/16 :goto_6

    .line 909
    .end local v16    # "result":Ljava/lang/String;
    :cond_13
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1
.end method

.method private getSolarTermIndex([I)I
    .locals 9
    .param p1, "gregorian_date"    # [I

    .prologue
    const/16 v8, 0xf

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 500
    sget-object v4, Lcom/vivo/common/utils/Lunar;->mSolarTerms:[S

    aget v5, p1, v3

    add-int/lit16 v5, v5, -0x76d

    mul-int/lit8 v5, v5, 0xc

    aget v6, p1, v2

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    aget-short v1, v4, v5

    .line 502
    .local v1, "flag":S
    aget v4, p1, v7

    if-ge v4, v8, :cond_1

    .line 503
    shr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0xf

    rsub-int/lit8 v0, v4, 0xf

    .line 506
    .local v0, "day":I
    :goto_0
    aget v4, p1, v7

    if-ne v4, v0, :cond_0

    .line 507
    aget v4, p1, v2

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v5, p1, v7

    if-le v5, v8, :cond_2

    :goto_1
    add-int v3, v4, v2

    .line 509
    :cond_0
    return v3

    .line 505
    .end local v0    # "day":I
    :cond_1
    and-int/lit8 v4, v1, 0xf

    add-int/lit8 v0, v4, 0xf

    .restart local v0    # "day":I
    goto :goto_0

    :cond_2
    move v2, v3

    .line 507
    goto :goto_1
.end method

.method private static init(Landroid/content/res/Resources;)V
    .locals 4
    .param p0, "Rs"    # Landroid/content/res/Resources;

    .prologue
    .line 1462
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 1496
    :goto_0
    return-void

    .line 1465
    :cond_0
    move-object v0, p0

    .line 1466
    .local v0, "rs":Landroid/content/res/Resources;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    .line 1467
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e006e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201bf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e006f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201c4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e0070

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201c5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e0071

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201aa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e0072

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201b6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e0073

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201c3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e0074

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201b3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e0075

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201b9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e0076

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201c6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e0077

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201ab

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e0078

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201b4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e0079

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201c1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e007a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201be

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e007c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201b7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e007d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201ad

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e007e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201ac

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e007f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201bd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e0080

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201b5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e0081

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201c0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e0082

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201ba

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e0083

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201b2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e0084

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201b1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e0085

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201bc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e0086

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201b0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e0087

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201b8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e0088

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201ae

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e0089

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201bb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e008a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201af

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    sget-object v1, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    const v2, 0x30e008c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x30201c2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private isLeapMonth(II[I)Z
    .locals 12
    .param p1, "iLunarYear"    # I
    .param p2, "iLunarMonth"    # I
    .param p3, "iGregorianDate"    # [I

    .prologue
    const/4 v11, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 331
    new-array v2, v11, [I

    .line 332
    .local v2, "curLunarDate":[I
    const-wide/16 v4, 0x0

    .line 333
    .local v4, "iSpanDays":J
    const/4 v7, 0x0

    .line 334
    .local v7, "tmp":S
    const/4 v3, 0x0

    .line 335
    .local v3, "days":I
    const/4 v0, 0x0

    .local v0, "LunarMonth1":I
    const/4 v1, 0x0

    .line 337
    .local v1, "LunarMonth2":I
    invoke-direct {p0, p1, p2}, Lcom/vivo/common/utils/Lunar;->LunarMonthDays(II)S

    move-result v7

    .line 338
    shr-int/lit8 v10, v7, 0x8

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v3, v10

    .line 339
    and-int/lit16 v10, v7, 0xff

    add-int/2addr v3, v10

    .line 341
    new-array v6, v11, [I

    .line 342
    .local v6, "startDate":[I
    const/16 v10, 0x76d

    aput v10, v6, v9

    .line 343
    aput v8, v6, v8

    .line 344
    const/4 v10, 0x2

    aput v8, v6, v10

    .line 348
    invoke-direct {p0, v6, p3}, Lcom/vivo/common/utils/Lunar;->CalcDateDiff([I[I)J

    move-result-wide v4

    .line 350
    invoke-direct {p0, v4, v5, v2}, Lcom/vivo/common/utils/Lunar;->CalcLunarDate(J[I)V

    .line 351
    aget v0, v2, v8

    .line 355
    int-to-long v10, v3

    add-long/2addr v10, v4

    invoke-direct {p0, v10, v11, v2}, Lcom/vivo/common/utils/Lunar;->CalcLunarDate(J[I)V

    .line 356
    aget v1, v2, v8

    .line 362
    sub-int v10, v1, v0

    if-eq v10, v8, :cond_0

    .line 365
    :goto_0
    return v8

    :cond_0
    move v8, v9

    goto :goto_0
.end method

.method private isLeapYear(I)Z
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 325
    rem-int/lit16 v0, p1, 0x190

    if-eqz v0, :cond_0

    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p1, 0x64

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setId(Landroid/text/format/Time;)V
    .locals 8
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    const/4 v7, -0x1

    .line 1276
    iget v4, p1, Landroid/text/format/Time;->year:I

    iget v5, p1, Landroid/text/format/Time;->month:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/vivo/common/utils/Lunar;->getGregorianHoliday(III)Ljava/lang/String;

    move-result-object v0

    .line 1277
    .local v0, "gregholiday":Ljava/lang/String;
    iget v4, p1, Landroid/text/format/Time;->year:I

    iget v5, p1, Landroid/text/format/Time;->month:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/vivo/common/utils/Lunar;->getLunarHolidayByGregorian(III)Ljava/lang/String;

    move-result-object v2

    .line 1278
    .local v2, "lunarholiday":Ljava/lang/String;
    iget v4, p1, Landroid/text/format/Time;->year:I

    iget v5, p1, Landroid/text/format/Time;->month:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/vivo/common/utils/Lunar;->getSolarTermString(III)Ljava/lang/String;

    move-result-object v3

    .line 1280
    .local v3, "solar_term":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1281
    .local v1, "holiday":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    sput-object v4, Lcom/vivo/common/utils/Lunar;->mRes:Landroid/content/res/Resources;

    .line 1283
    if-eqz v0, :cond_0

    sget-object v4, Lcom/vivo/common/utils/Lunar;->mRes:Landroid/content/res/Resources;

    const v5, 0x30e008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    .line 1284
    :cond_1
    if-eqz v2, :cond_5

    move-object v1, v2

    .line 1286
    :cond_2
    :goto_0
    sget-object v4, Lcom/vivo/common/utils/Lunar;->mRes:Landroid/content/res/Resources;

    const v5, 0x30e0073

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/vivo/common/utils/Lunar;->mRes:Landroid/content/res/Resources;

    const v5, 0x30e0089

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/vivo/common/utils/Lunar;->mRes:Landroid/content/res/Resources;

    const v5, 0x30e008a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1289
    :cond_3
    move-object v1, v3

    .line 1291
    :cond_4
    if-nez v1, :cond_6

    .line 1292
    sput v7, Lcom/vivo/common/utils/Lunar;->oldLockSreenId:I

    .line 1303
    :goto_1
    return-void

    :cond_5
    move-object v1, v0

    .line 1284
    goto :goto_0

    .line 1296
    :cond_6
    sget-object v4, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1298
    sget-object v4, Lcom/vivo/common/utils/Lunar;->hashHoliday:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/vivo/common/utils/Lunar;->oldLockSreenId:I

    goto :goto_1

    .line 1300
    :cond_7
    sput v7, Lcom/vivo/common/utils/Lunar;->oldLockSreenId:I

    goto :goto_1
.end method


# virtual methods
.method public getGregorianDate(III)[I
    .locals 1
    .param p1, "lunar_year"    # I
    .param p2, "lunar_month"    # I
    .param p3, "lunar_day"    # I

    .prologue
    .line 579
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGregorianHoliday(III)Ljava/lang/String;
    .locals 9
    .param p1, "gregorian_year"    # I
    .param p2, "gregorian_month"    # I
    .param p3, "gregorian_day"    # I

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 809
    if-eq p2, v8, :cond_0

    const/4 v5, 0x6

    if-eq p2, v5, :cond_0

    const/16 v5, 0xb

    if-ne p2, v5, :cond_3

    .line 810
    :cond_0
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 811
    .local v4, "time":Landroid/text/format/Time;
    iput p1, v4, Landroid/text/format/Time;->year:I

    .line 812
    add-int/lit8 v5, p2, -0x1

    iput v5, v4, Landroid/text/format/Time;->month:I

    .line 813
    iput p3, v4, Landroid/text/format/Time;->monthDay:I

    .line 814
    invoke-virtual {v4, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 815
    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v5, v5, -0x1

    div-int/lit8 v3, v5, 0x7

    .line 816
    .local v3, "order":I
    iget v5, v4, Landroid/text/format/Time;->month:I

    if-ne v5, v7, :cond_1

    if-ne v3, v6, :cond_1

    iget v5, v4, Landroid/text/format/Time;->weekDay:I

    if-nez v5, :cond_1

    .line 817
    sget-object v5, Lcom/vivo/common/utils/Lunar;->mRes:Landroid/content/res/Resources;

    const v6, 0x30e006c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 836
    .end local v3    # "order":I
    .end local v4    # "time":Landroid/text/format/Time;
    :goto_0
    return-object v5

    .line 820
    .restart local v3    # "order":I
    .restart local v4    # "time":Landroid/text/format/Time;
    :cond_1
    iget v5, v4, Landroid/text/format/Time;->month:I

    if-ne v5, v8, :cond_2

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    iget v5, v4, Landroid/text/format/Time;->weekDay:I

    if-nez v5, :cond_2

    .line 821
    sget-object v5, Lcom/vivo/common/utils/Lunar;->mRes:Landroid/content/res/Resources;

    const v6, 0x30e006d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 824
    :cond_2
    iget v5, v4, Landroid/text/format/Time;->month:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    iget v5, v4, Landroid/text/format/Time;->weekDay:I

    if-ne v5, v7, :cond_3

    .line 825
    sget-object v5, Lcom/vivo/common/utils/Lunar;->mRes:Landroid/content/res/Resources;

    const v6, 0x30e008c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 830
    .end local v3    # "order":I
    .end local v4    # "time":Landroid/text/format/Time;
    :cond_3
    sget-object v5, Lcom/vivo/common/utils/Lunar;->mRes:Landroid/content/res/Resources;

    iget-object v6, p0, Lcom/vivo/common/utils/Lunar;->mSimpleGregorianHolidayDateArray:[Ljava/lang/Integer;

    add-int/lit8 v7, p2, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 831
    .local v0, "dateArray":[I
    sget-object v5, Lcom/vivo/common/utils/Lunar;->mRes:Landroid/content/res/Resources;

    iget-object v6, p0, Lcom/vivo/common/utils/Lunar;->mSimpleGregorianHolidayArray:[Ljava/lang/Integer;

    add-int/lit8 v7, p2, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, "holidayArray":[Ljava/lang/String;
    invoke-static {v0, p3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    .line 833
    .local v2, "index":I
    if-ltz v2, :cond_4

    .line 834
    aget-object v5, v1, v2

    goto :goto_0

    .line 836
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getHolidayId(J)I
    .locals 13
    .param p1, "lockscreenchange"    # J

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1226
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 1227
    .local v5, "today":Landroid/text/format/Time;
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 1228
    invoke-virtual {v5, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 1229
    .local v2, "millis":J
    iget-wide v6, v5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 1231
    .local v1, "day":I
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 1232
    .local v4, "screenChangeTime":Landroid/text/format/Time;
    invoke-virtual {v4, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 1233
    invoke-virtual {v4, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v6

    iget-wide v8, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 1237
    .local v0, "changeDay":I
    const-string v6, "Lunar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getHolidayId before setId lockscreenchange="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",Today="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/vivo/common/utils/Lunar;->Today:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",day="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",changeDay="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",LockScreenChangeTimeAfterNow="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/vivo/common/utils/Lunar;->LockScreenChangeTimeAfterNow:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",lastScreenChangeDay="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/vivo/common/utils/Lunar;->lastScreenChangeDay:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",oldLockSreenId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/vivo/common/utils/Lunar;->oldLockSreenId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    sget v6, Lcom/vivo/common/utils/Lunar;->Today:I

    if-eqz v6, :cond_0

    sget v6, Lcom/vivo/common/utils/Lunar;->Today:I

    if-eq v6, v1, :cond_1

    .line 1246
    :cond_0
    sput v1, Lcom/vivo/common/utils/Lunar;->Today:I

    .line 1247
    invoke-direct {p0, v5}, Lcom/vivo/common/utils/Lunar;->setId(Landroid/text/format/Time;)V

    .line 1250
    const-string v6, "Lunar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getHolidayId after setId lockscreenchange="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",Today="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/vivo/common/utils/Lunar;->Today:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",day="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",changeDay="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",LockScreenChangeTimeAfterNow="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/vivo/common/utils/Lunar;->LockScreenChangeTimeAfterNow:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",lastScreenChangeDay="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/vivo/common/utils/Lunar;->lastScreenChangeDay:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",oldLockSreenId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/vivo/common/utils/Lunar;->oldLockSreenId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    :cond_1
    sget v6, Lcom/vivo/common/utils/Lunar;->Today:I

    if-le v0, v6, :cond_4

    .line 1261
    sput-boolean v10, Lcom/vivo/common/utils/Lunar;->LockScreenChangeTimeAfterNow:Z

    .line 1265
    :cond_2
    :goto_0
    sget-wide v6, Lcom/vivo/common/utils/Lunar;->lastScreenChangeDay:J

    cmp-long v6, p1, v6

    if-eqz v6, :cond_3

    .line 1266
    sput-boolean v11, Lcom/vivo/common/utils/Lunar;->LockScreenChangeTimeAfterNow:Z

    .line 1267
    sput-wide p1, Lcom/vivo/common/utils/Lunar;->lastScreenChangeDay:J

    .line 1269
    :cond_3
    sget v6, Lcom/vivo/common/utils/Lunar;->Today:I

    if-ne v0, v6, :cond_5

    sget-boolean v6, Lcom/vivo/common/utils/Lunar;->LockScreenChangeTimeAfterNow:Z

    if-nez v6, :cond_5

    .line 1270
    const/4 v6, -0x1

    .line 1272
    :goto_1
    return v6

    .line 1262
    :cond_4
    sget v6, Lcom/vivo/common/utils/Lunar;->Today:I

    if-ge v0, v6, :cond_2

    .line 1263
    sput-boolean v11, Lcom/vivo/common/utils/Lunar;->LockScreenChangeTimeAfterNow:Z

    goto :goto_0

    .line 1272
    :cond_5
    sget v6, Lcom/vivo/common/utils/Lunar;->oldLockSreenId:I

    goto :goto_1
.end method

.method public getLunarAnimalYear(III)Ljava/lang/String;
    .locals 4
    .param p1, "gregorian_year"    # I
    .param p2, "gregorian_month"    # I
    .param p3, "gregorian_day"    # I

    .prologue
    .line 595
    invoke-virtual {p0, p1, p2, p3}, Lcom/vivo/common/utils/Lunar;->getLunarDate(III)[I

    move-result-object v0

    .line 596
    .local v0, "lunarDate":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/vivo/common/utils/Lunar;->animalYears:[Ljava/lang/String;

    const/4 v3, 0x0

    aget v3, v0, v3

    rem-int/lit8 v3, v3, 0xc

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getLunarDate(III)[I
    .locals 10
    .param p1, "gregorian_year"    # I
    .param p2, "gregorian_month"    # I
    .param p3, "gregorian_day"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 549
    new-array v4, v7, [I

    .line 550
    .local v4, "startDate":[I
    const/16 v5, 0x76d

    aput v5, v4, v8

    .line 551
    aput v6, v4, v6

    .line 552
    aput v6, v4, v9

    .line 554
    new-array v0, v7, [I

    .line 555
    .local v0, "endDate":[I
    aput p1, v0, v8

    .line 556
    aput p2, v0, v6

    .line 557
    aput p3, v0, v9

    .line 559
    invoke-direct {p0, v4, v0}, Lcom/vivo/common/utils/Lunar;->CalcDateDiff([I[I)J

    move-result-wide v2

    .line 561
    .local v2, "iSpanDays":J
    new-array v1, v7, [I

    .line 562
    .local v1, "lunarDate":[I
    invoke-direct {p0, v2, v3, v1}, Lcom/vivo/common/utils/Lunar;->CalcLunarDate(J[I)V

    .line 568
    return-object v1
.end method

.method public getLunarDateString(IIII)Ljava/lang/String;
    .locals 9
    .param p1, "gregorian_year"    # I
    .param p2, "gregorian_month"    # I
    .param p3, "gregorian_day"    # I
    .param p4, "format"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 653
    invoke-virtual {p0, p1, p2, p3}, Lcom/vivo/common/utils/Lunar;->getLunarDate(III)[I

    move-result-object v2

    .line 661
    .local v2, "lunarDate":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 662
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/vivo/common/utils/Lunar;->celestialStem:[Ljava/lang/String;

    aget v5, v2, v7

    rem-int/lit8 v5, v5, 0xa

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    iget-object v4, p0, Lcom/vivo/common/utils/Lunar;->terrestrialBranch:[Ljava/lang/String;

    aget v5, v2, v7

    rem-int/lit8 v5, v5, 0xc

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    sget v4, Lcom/vivo/common/utils/Lunar;->LUNAR_DATE_STRING_LENGTH_LONG:I

    if-ne p4, v4, :cond_0

    .line 665
    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 666
    iget-object v4, p0, Lcom/vivo/common/utils/Lunar;->animalYears:[Ljava/lang/String;

    aget v5, v2, v7

    rem-int/lit8 v5, v5, 0xc

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 669
    :cond_0
    const-string v4, "\u5e74"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    const/4 v4, 0x3

    new-array v0, v4, [I

    .line 676
    .local v0, "gregorianDate":[I
    aput p1, v0, v7

    .line 677
    aput p2, v0, v6

    .line 678
    aput p3, v0, v8

    .line 685
    aget v4, v2, v7

    invoke-direct {p0, v4}, Lcom/vivo/common/utils/Lunar;->getLeapMonth(I)I

    move-result v4

    aget v5, v2, v6

    if-ne v4, v5, :cond_3

    .line 686
    const/4 v1, 0x0

    .line 687
    .local v1, "isLeap":Z
    aget v4, v2, v7

    aget v5, v2, v6

    invoke-direct {p0, v4, v5, v0}, Lcom/vivo/common/utils/Lunar;->isLeapMonth(II[I)Z

    move-result v1

    .line 688
    if-eqz v1, :cond_2

    .line 689
    const-string v4, "\u95f0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    aget v4, v2, v6

    if-ne v4, v6, :cond_1

    .line 691
    const-string v4, "\u4e00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .end local v1    # "isLeap":Z
    :goto_0
    const-string v4, "\u6708"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    aget v4, v2, v8

    const/16 v5, 0x14

    if-eq v4, v5, :cond_4

    aget v4, v2, v8

    const/16 v5, 0x1e

    if-eq v4, v5, :cond_4

    .line 704
    iget-object v4, p0, Lcom/vivo/common/utils/Lunar;->lunarDayPrefix:[Ljava/lang/String;

    aget v5, v2, v8

    add-int/lit8 v5, v5, -0x1

    div-int/lit8 v5, v5, 0xa

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    iget-object v4, p0, Lcom/vivo/common/utils/Lunar;->lunarDaySuffix:[Ljava/lang/String;

    aget v5, v2, v8

    add-int/lit8 v5, v5, -0x1

    rem-int/lit8 v5, v5, 0xa

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 693
    .restart local v1    # "isLeap":Z
    :cond_1
    iget-object v4, p0, Lcom/vivo/common/utils/Lunar;->lunarMonths:[Ljava/lang/String;

    aget v5, v2, v6

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 695
    :cond_2
    iget-object v4, p0, Lcom/vivo/common/utils/Lunar;->lunarMonths:[Ljava/lang/String;

    aget v5, v2, v6

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 698
    .end local v1    # "isLeap":Z
    :cond_3
    iget-object v4, p0, Lcom/vivo/common/utils/Lunar;->lunarMonths:[Ljava/lang/String;

    aget v5, v2, v6

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 709
    :cond_4
    iget-object v4, p0, Lcom/vivo/common/utils/Lunar;->lunarDayPrefix:[Ljava/lang/String;

    aget v5, v2, v8

    div-int/lit8 v5, v5, 0xa

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    iget-object v4, p0, Lcom/vivo/common/utils/Lunar;->lunarDaySuffix:[Ljava/lang/String;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getLunarDay(III)Ljava/lang/String;
    .locals 5
    .param p1, "gregorian_year"    # I
    .param p2, "gregorian_month"    # I
    .param p3, "gregorian_day"    # I

    .prologue
    const/4 v4, 0x2

    .line 635
    invoke-virtual {p0, p1, p2, p3}, Lcom/vivo/common/utils/Lunar;->getLunarDate(III)[I

    move-result-object v0

    .line 636
    .local v0, "lunarDate":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 637
    .local v1, "sb":Ljava/lang/StringBuilder;
    aget v2, v0, v4

    const/16 v3, 0x14

    if-eq v2, v3, :cond_0

    aget v2, v0, v4

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_0

    .line 639
    iget-object v2, p0, Lcom/vivo/common/utils/Lunar;->lunarDayPrefix:[Ljava/lang/String;

    aget v3, v0, v4

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    iget-object v2, p0, Lcom/vivo/common/utils/Lunar;->lunarDaySuffix:[Ljava/lang/String;

    aget v3, v0, v4

    add-int/lit8 v3, v3, -0x1

    rem-int/lit8 v3, v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 644
    :cond_0
    iget-object v2, p0, Lcom/vivo/common/utils/Lunar;->lunarDayPrefix:[Ljava/lang/String;

    aget v3, v0, v4

    div-int/lit8 v3, v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    iget-object v2, p0, Lcom/vivo/common/utils/Lunar;->lunarDaySuffix:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getLunarHolidayByGregorian(III)Ljava/lang/String;
    .locals 8
    .param p1, "gregorian_year"    # I
    .param p2, "gregorian_month"    # I
    .param p3, "gregorian_day"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 749
    const/4 v2, 0x0

    .line 750
    .local v2, "lunarDate":[I
    invoke-virtual {p0, p1, p2, p3}, Lcom/vivo/common/utils/Lunar;->getLunarDate(III)[I

    move-result-object v2

    .line 753
    const/4 v3, 0x3

    new-array v0, v3, [I

    .line 754
    .local v0, "gregorianDate":[I
    aput p1, v0, v5

    .line 755
    aput p2, v0, v6

    .line 756
    aput p3, v0, v7

    .line 757
    aget v3, v2, v5

    invoke-direct {p0, v3}, Lcom/vivo/common/utils/Lunar;->getLeapMonth(I)I

    move-result v3

    aget v4, v2, v6

    if-ne v3, v4, :cond_0

    .line 758
    const/4 v1, 0x0

    .line 759
    .local v1, "isLeap":Z
    aget v3, v2, v5

    aget v4, v2, v6

    invoke-direct {p0, v3, v4, v0}, Lcom/vivo/common/utils/Lunar;->isLeapMonth(II[I)Z

    move-result v1

    .line 760
    if-eqz v1, :cond_0

    .line 761
    const/4 v3, 0x0

    .line 772
    .end local v1    # "isLeap":Z
    :goto_0
    return-object v3

    .line 766
    :cond_0
    aget v3, v2, v6

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 767
    aget v3, v2, v7

    aget v4, v2, v5

    aget v5, v2, v6

    invoke-direct {p0, v4, v5}, Lcom/vivo/common/utils/Lunar;->LunarMonthDays(II)S

    move-result v4

    if-ne v3, v4, :cond_1

    .line 768
    sget-object v3, Lcom/vivo/common/utils/Lunar;->mRes:Landroid/content/res/Resources;

    const v4, 0x30e006b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 772
    :cond_1
    aget v3, v2, v6

    aget v4, v2, v7

    invoke-direct {p0, v3, v4}, Lcom/vivo/common/utils/Lunar;->calLunarHoliday(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getLunarHolidayByLunar(III[I)Ljava/lang/String;
    .locals 3
    .param p1, "lunarYear"    # I
    .param p2, "lunayMonth"    # I
    .param p3, "lunayDay"    # I
    .param p4, "gregorianDate"    # [I

    .prologue
    .line 783
    invoke-direct {p0, p1}, Lcom/vivo/common/utils/Lunar;->getLeapMonth(I)I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 784
    const/4 v0, 0x0

    .line 785
    .local v0, "isLeap":Z
    invoke-direct {p0, p1, p2, p4}, Lcom/vivo/common/utils/Lunar;->isLeapMonth(II[I)Z

    move-result v0

    .line 786
    if-eqz v0, :cond_0

    .line 787
    const/4 v1, 0x0

    .line 798
    .end local v0    # "isLeap":Z
    :goto_0
    return-object v1

    .line 792
    :cond_0
    const/16 v1, 0xc

    if-ne p2, v1, :cond_1

    .line 793
    invoke-direct {p0, p1, p2}, Lcom/vivo/common/utils/Lunar;->LunarMonthDays(II)S

    move-result v1

    if-ne p3, v1, :cond_1

    .line 794
    sget-object v1, Lcom/vivo/common/utils/Lunar;->mRes:Landroid/content/res/Resources;

    const v2, 0x30e006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 798
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/vivo/common/utils/Lunar;->calLunarHoliday(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLunarMonth(III)Ljava/lang/String;
    .locals 8
    .param p1, "gregorian_year"    # I
    .param p2, "gregorian_month"    # I
    .param p3, "gregorian_day"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 604
    invoke-virtual {p0, p1, p2, p3}, Lcom/vivo/common/utils/Lunar;->getLunarDate(III)[I

    move-result-object v2

    .line 605
    .local v2, "lunarDate":[I
    const/4 v4, 0x3

    new-array v0, v4, [I

    .line 606
    .local v0, "gregorianDate":[I
    aput p1, v0, v7

    .line 607
    aput p2, v0, v6

    .line 608
    const/4 v4, 0x2

    aput p3, v0, v4

    .line 610
    const/4 v1, 0x0

    .line 611
    .local v1, "isLeap":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 612
    .local v3, "sb":Ljava/lang/StringBuilder;
    aget v4, v2, v7

    aget v5, v2, v6

    invoke-direct {p0, v4, v5, v0}, Lcom/vivo/common/utils/Lunar;->isLeapMonth(II[I)Z

    move-result v1

    .line 619
    aget v4, v2, v7

    invoke-direct {p0, v4}, Lcom/vivo/common/utils/Lunar;->getLeapMonth(I)I

    move-result v4

    aget v5, v2, v6

    if-ne v4, v5, :cond_1

    if-eqz v1, :cond_1

    .line 620
    const-string v4, "\u95f0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    aget v4, v2, v6

    if-ne v4, v6, :cond_0

    .line 622
    const-string v4, "\u4e00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 624
    :cond_0
    iget-object v4, p0, Lcom/vivo/common/utils/Lunar;->lunarMonths:[Ljava/lang/String;

    aget v5, v2, v6

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 627
    :cond_1
    iget-object v4, p0, Lcom/vivo/common/utils/Lunar;->lunarMonths:[Ljava/lang/String;

    aget v5, v2, v6

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getLunarYear(III)Ljava/lang/String;
    .locals 5
    .param p1, "gregorian_year"    # I
    .param p2, "gregorian_month"    # I
    .param p3, "gregorian_day"    # I

    .prologue
    const/4 v4, 0x0

    .line 585
    invoke-virtual {p0, p1, p2, p3}, Lcom/vivo/common/utils/Lunar;->getLunarDate(III)[I

    move-result-object v0

    .line 586
    .local v0, "lunarDate":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/vivo/common/utils/Lunar;->celestialStem:[Ljava/lang/String;

    aget v3, v0, v4

    rem-int/lit8 v3, v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    iget-object v2, p0, Lcom/vivo/common/utils/Lunar;->terrestrialBranch:[Ljava/lang/String;

    aget v3, v0, v4

    rem-int/lit8 v3, v3, 0xc

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getSolarTermString(III)Ljava/lang/String;
    .locals 5
    .param p1, "gregorian_year"    # I
    .param p2, "gregorian_month"    # I
    .param p3, "gregorian_day"    # I

    .prologue
    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 721
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x3

    new-array v0, v3, [I

    .line 722
    .local v0, "gregorian_date":[I
    const/4 v3, 0x0

    aput p1, v0, v3

    .line 723
    const/4 v3, 0x1

    aput p2, v0, v3

    .line 724
    const/4 v3, 0x2

    aput p3, v0, v3

    .line 725
    invoke-direct {p0, v0}, Lcom/vivo/common/utils/Lunar;->getSolarTermIndex([I)I

    move-result v2

    .line 726
    .local v2, "solarTermIndex":I
    if-eqz v2, :cond_0

    .line 728
    iget-object v3, p0, Lcom/vivo/common/utils/Lunar;->solarTermStrings:[Ljava/lang/String;

    add-int/lit8 v4, v2, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 732
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
