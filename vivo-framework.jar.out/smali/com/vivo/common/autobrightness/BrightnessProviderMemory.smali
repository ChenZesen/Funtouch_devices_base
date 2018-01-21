.class public Lcom/vivo/common/autobrightness/BrightnessProviderMemory;
.super Lcom/vivo/common/autobrightness/BrightnessProvider;
.source "BrightnessProviderMemory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/autobrightness/BrightnessProviderMemory$SettingsObserver;,
        Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;,
        Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;,
        Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;
    }
.end annotation


# static fields
.field private static final ALS_MEMORY_SOLUTION:I

.field private static final CORRECTION_DELAY_QUICK_TIME:I = 0x9c4

.field private static final CORRECTION_DELAY_TIME:I = 0x3a98

.field private static final LUX_FLOATING_HT:F = 1.15f

.field private static final LUX_FLOATING_LT:F = 0.85f

.field private static final MEMORY_POINT_SIZE:I

.field private static final TAG:Ljava/lang/String; = "BrightnessProviderMemory"

.field private static final mProductModel:Ljava/lang/String;

.field private static final mUseAlsMemory:Z


# instance fields
.field private mCollectUseData:Lcom/vivo/common/autobrightness/CollectUseData;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCorrectionHandler:Landroid/os/Handler;

.field private mCorrectionRunnable:Ljava/lang/Runnable;

.field private mDefaultBrightness:[I

.field private mDoCorrection:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasInited:Z

.field private mHasUserModification:Z

.field private mLock:Ljava/lang/Object;

.field private mMaxBrightnessLevel:I

.field private mModifiedBrightness:[I

.field private mPendingCorrectionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/common/autobrightness/InfoPair;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingLock:Ljava/lang/Object;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRecordModificationInfos:[Ljava/lang/String;

.field private mSettingsObserver:Lcom/vivo/common/autobrightness/BrightnessProviderMemory$SettingsObserver;

.field private mSuperPowerBrightness:[I

.field private mSuperPowerSavingOn:Z

.field private mThread:Landroid/os/HandlerThread;

.field private mUserModificationHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseAlsMemory()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUseAlsMemory:Z

    .line 24
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getAlsMemorySolution()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->ALS_MEMORY_SOLUTION:I

    .line 25
    sget v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->ALS_MEMORY_SOLUTION:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    :goto_0
    sput v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->MEMORY_POINT_SIZE:I

    .line 30
    const-string v0, "ro.product.model.bbk"

    const-string v1, "unkown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mProductModel:Ljava/lang/String;

    return-void

    .line 25
    :cond_0
    sget v0, Lcom/vivo/common/autobrightness/RecordInfo;->ID_COUNT:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/BrightnessProvider;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mLock:Ljava/lang/Object;

    .line 54
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDoCorrection:Z

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->MEMORY_POINT_SIZE:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPendingCorrectionList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPendingLock:Ljava/lang/Object;

    .line 60
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mSuperPowerSavingOn:Z

    .line 69
    sget v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->MEMORY_POINT_SIZE:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mRecordModificationInfos:[Ljava/lang/String;

    .line 70
    sget v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->MEMORY_POINT_SIZE:I

    new-array v0, v0, [Lcom/vivo/common/autobrightness/AutobrightInfo;

    iput-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    .line 71
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mHasUserModification:Z

    .line 75
    new-instance v0, Ljava/util/HashMap;

    sget v1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->MEMORY_POINT_SIZE:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationHashMap:Ljava/util/HashMap;

    .line 76
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mHasInited:Z

    .line 224
    new-instance v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$1;

    invoke-direct {v0, p0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$1;-><init>(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mCorrectionRunnable:Ljava/lang/Runnable;

    .line 162
    iput-object p1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mContext:Landroid/content/Context;

    .line 163
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPowerManager:Landroid/os/PowerManager;

    .line 164
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "BrightnessProviderMemory"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 169
    :goto_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BrightnessProviderMemory"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mThread:Landroid/os/HandlerThread;

    .line 170
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 171
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mHandler:Landroid/os/Handler;

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mContentResolver:Landroid/content/ContentResolver;

    .line 173
    new-instance v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$SettingsObserver;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$SettingsObserver;-><init>(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mSettingsObserver:Lcom/vivo/common/autobrightness/BrightnessProviderMemory$SettingsObserver;

    .line 174
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mCorrectionHandler:Landroid/os/Handler;

    .line 175
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/common/autobrightness/CollectUseData;->getInstance(Landroid/content/Context;Landroid/os/Looper;)Lcom/vivo/common/autobrightness/CollectUseData;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mCollectUseData:Lcom/vivo/common/autobrightness/CollectUseData;

    .line 177
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->initDefautBrightness(Landroid/content/Context;)V

    .line 178
    sget-boolean v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUseAlsMemory:Z

    if-eqz v0, :cond_1

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->handleSettingsChangedLocked(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->registerObserver()V

    .line 187
    :goto_1
    return-void

    .line 167
    :cond_0
    const-string v0, "BrightnessProviderMemory"

    const-string v1, "newWakeLock failed,as mPowerManager is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_1
    const-string v0, "BrightnessProviderMemory"

    const-string v1, "AutoBrightnessWARNING: not use AlsMemory but called constructor of BrightnessProviderMemory."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/BrightnessProviderMemory;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->correctModificationInfos()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/BrightnessProviderMemory;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/BrightnessProviderMemory;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/BrightnessProviderMemory;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->handleSettingsChangedLocked(Ljava/lang/String;)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string v0, "BrightnessProviderMemory"

    const-string v1, "acquireWakeLock failed: mWakeLock is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addToPedingList(Lcom/vivo/common/autobrightness/InfoPair;)V
    .locals 2
    .param p1, "info"    # Lcom/vivo/common/autobrightness/InfoPair;

    .prologue
    .line 235
    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPendingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPendingCorrectionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    monitor-exit v1

    .line 238
    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private adjustScreenLevel(Lcom/vivo/common/autobrightness/AutobrightInfo;)I
    .locals 5
    .param p1, "abInfo"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 319
    const/4 v0, -0x1

    .line 320
    .local v0, "adjust":I
    iget v2, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 321
    const/4 v2, -0x1

    .line 344
    :goto_0
    return v2

    .line 323
    :cond_0
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 324
    const/4 v1, 0x7

    .local v1, "id":I
    :goto_1
    sget v2, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->MEMORY_POINT_SIZE:I

    if-ge v1, v2, :cond_5

    .line 325
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationHashMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 324
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 328
    :cond_2
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v2, v2, v1

    if-nez v2, :cond_3

    .line 329
    const-string v2, "BrightnessProviderMemory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "warning: adjustScreenLevel mUserModificationInfos["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 332
    :cond_3
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    iget v3, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    invoke-direct {p0, v2, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->isLuxAroundRecord(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v2, v2, v1

    iget v0, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    .line 334
    iget v2, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    if-ge v2, v0, :cond_4

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustScreenLevel from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as lux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ID_MID\'s lux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBrightness change abInfo.mScreenLevel from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 338
    iput v0, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    :cond_4
    move v2, v0

    .line 340
    goto/16 :goto_0

    .end local v1    # "id":I
    :cond_5
    move v2, v0

    .line 344
    goto/16 :goto_0
.end method

.method private arrayToSimpleString([I)Ljava/lang/String;
    .locals 4
    .param p1, "array"    # [I

    .prologue
    .line 1185
    if-nez p1, :cond_0

    .line 1186
    const-string v1, "null"

    .line 1193
    :goto_0
    return-object v1

    .line 1188
    :cond_0
    const-string v1, "{"

    .line 1189
    .local v1, "temp":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 1190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1189
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1192
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1193
    goto :goto_0
.end method

.method private arrayToString([I)Ljava/lang/String;
    .locals 4
    .param p1, "array"    # [I

    .prologue
    .line 1173
    if-nez p1, :cond_0

    .line 1174
    const-string v1, "null"

    .line 1181
    :goto_0
    return-object v1

    .line 1176
    :cond_0
    const-string v1, "{"

    .line 1177
    .local v1, "temp":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 1178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1180
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1181
    goto :goto_0
.end method

.method private collectMemoryParamter()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    .line 1197
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isCollectMemoryParameter()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1198
    const-string v2, "collectMemoryParamter: not configed."

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 1226
    :goto_0
    return-void

    .line 1201
    :cond_0
    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mHasInited:Z

    if-nez v2, :cond_1

    .line 1202
    const-string v2, "collectMemoryParamter: not init yet. return"

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1206
    :cond_1
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v2, v10, :cond_2

    .line 1207
    const-string v2, "BrightnessProviderMemory"

    const-string v3, "collectMemoryParamter: Has no UserModificationHashMap, nothing to record."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1210
    :cond_2
    new-instance v11, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v11, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1212
    .local v11, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 1213
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    .line 1212
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1216
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toSimpleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1218
    :cond_4
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getScreenLevelCount()I

    move-result v2

    const/16 v3, 0xb

    if-gt v2, v3, :cond_5

    .line 1219
    const-string v2, "curve"

    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    invoke-direct {p0, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->arrayToSimpleString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    :cond_5
    new-instance v1, Lcom/vivo/common/autobrightness/DataParameter;

    const-string v2, "1005"

    const-string v3, "10052"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/vivo/common/autobrightness/DataParameter;-><init>(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    .line 1224
    .local v1, "data":Lcom/vivo/common/autobrightness/DataParameter;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collectMemoryParamter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/vivo/common/autobrightness/DataParameter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 1225
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mCollectUseData:Lcom/vivo/common/autobrightness/CollectUseData;

    invoke-virtual {v2, v1}, Lcom/vivo/common/autobrightness/CollectUseData;->sendDataParameter(Lcom/vivo/common/autobrightness/DataParameter;)V

    goto/16 :goto_0
.end method

.method private correctModificationInfos()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 964
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPendingCorrectionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 965
    const/4 v1, -0x1

    .line 980
    :goto_0
    return v1

    .line 967
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDoCorrection:Z

    .line 968
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->acquireWakeLock()V

    .line 970
    :goto_1
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->isPendingListEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPendingCorrectionList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->dumpPendingList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 972
    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->getFromPendingList(I)Lcom/vivo/common/autobrightness/InfoPair;

    move-result-object v0

    .line 973
    .local v0, "info":Lcom/vivo/common/autobrightness/InfoPair;
    if-eqz v0, :cond_1

    .line 974
    iget v2, v0, Lcom/vivo/common/autobrightness/InfoPair;->id:I

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->correctModificationInfos(I)I

    .line 976
    :cond_1
    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->removeFromPendingList(I)V

    goto :goto_1

    .line 978
    .end local v0    # "info":Lcom/vivo/common/autobrightness/InfoPair;
    :cond_2
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->releaseWakeLock()V

    .line 979
    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDoCorrection:Z

    goto :goto_0
.end method

.method private correctModificationInfos(I)I
    .locals 2
    .param p1, "changedId"    # I

    .prologue
    .line 955
    sget v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->ALS_MEMORY_SOLUTION:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 956
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->correctModificationInfosMemory3Point(I)I

    move-result v0

    .line 958
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->correctModificationInfosMemoryAllPoint(I)I

    move-result v0

    goto :goto_0
.end method

.method private correctModificationInfosInitial()V
    .locals 4

    .prologue
    .line 452
    const/4 v0, 0x0

    .local v0, "id":I
    :goto_0
    sget v1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->MEMORY_POINT_SIZE:I

    if-ge v0, v1, :cond_1

    .line 453
    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mRecordModificationInfos:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "correctModificationInfosInitial id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 455
    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->correctModificationInfos(I)I

    .line 452
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    :cond_1
    const-string v1, "BrightnessProviderMemory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afger correctModificationInfosInitial:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-void
.end method

.method private correctModificationInfosMemory3Point(I)I
    .locals 10
    .param p1, "changedId"    # I

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 776
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mRecordModificationInfos:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/vivo/common/autobrightness/AutobrightInfo;->stringToObject(Ljava/lang/String;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v2

    .line 783
    .local v2, "tempInfo":Lcom/vivo/common/autobrightness/AutobrightInfo;
    if-eqz v2, :cond_1

    .line 785
    new-instance v1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;

    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget v4, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-direct {v1, p0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;-><init>(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;II)V

    .line 787
    .local v1, "startPoint":Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    iget v4, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget v5, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    aput v5, v3, v4

    .line 788
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aput-object v2, v3, p1

    .line 789
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseMemoryBrightnessLowThreshold()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 790
    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    sget v4, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v4, v4, v9

    if-ge v3, v4, :cond_0

    .line 791
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "correctModificationInfosMemory3Point as LowThreshold update mModifiedBrightness["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    iget v5, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 794
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v3, v3, v9

    invoke-virtual {v1, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setY(I)V

    .line 795
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    iget v4, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget-object v5, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v5, v5, v9

    aput v5, v3, v4

    .line 796
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v4, v4, v9

    iput v4, v3, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    .line 797
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mRecordModificationInfos:[Ljava/lang/String;

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 798
    invoke-static {p1}, Lcom/vivo/common/autobrightness/RecordInfo;->getKeyById(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mRecordModificationInfos:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-direct {p0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->setRecordInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "correctModificationInfosMemory3Point: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "correctModificationInfosMemory3Point: mUserModificationInfos[0]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v6

    if-nez v3, :cond_2

    const-string v3, "null"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "correctModificationInfosMemory3Point: mUserModificationInfos[1]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v8

    if-nez v3, :cond_3

    const-string v3, "null"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 807
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "correctModificationInfosMemory3Point: mUserModificationInfos[2]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v7

    if-nez v3, :cond_4

    const-string v3, "null"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 809
    new-instance v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;

    invoke-direct {v0, p0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;-><init>(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;)V

    .line 810
    .local v0, "endpoint":Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;
    if-nez p1, :cond_e

    .line 811
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v8

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v7

    if-nez v3, :cond_6

    .line 812
    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-gt v3, v4, :cond_5

    .line 813
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v8

    iget v3, v3, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 843
    :goto_3
    invoke-direct {p0, v2, v1, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->drawBrightnessLineMemory3Point(Lcom/vivo/common/autobrightness/AutobrightInfo;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V

    .line 945
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish correctModificationInfosMemory3Point: changedId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 947
    .end local v0    # "endpoint":Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;
    .end local v1    # "startPoint":Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;
    :cond_1
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->collectMemoryParamter()V

    .line 948
    return v6

    .line 803
    .restart local v1    # "startPoint":Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;
    :cond_2
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 805
    :cond_3
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 807
    :cond_4
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 815
    .restart local v0    # "endpoint":Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;
    :cond_5
    sget v3, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    sget v5, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    aget v4, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    goto :goto_3

    .line 817
    :cond_6
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v8

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v7

    if-eqz v3, :cond_9

    .line 818
    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-gt v3, v4, :cond_8

    .line 819
    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    sget v5, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MID:I

    aget v4, v4, v5

    if-gt v3, v4, :cond_7

    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    sget v4, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MID:I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-ge v3, v4, :cond_7

    .line 821
    sget v3, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MID:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    sget v5, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MID:I

    aget v4, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    goto :goto_3

    .line 823
    :cond_7
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v7

    iget v3, v3, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    goto/16 :goto_3

    .line 826
    :cond_8
    sget v3, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    sget v5, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    aget v4, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    goto/16 :goto_3

    .line 828
    :cond_9
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v8

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v7

    if-eqz v3, :cond_c

    .line 829
    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-gt v3, v4, :cond_a

    .line 830
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v8

    iget v3, v3, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    goto/16 :goto_3

    .line 831
    :cond_a
    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-gt v3, v4, :cond_b

    .line 832
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v7

    iget v3, v3, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    goto/16 :goto_3

    .line 834
    :cond_b
    sget v3, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    sget v5, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    aget v4, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    goto/16 :goto_3

    .line 837
    :cond_c
    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    sget v5, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MID:I

    aget v4, v4, v5

    if-gt v3, v4, :cond_d

    .line 838
    sget v3, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MID:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    sget v5, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MID:I

    aget v4, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    goto/16 :goto_3

    .line 840
    :cond_d
    sget v3, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    sget v5, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    aget v4, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    goto/16 :goto_3

    .line 844
    :cond_e
    if-ne v7, p1, :cond_18

    .line 845
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v6

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v8

    if-nez v3, :cond_11

    .line 846
    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v6

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-ge v3, v4, :cond_f

    .line 847
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v3, v3, v6

    invoke-virtual {v0, v6, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 877
    :goto_5
    invoke-direct {p0, v2, v1, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->drawBrightnessLineMemory3Point(Lcom/vivo/common/autobrightness/AutobrightInfo;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V

    goto/16 :goto_4

    .line 849
    :cond_f
    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    sget v5, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MID:I

    aget v4, v4, v5

    if-lt v3, v4, :cond_10

    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    sget v4, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MID:I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v6

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-lt v3, v4, :cond_10

    .line 851
    sget v3, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MID:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    sget v5, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MID:I

    aget v4, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    goto :goto_5

    .line 853
    :cond_10
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v6

    iget v3, v3, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v6

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    goto :goto_5

    .line 856
    :cond_11
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v6

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v8

    if-eqz v3, :cond_13

    .line 857
    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-lt v3, v4, :cond_12

    .line 858
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v8

    iget v3, v3, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    goto :goto_5

    .line 860
    :cond_12
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v3, v3, v6

    invoke-virtual {v0, v6, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    goto :goto_5

    .line 862
    :cond_13
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v6

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v8

    if-eqz v3, :cond_16

    .line 863
    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-lt v3, v4, :cond_14

    .line 864
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v8

    iget v3, v3, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    goto/16 :goto_5

    .line 865
    :cond_14
    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v6

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-lt v3, v4, :cond_15

    .line 866
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v6

    iget v3, v3, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v6

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    goto/16 :goto_5

    .line 868
    :cond_15
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v3, v3, v6

    invoke-virtual {v0, v6, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    goto/16 :goto_5

    .line 871
    :cond_16
    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    sget v5, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MID:I

    aget v4, v4, v5

    if-lt v3, v4, :cond_17

    .line 872
    sget v3, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MID:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    sget v5, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MID:I

    aget v4, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    goto/16 :goto_5

    .line 874
    :cond_17
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v3, v3, v6

    invoke-virtual {v0, v6, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    goto/16 :goto_5

    .line 880
    :cond_18
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v6

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v7

    if-nez v3, :cond_1a

    .line 881
    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v6

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-lt v3, v4, :cond_19

    .line 882
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v6

    iget v3, v3, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v6

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 883
    invoke-direct {p0, v2, v1, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->drawBrightnessLineMemory3Point(Lcom/vivo/common/autobrightness/AutobrightInfo;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V

    .line 885
    sget v3, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    sget v5, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    aget v4, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 886
    invoke-direct {p0, v2, v1, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->drawBrightnessLineMemory3Point(Lcom/vivo/common/autobrightness/AutobrightInfo;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V

    goto/16 :goto_4

    .line 888
    :cond_19
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v3, v3, v6

    invoke-virtual {v0, v6, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 889
    invoke-direct {p0, v2, v1, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->drawBrightnessLineMemory3Point(Lcom/vivo/common/autobrightness/AutobrightInfo;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V

    .line 891
    sget v3, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    sget v5, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    aget v4, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 892
    invoke-direct {p0, v2, v1, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->drawBrightnessLineMemory3Point(Lcom/vivo/common/autobrightness/AutobrightInfo;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V

    goto/16 :goto_4

    .line 894
    :cond_1a
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v6

    if-nez v3, :cond_1c

    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v7

    if-eqz v3, :cond_1c

    .line 895
    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-gt v3, v4, :cond_1b

    .line 896
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v7

    iget v3, v3, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 897
    invoke-direct {p0, v2, v1, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->drawBrightnessLineMemory3Point(Lcom/vivo/common/autobrightness/AutobrightInfo;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V

    .line 899
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v3, v3, v6

    invoke-virtual {v0, v6, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 900
    invoke-direct {p0, v2, v1, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->drawBrightnessLineMemory3Point(Lcom/vivo/common/autobrightness/AutobrightInfo;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V

    goto/16 :goto_4

    .line 902
    :cond_1b
    sget v3, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    sget v5, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    aget v4, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 903
    invoke-direct {p0, v2, v1, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->drawBrightnessLineMemory3Point(Lcom/vivo/common/autobrightness/AutobrightInfo;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V

    .line 905
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v3, v3, v6

    invoke-virtual {v0, v6, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 906
    invoke-direct {p0, v2, v1, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->drawBrightnessLineMemory3Point(Lcom/vivo/common/autobrightness/AutobrightInfo;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V

    goto/16 :goto_4

    .line 909
    :cond_1c
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v6

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v7

    if-eqz v3, :cond_20

    .line 910
    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v6

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-lt v3, v4, :cond_1d

    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-gt v3, v4, :cond_1d

    .line 911
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v6

    iget v3, v3, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v6

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 912
    invoke-direct {p0, v2, v1, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->drawBrightnessLineMemory3Point(Lcom/vivo/common/autobrightness/AutobrightInfo;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V

    .line 914
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v7

    iget v3, v3, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 915
    invoke-direct {p0, v2, v1, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->drawBrightnessLineMemory3Point(Lcom/vivo/common/autobrightness/AutobrightInfo;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V

    goto/16 :goto_4

    .line 916
    :cond_1d
    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v6

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-le v3, v4, :cond_1e

    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-le v3, v4, :cond_1e

    .line 918
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v6

    iget v3, v3, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v6

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 919
    invoke-direct {p0, v2, v1, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->drawBrightnessLineMemory3Point(Lcom/vivo/common/autobrightness/AutobrightInfo;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V

    .line 921
    sget v3, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    sget v5, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    aget v4, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 922
    invoke-direct {p0, v2, v1, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->drawBrightnessLineMemory3Point(Lcom/vivo/common/autobrightness/AutobrightInfo;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V

    goto/16 :goto_4

    .line 923
    :cond_1e
    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v6

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-ge v3, v4, :cond_1f

    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-gt v3, v4, :cond_1f

    .line 925
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v3, v3, v6

    invoke-virtual {v0, v6, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 926
    invoke-direct {p0, v2, v1, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->drawBrightnessLineMemory3Point(Lcom/vivo/common/autobrightness/AutobrightInfo;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V

    .line 928
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v3, v3, v7

    iget v3, v3, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 929
    invoke-direct {p0, v2, v1, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->drawBrightnessLineMemory3Point(Lcom/vivo/common/autobrightness/AutobrightInfo;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V

    goto/16 :goto_4

    .line 931
    :cond_1f
    sget v3, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    sget v5, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    aget v4, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 932
    invoke-direct {p0, v2, v1, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->drawBrightnessLineMemory3Point(Lcom/vivo/common/autobrightness/AutobrightInfo;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V

    .line 934
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v3, v3, v6

    invoke-virtual {v0, v6, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 935
    invoke-direct {p0, v2, v1, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->drawBrightnessLineMemory3Point(Lcom/vivo/common/autobrightness/AutobrightInfo;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V

    goto/16 :goto_4

    .line 938
    :cond_20
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v3, v3, v6

    invoke-virtual {v0, v6, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 939
    invoke-direct {p0, v2, v1, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->drawBrightnessLineMemory3Point(Lcom/vivo/common/autobrightness/AutobrightInfo;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V

    .line 941
    sget v3, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    sget v5, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    aget v4, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 942
    invoke-direct {p0, v2, v1, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->drawBrightnessLineMemory3Point(Lcom/vivo/common/autobrightness/AutobrightInfo;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V

    goto/16 :goto_4
.end method

.method private correctModificationInfosMemoryAllPoint(I)I
    .locals 6
    .param p1, "changedId"    # I

    .prologue
    const/4 v5, 0x0

    .line 704
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mRecordModificationInfos:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/vivo/common/autobrightness/AutobrightInfo;->stringToObject(Ljava/lang/String;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v2

    .line 711
    .local v2, "tempInfo":Lcom/vivo/common/autobrightness/AutobrightInfo;
    if-eqz v2, :cond_1

    .line 712
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start correctModificationInfos: changedId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 713
    new-instance v1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;

    iget v3, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-direct {v1, p0, p1, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;-><init>(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;II)V

    .line 714
    .local v1, "startPoint":Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;
    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->forceResetModifiedRecord(Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)I

    move-result v0

    .line 715
    .local v0, "brightness":I
    iget v3, v1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    if-eq v0, v3, :cond_0

    .line 716
    iput v0, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    .line 717
    invoke-virtual {v1, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setY(I)V

    .line 718
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aput-object v2, v3, p1

    .line 719
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mRecordModificationInfos:[Ljava/lang/String;

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 720
    invoke-static {p1}, Lcom/vivo/common/autobrightness/RecordInfo;->getKeyById(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mRecordModificationInfos:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-direct {p0, v3, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->setRecordInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :cond_0
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    iget v4, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    aput v4, v3, p1

    .line 723
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aput-object v2, v3, p1

    .line 726
    if-nez p1, :cond_2

    .line 727
    sget v3, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    invoke-direct {p0, v1, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->traverseLevels(Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;I)V

    .line 741
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish correctModificationInfos: changedId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 743
    .end local v0    # "brightness":I
    .end local v1    # "startPoint":Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;
    :cond_1
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->collectMemoryParamter()V

    .line 744
    return v5

    .line 730
    .restart local v0    # "brightness":I
    .restart local v1    # "startPoint":Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;
    :cond_2
    sget v3, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    if-ne v3, p1, :cond_3

    .line 733
    invoke-direct {p0, v1, v5}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->traverseLevels(Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;I)V

    goto :goto_0

    .line 737
    :cond_3
    invoke-direct {p0, v1, v5}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->traverseLevels(Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;I)V

    .line 739
    sget v3, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    invoke-direct {p0, v1, v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->traverseLevels(Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;I)V

    goto :goto_0
.end method

.method private deleteRecordInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 437
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->setRecordInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method private drawBrightnessLineMemory3Point(Lcom/vivo/common/autobrightness/AutobrightInfo;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V
    .locals 9
    .param p1, "info"    # Lcom/vivo/common/autobrightness/AutobrightInfo;
    .param p2, "startPoint"    # Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;
    .param p3, "endPoint"    # Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x1

    .line 748
    new-instance v3, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;

    invoke-direct {v3, p0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;-><init>(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;)V

    .line 749
    .local v3, "line":Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;
    invoke-virtual {v3, p2, p3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;->setPassPoint(Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V

    .line 750
    iget v5, p3, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    iget v6, p2, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    if-lt v5, v6, :cond_1

    move v4, v0

    .line 751
    .local v4, "upper":Z
    :goto_0
    if-eqz v4, :cond_2

    .line 752
    .local v0, "flag":I
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drawBrightnessLineMemory3Point info:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " start:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " line:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 753
    iget v1, p2, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    .local v1, "i":I
    :goto_2
    if-eqz v4, :cond_3

    iget v5, p3, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    if-gt v1, v5, :cond_4

    .line 754
    :cond_0
    iget-object v5, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    invoke-virtual {v3, v1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;->getYValue(I)I

    move-result v6

    aput v6, v5, v1

    .line 755
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drawBrightnessLineMemory3Point mModifiedBrightness["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " gety="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;->getYValue(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 753
    add-int/2addr v1, v0

    goto :goto_2

    .line 750
    .end local v0    # "flag":I
    .end local v1    # "i":I
    .end local v4    # "upper":Z
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 751
    .restart local v4    # "upper":Z
    :cond_2
    const/4 v0, -0x1

    goto/16 :goto_1

    .line 753
    .restart local v0    # "flag":I
    .restart local v1    # "i":I
    :cond_3
    iget v5, p3, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    if-ge v1, v5, :cond_0

    .line 757
    :cond_4
    const/4 v2, 0x0

    .local v2, "id":I
    :goto_3
    sget v5, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->MEMORY_POINT_SIZE:I

    if-ge v2, v5, :cond_6

    .line 758
    iget-object v5, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v5, v5, v2

    if-eqz v5, :cond_5

    .line 759
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drawBrightnessLineMemory3Point update mUserModificationInfos[i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    iget-object v7, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 761
    iget-object v5, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v6, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    iget-object v7, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    aget v6, v6, v7

    if-eq v5, v6, :cond_5

    .line 762
    iget-object v5, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aput-object v8, v5, v2

    .line 763
    iget-object v5, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mRecordModificationInfos:[Ljava/lang/String;

    aput-object v8, v5, v2

    .line 764
    invoke-static {v2}, Lcom/vivo/common/autobrightness/RecordInfo;->getKeyById(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->deleteRecordInfo(Ljava/lang/String;)V

    .line 765
    iget-object v5, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationHashMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 769
    :cond_6
    return-void
.end method

.method private dumpPendingList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPendingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPendingCorrectionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private fetchModificationInfos([Ljava/lang/String;)V
    .locals 4
    .param p1, "infoArray"    # [Ljava/lang/String;

    .prologue
    .line 984
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->MEMORY_POINT_SIZE:I

    if-ge v0, v2, :cond_1

    .line 985
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/vivo/common/autobrightness/RecordInfo;->getKeyById(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 986
    .local v1, "rec":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 987
    aput-object v1, p1, v0

    .line 984
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 990
    .end local v1    # "rec":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private fillBrightnessPair(IILjava/util/ArrayList;[I)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "brightness"    # I
    .param p4, "list"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .local p3, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;>;"
    const/4 v4, 0x7

    .line 507
    new-instance v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;

    invoke-direct {v0, p0, p1, p2}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;-><init>(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;II)V

    .line 508
    .local v0, "bp":Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseMemoryBrightnessLowThreshold()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    iget v1, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->id:I

    sget v2, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->brightness:I

    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v2, v2, v4

    if-ge v1, v2, :cond_0

    .line 510
    const-string v1, "BrightnessProviderMemory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "traverseLevels reset bp.id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->brightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v1, v1, v4

    iput v1, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->brightness:I

    .line 515
    :cond_0
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    iget v1, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->brightness:I

    aput v1, p4, p1

    .line 517
    return-void
.end method

.method private fillBrightnessPair(Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Ljava/util/ArrayList;[I)V
    .locals 9
    .param p1, "startPoint"    # Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;
    .param p2, "endPoint"    # Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;
    .param p4, "list"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;",
            "Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .local p3, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;>;"
    const/4 v1, 0x1

    const/4 v8, 0x7

    .line 488
    new-instance v3, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;

    invoke-direct {v3, p0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;-><init>(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;)V

    .line 489
    .local v3, "line":Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;
    invoke-virtual {v3, p1, p2}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;->setPassPoint(Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V

    .line 490
    iget v5, p2, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    iget v6, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    if-le v5, v6, :cond_2

    move v4, v1

    .line 491
    .local v4, "upper":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 492
    .local v1, "flag":I
    :goto_1
    iget v5, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    add-int v2, v5, v1

    .local v2, "id":I
    :goto_2
    if-eqz v4, :cond_4

    iget v5, p2, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    if-gt v2, v5, :cond_5

    .line 493
    :cond_0
    new-instance v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;

    invoke-virtual {v3, v2}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;->getYValue(I)I

    move-result v5

    invoke-direct {v0, p0, v2, v5}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;-><init>(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;II)V

    .line 494
    .local v0, "bp":Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseMemoryBrightnessLowThreshold()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 495
    iget v5, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->id:I

    sget v6, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    if-ne v5, v6, :cond_1

    iget v5, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->brightness:I

    iget-object v6, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v6, v6, v8

    if-ge v5, v6, :cond_1

    .line 496
    const-string v5, "BrightnessProviderMemory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "traverseLevels reset bp.id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->brightness:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v5, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v5, v5, v8

    iput v5, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->brightness:I

    .line 501
    :cond_1
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    iget v5, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->brightness:I

    aput v5, p4, v2

    .line 492
    add-int/2addr v2, v1

    goto :goto_2

    .line 490
    .end local v0    # "bp":Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;
    .end local v1    # "flag":I
    .end local v2    # "id":I
    .end local v4    # "upper":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 491
    .restart local v4    # "upper":Z
    :cond_3
    const/4 v1, -0x1

    goto :goto_1

    .line 492
    .restart local v1    # "flag":I
    .restart local v2    # "id":I
    :cond_4
    iget v5, p2, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    if-ge v2, v5, :cond_0

    .line 504
    :cond_5
    return-void
.end method

.method private findOutChangedRecordId([Ljava/lang/String;)I
    .locals 6
    .param p1, "info"    # [Ljava/lang/String;

    .prologue
    .line 405
    const/4 v0, 0x0

    .line 411
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "id":I
    :goto_0
    sget v3, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->MEMORY_POINT_SIZE:I

    if-ge v1, v3, :cond_1

    .line 412
    aget-object v3, p1, v1

    invoke-static {v3}, Lcom/vivo/common/autobrightness/AutobrightInfo;->stringToObject(Ljava/lang/String;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v2

    .line 413
    .local v2, "tmpInfo":Lcom/vivo/common/autobrightness/AutobrightInfo;
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mRecordModificationInfos:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 414
    add-int/lit8 v0, v0, 0x1

    .line 415
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationHashMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Lcom/vivo/common/autobrightness/RecordInfo;->getKeyById(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    iget v4, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget v5, v2, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    aput v5, v3, v4

    .line 417
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aput-object v2, v3, v1

    .line 411
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    .end local v2    # "tmpInfo":Lcom/vivo/common/autobrightness/AutobrightInfo;
    :cond_1
    if-lez v0, :cond_2

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mHasUserModification:Z

    .line 421
    return v0

    .line 420
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private forceResetModifiedRecord(Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)I
    .locals 4
    .param p1, "point"    # Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;

    .prologue
    const/4 v3, 0x7

    .line 683
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseMemoryBrightnessLowThreshold()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 684
    iget v0, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    sget v1, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    if-ne v0, v1, :cond_1

    .line 685
    iget v0, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v1, v1, v3

    if-ge v0, v1, :cond_0

    .line 686
    const-string v0, "BrightnessProviderMemory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceResetModifiedRecord point.x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v0, v0, v3

    .line 695
    :goto_0
    return v0

    .line 690
    :cond_0
    iget v0, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    goto :goto_0

    .line 692
    :cond_1
    iget v0, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    goto :goto_0

    .line 695
    :cond_2
    iget v0, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    goto :goto_0
.end method

.method private getBrightnessByModification(I)I
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mHasUserModification:Z

    if-nez v0, :cond_0

    .line 379
    const-string v0, "BrightnessProviderMemory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBrightnessByModification, error happend, return mDefaultBrightness["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v0, v0, p1

    .line 382
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method private getBrightnessDefault(I)I
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBrightnessDefault mDefaultBrightness["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v0, v0, p1

    return v0
.end method

.method private getBrightnessSuperPower(I)I
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBrightnessSuperPower mSuperPowerBrightness["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mSuperPowerBrightness:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mSuperPowerBrightness:[I

    aget v0, v0, p1

    return v0
.end method

.method private getFromPendingList(I)Lcom/vivo/common/autobrightness/InfoPair;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 240
    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPendingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPendingCorrectionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPendingCorrectionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 242
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 244
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPendingCorrectionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/common/autobrightness/InfoPair;

    monitor-exit v1

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getRecordInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 427
    :try_start_0
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "value":Ljava/lang/String;
    const-string v2, "BrightnessProviderMemory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putAutobrightInfo key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " val="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 430
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BrightnessProviderMemory"

    const-string v3, "putAutobrightInfo failed."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleSettingsChangedLocked(Ljava/lang/String;)V
    .locals 12
    .param p1, "changedKey"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    .line 994
    :try_start_0
    iget-boolean v7, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mHasInited:Z

    if-nez v7, :cond_3

    .line 995
    iget-object v7, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mRecordModificationInfos:[Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->fetchModificationInfos([Ljava/lang/String;)V

    .line 996
    iget-object v7, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mRecordModificationInfos:[Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->findOutChangedRecordId([Ljava/lang/String;)I

    move-result v0

    .line 997
    .local v0, "changedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget v7, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->MEMORY_POINT_SIZE:I

    if-ge v4, v7, :cond_0

    .line 998
    iget-object v7, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    iget-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mRecordModificationInfos:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-static {v8}, Lcom/vivo/common/autobrightness/AutobrightInfo;->stringToObject(Ljava/lang/String;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v8

    aput-object v8, v7, v4

    .line 997
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1000
    :cond_0
    if-lez v0, :cond_1

    .line 1001
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->correctModificationInfosInitial()V

    .line 1003
    :cond_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mHasInited:Z

    .line 1071
    .end local v0    # "changedCount":I
    .end local v4    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 1006
    :cond_3
    invoke-static {p1}, Lcom/vivo/common/autobrightness/RecordInfo;->getIdByKey(Ljava/lang/String;)I

    move-result v1

    .line 1010
    .local v1, "changedId":I
    if-eq v1, v8, :cond_5

    .line 1011
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->getRecordInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1012
    .local v6, "val":Ljava/lang/String;
    if-eqz v6, :cond_4

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1015
    :cond_4
    if-eqz v6, :cond_5

    iget-object v7, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mRecordModificationInfos:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1016
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSettingsChangedLocked val equals to exist recordinfo. key=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " val="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1066
    .end local v1    # "changedId":I
    .end local v6    # "val":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1068
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "BrightnessProviderMemory"

    const-string v8, "handleSettingsChangedLocked failed."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1022
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "changedId":I
    :cond_5
    if-eq v1, v8, :cond_b

    .line 1023
    :try_start_1
    iget-object v7, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationHashMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mHasUserModification:Z

    .line 1025
    iget-object v7, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mRecordModificationInfos:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->getRecordInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    .line 1026
    iget-object v7, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mRecordModificationInfos:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-static {v7}, Lcom/vivo/common/autobrightness/AutobrightInfo;->stringToObject(Ljava/lang/String;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v5

    .line 1027
    .local v5, "tempInfo":Lcom/vivo/common/autobrightness/AutobrightInfo;
    if-nez v5, :cond_6

    .line 1028
    const-string v7, "BrightnessProviderMemory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSettingsChangedLocked tempInfo is null,changedId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1031
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changed mModifiedBrightness["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    iget v9, v5, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 1032
    iget-object v7, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    iget v8, v5, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget v9, v5, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    aput v9, v7, v8

    .line 1033
    iget-boolean v7, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDoCorrection:Z

    if-nez v7, :cond_a

    .line 1036
    iget-object v7, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mCorrectionHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mCorrectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1037
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->isPendingListEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->isInPendingList(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1040
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->correctModificationInfos()I

    .line 1042
    :cond_7
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->isInPendingList(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1043
    new-instance v7, Lcom/vivo/common/autobrightness/InfoPair;

    invoke-direct {v7, v1, p1}, Lcom/vivo/common/autobrightness/InfoPair;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->addToPedingList(Lcom/vivo/common/autobrightness/InfoPair;)V

    .line 1045
    :cond_8
    const/16 v2, 0x3a98

    .line 1046
    .local v2, "delaytime":I
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseMemoryBrightnessLowThreshold()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1047
    iget v7, v5, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    sget v8, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    if-ne v7, v8, :cond_9

    iget v7, v5, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    const/4 v9, 0x7

    aget v8, v8, v9

    if-ge v7, v8, :cond_9

    .line 1048
    const/16 v2, 0x9c4

    .line 1051
    :cond_9
    iget-object v7, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mCorrectionHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mCorrectionRunnable:Ljava/lang/Runnable;

    int-to-long v10, v2

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 1058
    .end local v2    # "delaytime":I
    :cond_a
    new-instance v7, Lcom/vivo/common/autobrightness/InfoPair;

    invoke-direct {v7, v1, p1}, Lcom/vivo/common/autobrightness/InfoPair;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->addToPedingList(Lcom/vivo/common/autobrightness/InfoPair;)V

    .line 1059
    const-string v7, "BrightnessProviderMemory"

    const-string v8, "called handleSettingsChangedLocked during correction!!"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1062
    .end local v5    # "tempInfo":Lcom/vivo/common/autobrightness/AutobrightInfo;
    :cond_b
    const-string v7, "BrightnessProviderMemory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSettingsChangedLocked wrong changedId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private initDefautBrightness(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v7, 0x3090037

    const v6, 0x3090033

    const v5, 0x309003b

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 194
    .local v2, "resources":Landroid/content/res/Resources;
    const-string v0, ""

    .line 195
    .local v0, "configBrightness":Ljava/lang/String;
    const-string v1, ""

    .line 196
    .local v1, "configSuperPower":Ljava/lang/String;
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getScreenLevelCount()I

    move-result v3

    const/16 v4, 0x89

    if-ne v3, v4, :cond_0

    .line 197
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    .line 198
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    .line 199
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mSuperPowerBrightness:[I

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "default_config_137LevelMemoryBacklightDefaultValue{WARNING-DEFAULT}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "default_config_137LevelMemoryBacklightDefaultValue{WARNING-DEFAULT}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    const-string v3, "BrightnessProviderMemory"

    const-string v4, "AutoBrightnessWARNING:use default 137 level brightness parameters. Need to provide specific one."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    invoke-static {}, Lcom/vivo/common/autobrightness/CollectConfiguration;->getInstance()Lcom/vivo/common/autobrightness/CollectConfiguration;

    move-result-object v3

    const-string v4, "BrightnessMemory"

    invoke-virtual {v3, v4, v0}, Lcom/vivo/common/autobrightness/CollectConfiguration;->addConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/vivo/common/autobrightness/CollectConfiguration;->getInstance()Lcom/vivo/common/autobrightness/CollectConfiguration;

    move-result-object v3

    const-string v4, "BrightnessSuperPower"

    invoke-virtual {v3, v4, v1}, Lcom/vivo/common/autobrightness/CollectConfiguration;->addConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mMaxBrightnessLevel:I

    .line 222
    return-void

    .line 204
    :cond_0
    sget-object v3, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mProductModel:Ljava/lang/String;

    const-string v4, "pd1408bl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    .line 206
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    .line 207
    const v3, 0x3090034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mSuperPowerBrightness:[I

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pd1408bl_config_backlightDefaultValue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pd1408bl_config_superPowerSavingBacklight"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    .line 212
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    .line 213
    const v3, 0x3090038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mSuperPowerBrightness:[I

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "default_config_backlightDefaultValue{WARNING-DEFAULT}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "default_config_superPowerSavingBacklight{WARNING-DEFAULT}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    const-string v3, "BrightnessProviderMemory"

    const-string v4, "AutoBrightnessWARNING:use default brightness parameters. Need to provide specific one."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isInPendingList(Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPendingLock:Ljava/lang/Object;

    monitor-enter v3

    .line 272
    :try_start_0
    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPendingCorrectionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p1, :cond_1

    .line 273
    :cond_0
    monitor-exit v3

    .line 281
    :goto_0
    return v2

    .line 275
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPendingCorrectionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 276
    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPendingCorrectionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/common/autobrightness/InfoPair;

    .line 277
    .local v1, "info":Lcom/vivo/common/autobrightness/InfoPair;
    iget-object v4, v1, Lcom/vivo/common/autobrightness/InfoPair;->key:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/vivo/common/autobrightness/InfoPair;->key:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 278
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 282
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/vivo/common/autobrightness/InfoPair;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 275
    .restart local v0    # "i":I
    .restart local v1    # "info":Lcom/vivo/common/autobrightness/InfoPair;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 281
    .end local v1    # "info":Lcom/vivo/common/autobrightness/InfoPair;
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private isLuxAroundRecord(II)Z
    .locals 3
    .param p1, "record"    # I
    .param p2, "lux"    # I

    .prologue
    .line 310
    int-to-float v0, p2

    int-to-float v1, p1

    const v2, 0x3f933333    # 1.15f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    int-to-float v0, p2

    int-to-float v1, p1

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPendingListEmpty()Z
    .locals 2

    .prologue
    .line 259
    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPendingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPendingCorrectionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const-string v0, "BrightnessProviderMemory"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    return-void
.end method

.method private registerObserver()V
    .locals 7

    .prologue
    .line 1145
    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1146
    :try_start_0
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1147
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->MEMORY_POINT_SIZE:I

    if-ge v0, v2, :cond_0

    .line 1148
    invoke-static {v0}, Lcom/vivo/common/autobrightness/RecordInfo;->getKeyById(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mSettingsObserver:Lcom/vivo/common/autobrightness/BrightnessProviderMemory$SettingsObserver;

    const/4 v6, -0x1

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1152
    :cond_0
    monitor-exit v3

    .line 1153
    return-void

    .line 1152
    .end local v0    # "i":I
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string v0, "BrightnessProviderMemory"

    const-string v1, "acquireWakeLock failed: mWakeLock is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeFromPendingList(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 249
    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPendingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPendingCorrectionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPendingCorrectionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 255
    :goto_0
    monitor-exit v1

    .line 256
    return-void

    .line 253
    :cond_0
    const-string v0, "BrightnessProviderMemory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeFromPendingList index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " illegal, size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mPendingCorrectionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setRecordInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 442
    const-string v1, "BrightnessProviderMemory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putAutobrightInfo key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BrightnessProviderMemory"

    const-string v2, "putAutobrightInfo failed."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private toValidBrightness(I)I
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 386
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    .line 387
    const/16 p1, 0x14

    .line 391
    :cond_0
    :goto_0
    return p1

    .line 388
    :cond_1
    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    .line 389
    const/16 p1, 0xff

    goto :goto_0
.end method

.method private traverseLevels(Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;I)V
    .locals 13
    .param p1, "startPoint"    # Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;
    .param p2, "endId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v9, -0x1

    .line 530
    if-eqz p1, :cond_0

    iget v10, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    if-ltz v10, :cond_0

    iget v10, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    sget v11, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    if-gt v10, v11, :cond_0

    if-ltz p2, :cond_0

    sget v10, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    if-gt p2, v10, :cond_0

    iget v10, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    if-ne v10, p2, :cond_2

    .line 533
    :cond_0
    const-string v10, "BrightnessProviderMemory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "traverseLevels invalid arg start.x="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez p1, :cond_1

    const-string v9, "null"

    :goto_0
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " end="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :goto_1
    return-void

    .line 533
    :cond_1
    iget v9, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 536
    :cond_2
    const-string v10, "BrightnessProviderMemory"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "traverseLevels startPoint.x="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " startPoint.y="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " endId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string v10, "BrightnessProviderMemory"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "befor traverseLevels mModifiedBrightness="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    invoke-direct {p0, v12}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->arrayToString([I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget v10, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    if-ge v10, p2, :cond_3

    move v8, v3

    .line 539
    .local v8, "upper":Z
    :goto_2
    if-eqz v8, :cond_4

    .line 540
    .local v3, "flag":I
    :goto_3
    iget v1, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    .line 541
    .local v1, "changedId":I
    const/4 v4, 0x0

    .line 542
    .local v4, "foundEndPoint":Z
    sget v10, Lcom/vivo/common/autobrightness/RecordInfo;->ID_COUNT:I

    new-array v0, v10, [I

    .line 543
    .local v0, "brightList":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    sget v10, Lcom/vivo/common/autobrightness/RecordInfo;->ID_COUNT:I

    if-ge v5, v10, :cond_5

    .line 544
    iget-object v10, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    aget v10, v10, v5

    aput v10, v0, v5

    .line 543
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 538
    .end local v0    # "brightList":[I
    .end local v1    # "changedId":I
    .end local v3    # "flag":I
    .end local v4    # "foundEndPoint":Z
    .end local v5    # "i":I
    .end local v8    # "upper":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .restart local v8    # "upper":Z
    :cond_4
    move v3, v9

    .line 539
    goto :goto_3

    .line 546
    .restart local v0    # "brightList":[I
    .restart local v1    # "changedId":I
    .restart local v3    # "flag":I
    .restart local v4    # "foundEndPoint":Z
    .restart local v5    # "i":I
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    iget v10, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    sub-int/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 548
    .local v7, "tempArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;>;"
    new-instance v2, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;

    invoke-direct {v2, p0, v9, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;-><init>(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;II)V

    .line 549
    .local v2, "endPoint":Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "traverseLevels befor mModifiedBrightness loop  id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int v10, v1, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " endId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " upper="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " flag="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 550
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "before for loop: mDefaultBrightness="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    invoke-direct {p0, v10}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->arrayToString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 551
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "before for loop:         brightList="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->arrayToString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 554
    add-int v6, v1, v3

    .local v6, "id":I
    :goto_5
    if-eqz v8, :cond_8

    if-gt v6, p2, :cond_9

    .line 555
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "traverseLevels loop 1, upper="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 556
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v9, v9, v6

    if-nez v9, :cond_c

    .line 554
    :cond_7
    add-int/2addr v6, v3

    goto :goto_5

    :cond_8
    if-ge v6, p2, :cond_6

    .line 580
    :cond_9
    :goto_6
    if-eqz v4, :cond_e

    iget v9, v2, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    add-int v6, v9, v3

    :goto_7
    if-eqz v8, :cond_f

    if-gt v6, p2, :cond_10

    .line 581
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "traverseLevels loop 2, upper="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 582
    if-eqz v8, :cond_17

    .line 584
    if-nez v4, :cond_14

    .line 586
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v9, v9, v6

    if-eqz v9, :cond_13

    .line 587
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget v10, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    if-lt v9, v10, :cond_12

    .line 588
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v2, v6, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 589
    invoke-direct {p0, p1, v2, v7, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->fillBrightnessPair(Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Ljava/util/ArrayList;[I)V

    .line 590
    const/4 v4, 0x1

    .line 591
    const-string v9, "traverseLevels 1"

    invoke-direct {p0, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 580
    :cond_b
    :goto_8
    add-int/2addr v6, v3

    goto :goto_7

    .line 559
    :cond_c
    if-eqz v8, :cond_d

    .line 560
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget v10, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    if-lt v9, v10, :cond_7

    .line 561
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v2, v6, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 562
    invoke-direct {p0, p1, v2, v7, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->fillBrightnessPair(Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Ljava/util/ArrayList;[I)V

    .line 563
    const/4 v4, 0x1

    .line 564
    const-string v9, "traverseLevels 01"

    invoke-direct {p0, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 568
    :cond_d
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget v10, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    if-gt v9, v10, :cond_7

    .line 569
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v2, v6, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 570
    invoke-direct {p0, p1, v2, v7, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->fillBrightnessPair(Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Ljava/util/ArrayList;[I)V

    .line 571
    const/4 v4, 0x1

    .line 572
    const-string v9, "traverseLevels 02"

    invoke-direct {p0, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 580
    :cond_e
    add-int v6, v1, v3

    goto/16 :goto_7

    :cond_f
    if-ge v6, p2, :cond_a

    .line 667
    :cond_10
    if-nez v4, :cond_11

    .line 668
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v9, v9, p2

    invoke-virtual {v2, p2, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 669
    invoke-direct {p0, p1, v2, v7, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->fillBrightnessPair(Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Ljava/util/ArrayList;[I)V

    .line 670
    const-string v9, "traverseLevels 14"

    invoke-direct {p0, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 672
    :cond_11
    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->updateModificationInfos(Ljava/util/ArrayList;)V

    .line 673
    const-string v9, "BrightnessProviderMemory"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "after traverseLevels mModifiedBrightness="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    invoke-direct {p0, v11}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->arrayToString([I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 592
    :cond_12
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v9, v9, v6

    iget v10, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    if-lt v9, v10, :cond_b

    .line 593
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v9, v9, v6

    invoke-virtual {v2, v6, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 594
    invoke-direct {p0, p1, v2, v7, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->fillBrightnessPair(Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Ljava/util/ArrayList;[I)V

    .line 595
    const/4 v4, 0x1

    .line 596
    const-string v9, "traverseLevels 2"

    invoke-direct {p0, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 599
    :cond_13
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v9, v9, v6

    iget v10, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    if-lt v9, v10, :cond_b

    .line 600
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v9, v9, v6

    invoke-virtual {v2, v6, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 601
    invoke-direct {p0, p1, v2, v7, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->fillBrightnessPair(Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Ljava/util/ArrayList;[I)V

    .line 602
    const/4 v4, 0x1

    .line 603
    const-string v9, "traverseLevels 3"

    invoke-direct {p0, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 608
    :cond_14
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v9, v9, v6

    if-eqz v9, :cond_16

    .line 609
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    sub-int v10, v6, v3

    aget v10, v0, v10

    if-lt v9, v10, :cond_15

    .line 610
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-direct {p0, v6, v9, v7, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->fillBrightnessPair(IILjava/util/ArrayList;[I)V

    .line 611
    const-string v9, "traverseLevels 4"

    invoke-direct {p0, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 612
    :cond_15
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v9, v9, v6

    sub-int v10, v6, v3

    aget v10, v0, v10

    if-lt v9, v10, :cond_b

    .line 613
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v9, v9, v6

    invoke-direct {p0, v6, v9, v7, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->fillBrightnessPair(IILjava/util/ArrayList;[I)V

    .line 614
    const-string v9, "traverseLevels 5"

    invoke-direct {p0, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 617
    :cond_16
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v9, v9, v6

    sub-int v10, v6, v3

    aget v10, v0, v10

    if-lt v9, v10, :cond_b

    .line 618
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v9, v9, v6

    invoke-direct {p0, v6, v9, v7, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->fillBrightnessPair(IILjava/util/ArrayList;[I)V

    .line 619
    const-string v9, "traverseLevels 6"

    invoke-direct {p0, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 625
    :cond_17
    if-nez v4, :cond_1a

    .line 627
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v9, v9, v6

    if-eqz v9, :cond_19

    .line 628
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget v10, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    if-gt v9, v10, :cond_18

    .line 629
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v2, v6, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 630
    invoke-direct {p0, p1, v2, v7, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->fillBrightnessPair(Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Ljava/util/ArrayList;[I)V

    .line 631
    const/4 v4, 0x1

    .line 632
    const-string v9, "traverseLevels 8"

    invoke-direct {p0, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 633
    :cond_18
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v9, v9, v6

    iget v10, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    if-gt v9, v10, :cond_b

    .line 634
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v9, v9, v6

    invoke-virtual {v2, v6, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 635
    invoke-direct {p0, p1, v2, v7, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->fillBrightnessPair(Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Ljava/util/ArrayList;[I)V

    .line 636
    const/4 v4, 0x1

    .line 637
    const-string v9, "traverseLevels 9"

    invoke-direct {p0, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 640
    :cond_19
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v9, v9, v6

    iget v10, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    if-gt v9, v10, :cond_b

    .line 641
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v9, v9, v6

    invoke-virtual {v2, v6, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->setXY(II)V

    .line 642
    invoke-direct {p0, p1, v2, v7, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->fillBrightnessPair(Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Ljava/util/ArrayList;[I)V

    .line 643
    const/4 v4, 0x1

    .line 644
    const-string v9, "traverseLevels 10"

    invoke-direct {p0, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 649
    :cond_1a
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v9, v9, v6

    if-eqz v9, :cond_1c

    .line 650
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    sub-int v10, v6, v3

    aget v10, v0, v10

    if-gt v9, v10, :cond_1b

    .line 651
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-direct {p0, v6, v9, v7, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->fillBrightnessPair(IILjava/util/ArrayList;[I)V

    .line 652
    const-string v9, "traverseLevels 11"

    invoke-direct {p0, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 653
    :cond_1b
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v9, v9, v6

    sub-int v10, v6, v3

    aget v10, v0, v10

    if-gt v9, v10, :cond_b

    .line 654
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v9, v9, v6

    invoke-direct {p0, v6, v9, v7, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->fillBrightnessPair(IILjava/util/ArrayList;[I)V

    .line 655
    const-string v9, "traverseLevels 12"

    invoke-direct {p0, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 658
    :cond_1c
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v9, v9, v6

    sub-int v10, v6, v3

    aget v10, v0, v10

    if-gt v9, v10, :cond_b

    .line 659
    iget-object v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v9, v9, v6

    invoke-direct {p0, v6, v9, v7, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->fillBrightnessPair(IILjava/util/ArrayList;[I)V

    .line 660
    const-string v9, "traverseLevels 13"

    invoke-direct {p0, v9}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method private unregisterObserver()V
    .locals 3

    .prologue
    .line 1156
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1157
    :try_start_0
    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1158
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mSettingsObserver:Lcom/vivo/common/autobrightness/BrightnessProviderMemory$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1159
    monitor-exit v2

    .line 1160
    return-void

    .line 1159
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateModificationInfos(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 462
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    const-string v1, "BrightnessProviderMemory"

    const-string v2, "updateModificationInfos list is empty."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :goto_0
    return-void

    .line 466
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 467
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;

    .line 468
    .local v0, "pair":Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateModificationInfos mModifiedBrightness[pair.id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    iget v3, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->id:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->brightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    iget v2, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->id:I

    iget v3, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->brightness:I

    aput v3, v1, v2

    .line 471
    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    iget v2, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->id:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    iget v2, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->id:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    iget v3, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->id:I

    aget v2, v2, v3

    if-eq v1, v2, :cond_1

    .line 472
    const-string v1, "BrightnessProviderMemory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateModificationInfos delte mUserModificationInfos[pair.id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mRecordModificationInfos:[Ljava/lang/String;

    iget v2, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->id:I

    aput-object v5, v1, v2

    .line 474
    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    iget v2, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->id:I

    aput-object v5, v1, v2

    .line 475
    iget v1, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->id:I

    invoke-static {v1}, Lcom/vivo/common/autobrightness/RecordInfo;->getKeyById(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->deleteRecordInfo(Ljava/lang/String;)V

    .line 476
    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationHashMap:Ljava/util/HashMap;

    iget v2, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :goto_2
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 478
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateModificationInfos ignore mUserModificationInfos[pair.id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    iget v3, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->id:I

    aget-object v1, v1, v3

    if-nez v1, :cond_2

    const-string v1, "null"

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mModifiedBrightness[pair.id]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    iget v3, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->id:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    iget v3, v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->id:I

    aget-object v1, v1, v3

    iget v1, v1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    .line 484
    .end local v0    # "pair":Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;
    :cond_3
    const-string v1, "BrightnessProviderMemory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after updateModificationInfos:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public getBrightness(I)I
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 365
    const/16 v0, 0x14

    .line 366
    .local v0, "ret":I
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 367
    :try_start_0
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mHasUserModification:Z

    if-eqz v1, :cond_0

    .line 368
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->getBrightnessByModification(I)I

    move-result v0

    .line 372
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->toValidBrightness(I)I

    move-result v1

    return v1

    .line 370
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->getBrightnessDefault(I)I

    move-result v0

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getBrightness(Lcom/vivo/common/autobrightness/AutobrightInfo;)I
    .locals 3
    .param p1, "abInfo"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 349
    const/16 v0, 0x14

    .line 350
    .local v0, "ret":I
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 351
    :try_start_0
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mSuperPowerSavingOn:Z

    if-eqz v1, :cond_0

    .line 352
    iget v1, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->getBrightnessSuperPower(I)I

    move-result v0

    .line 360
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->toValidBrightness(I)I

    move-result v1

    return v1

    .line 354
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mHasUserModification:Z

    if-eqz v1, :cond_1

    .line 355
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->adjustScreenLevel(Lcom/vivo/common/autobrightness/AutobrightInfo;)I

    .line 356
    iget v1, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->getBrightnessByModification(I)I

    move-result v0

    goto :goto_0

    .line 358
    :cond_1
    iget v1, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->getBrightnessDefault(I)I

    move-result v0

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public notifyStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1076
    const/4 v0, 0x7

    if-ne v0, p1, :cond_1

    .line 1077
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mSuperPowerSavingOn:Z

    .line 1082
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->isPendingListEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1083
    const-string v0, "no pending action,nothing to do."

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    .line 1120
    :goto_1
    return-void

    .line 1078
    :cond_1
    const/4 v0, 0x6

    if-ne v0, p1, :cond_0

    .line 1079
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mSuperPowerSavingOn:Z

    goto :goto_0

    .line 1088
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 1116
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyStateChanged state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " no need to do correctModificationInfos."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1107
    :pswitch_1
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDoCorrection:Z

    if-nez v0, :cond_3

    .line 1108
    const-string v0, "BrightnessProviderMemory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStateChanged call correctModificationInfos, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mCorrectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1110
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mCorrectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1112
    :cond_3
    const-string v0, "BrightnessProviderMemory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStateChanged mDoCorrection=true, no need to interrupt it. state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1088
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onBrihgtnessChangeObserved(I)I
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 1170
    const/4 v0, 0x0

    return v0
.end method

.method public setLightSensorEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1164
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1230
    const-string v1, "\n    "

    .line 1231
    .local v1, "ret":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mMaxBrightnessLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mMaxBrightnessLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mUserModificationHashMap.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mDefaultBrightness={"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1234
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mDefaultBrightness:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1237
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1238
    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mHasUserModification:Z

    if-eqz v2, :cond_5

    .line 1239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mModifiedBrightness={"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1240
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mModifiedBrightness:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1240
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1243
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}\n   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1244
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " infos["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    const-string v2, "null;\n   "

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1244
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1245
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mUserModificationInfos:[Lcom/vivo/common/autobrightness/AutobrightInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1247
    :cond_3
    const/4 v0, 0x0

    :goto_4
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mRecordModificationInfos:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 1248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " records["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mRecordModificationInfos:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_4

    const-string v2, "null;\n   "

    :goto_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1247
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1248
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mRecordModificationInfos:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 1251
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "No user modification."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1253
    :cond_6
    return-object v1
.end method
