.class public Lcom/vivo/common/utils/VivoWallpaperManager;
.super Ljava/lang/Object;
.source "VivoWallpaperManager.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/utils/VivoWallpaperManager$OnCheckedChangeLockbgListener;
    }
.end annotation


# static fields
.field private static final KEY_TYPE_LOCKSCREEN:Ljava/lang/String; = "vivo_type_lockscreen_wallpaper"

.field private static final LIVE_WALLPAPER_PATH:Ljava/lang/String; = "/data/bbkcore/background/livewallpaper.png"

.field private static final PROP_LOCK_WALLPAPER:Ljava/lang/String; = "ro.config.lock.wallpaper"

.field private static final TAG:Ljava/lang/String; = "VivoWallpaperManager"

.field private static final TYPE_LIVE_WALLPAPER:I = 0x1

.field private static final TYPE_STILL_WALLPAPER:I

.field private static mInstance:Lcom/vivo/common/utils/VivoWallpaperManager;


# instance fields
.field private final ACTION_SET_LOCKBG:Ljava/lang/String;

.field private final DEBUG:Z

.field private final EXTRA_SET_LOCKBG:Ljava/lang/String;

.field private final KEY_CURLOCKID:Ljava/lang/String;

.field private final KEY_HOLIDAY_ENABLE:Ljava/lang/String;

.field private final KEY_TRADITIONLOCKID:Ljava/lang/String;

.field private final LOCK_DIR:Ljava/lang/String;

.field private final LOCK_PATH:Ljava/lang/String;

.field private final LOCK_PATH_OLD:Ljava/lang/String;

.field private final MSG_LOCKPAPAER_CHANGE:I

.field private mCheckedChangeLockbgListener:Lcom/vivo/common/utils/VivoWallpaperManager$OnCheckedChangeLockbgListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHolidayBitmap:Landroid/graphics/Bitmap;

.field private mHolidayId:I

.field private mLock:Ljava/lang/Object;

.field private mLockScreenBackBitmap:Landroid/graphics/Bitmap;

.field private mLockScreenBitmap:Landroid/graphics/Bitmap;

.field private mResources:Landroid/content/res/Resources;

.field private mSetLockbgReceiver:Landroid/content/BroadcastReceiver;

.field private mSuperPowerBitmap:Landroid/graphics/Bitmap;

.field private mSupportCache:Z

.field private mUpdateLockbgReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/common/utils/VivoWallpaperManager;->mInstance:Lcom/vivo/common/utils/VivoWallpaperManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->DEBUG:Z

    .line 54
    iput-object v1, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    .line 55
    iput-object v1, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mResources:Landroid/content/res/Resources;

    .line 57
    iput-object v1, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mSuperPowerBitmap:Landroid/graphics/Bitmap;

    .line 58
    iput-object v1, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mHolidayBitmap:Landroid/graphics/Bitmap;

    .line 59
    iput-object v1, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mLockScreenBitmap:Landroid/graphics/Bitmap;

    .line 60
    iput-object v1, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mLockScreenBackBitmap:Landroid/graphics/Bitmap;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mHolidayId:I

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mLock:Ljava/lang/Object;

    .line 63
    const-string v0, "/data/bbkcore/"

    iput-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->LOCK_DIR:Ljava/lang/String;

    .line 64
    const-string v0, "/data/bbkcore/lockscreen"

    iput-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->LOCK_PATH:Ljava/lang/String;

    .line 65
    const-string v0, "/data/data/com.android.settings/lock/lockScreenWallpaper"

    iput-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->LOCK_PATH_OLD:Ljava/lang/String;

    .line 66
    const-string v0, "change_holiday_wallpaper_enable"

    iput-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->KEY_HOLIDAY_ENABLE:Ljava/lang/String;

    .line 68
    const-string v0, "lock_screen_theme_id"

    iput-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->KEY_CURLOCKID:Ljava/lang/String;

    .line 69
    const-string v0, "lock_screen_theme_tradition_id"

    iput-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->KEY_TRADITIONLOCKID:Ljava/lang/String;

    .line 72
    const-string v0, "com.android.intent.bbk_setlockbg_return"

    iput-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->ACTION_SET_LOCKBG:Ljava/lang/String;

    .line 73
    const-string v0, "isSet"

    iput-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->EXTRA_SET_LOCKBG:Ljava/lang/String;

    .line 78
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->MSG_LOCKPAPAER_CHANGE:I

    .line 80
    new-instance v0, Lcom/vivo/common/utils/VivoWallpaperManager$1;

    invoke-direct {v0, p0}, Lcom/vivo/common/utils/VivoWallpaperManager$1;-><init>(Lcom/vivo/common/utils/VivoWallpaperManager;)V

    iput-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mHandler:Landroid/os/Handler;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mSupportCache:Z

    .line 550
    new-instance v0, Lcom/vivo/common/utils/VivoWallpaperManager$2;

    invoke-direct {v0, p0}, Lcom/vivo/common/utils/VivoWallpaperManager$2;-><init>(Lcom/vivo/common/utils/VivoWallpaperManager;)V

    iput-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mUpdateLockbgReceiver:Landroid/content/BroadcastReceiver;

    .line 575
    new-instance v0, Lcom/vivo/common/utils/VivoWallpaperManager$3;

    invoke-direct {v0, p0}, Lcom/vivo/common/utils/VivoWallpaperManager$3;-><init>(Lcom/vivo/common/utils/VivoWallpaperManager;)V

    iput-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mSetLockbgReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    iput-object p1, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    .line 106
    iget-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mResources:Landroid/content/res/Resources;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/utils/VivoWallpaperManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/utils/VivoWallpaperManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/common/utils/VivoWallpaperManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/utils/VivoWallpaperManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/common/utils/VivoWallpaperManager;)Lcom/vivo/common/utils/VivoWallpaperManager$OnCheckedChangeLockbgListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/utils/VivoWallpaperManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mCheckedChangeLockbgListener:Lcom/vivo/common/utils/VivoWallpaperManager$OnCheckedChangeLockbgListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/common/utils/VivoWallpaperManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/utils/VivoWallpaperManager;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/vivo/common/utils/VivoWallpaperManager;->unregisterSetLockbgDialogReceiver()V

    return-void
.end method

.method private getCurLockBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 418
    const/4 v2, 0x0

    .line 420
    .local v2, "lockscreen":Landroid/graphics/Bitmap;
    iget-boolean v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mSupportCache:Z

    if-eqz v4, :cond_3

    .line 422
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mLockScreenBackBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 423
    iget-object v3, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mLockScreenBitmap:Landroid/graphics/Bitmap;

    .line 424
    .local v3, "tempBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mLockScreenBackBitmap:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mLockScreenBitmap:Landroid/graphics/Bitmap;

    .line 425
    iput-object v3, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mLockScreenBackBitmap:Landroid/graphics/Bitmap;

    .line 426
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mLockScreenBackBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mLockScreenBackBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 428
    const-string v4, "VivoWallpaperManager"

    const-string v5, "recycle original front bitmap"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    iput-object v6, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mLockScreenBackBitmap:Landroid/graphics/Bitmap;

    .line 433
    .end local v3    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mLockScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mLockScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 434
    const-string v4, "VivoWallpaperManager"

    const-string v5, "mLockScreenBitmap have recycle,get again."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iput-object v6, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mLockScreenBitmap:Landroid/graphics/Bitmap;

    .line 437
    :cond_2
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mLockScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 439
    const-string v4, "VivoWallpaperManager"

    const-string v5, "reuse cache"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mLockScreenBitmap:Landroid/graphics/Bitmap;

    .line 445
    :cond_3
    if-nez v2, :cond_8

    .line 446
    const/4 v1, 0x0

    .line 447
    .local v1, "file":Ljava/io/File;
    invoke-virtual {p0}, Lcom/vivo/common/utils/VivoWallpaperManager;->isLiveWallpaper()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 448
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    const-string v4, "/data/bbkcore/background/livewallpaper.png"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    .restart local v1    # "file":Ljava/io/File;
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 453
    :cond_4
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    const-string v4, "/data/data/com.android.settings/lock/lockScreenWallpaper"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .restart local v1    # "file":Ljava/io/File;
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 457
    :try_start_0
    const-string v4, "VivoWallpaperManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLiveWallpaper = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vivo/common/utils/VivoWallpaperManager;->isLiveWallpaper()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p0}, Lcom/vivo/common/utils/VivoWallpaperManager;->isLiveWallpaper()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 459
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/vivo/common/utils/VivoWallpaperManager;->getCurrentLockscreenLiveWallPaper(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 468
    :cond_6
    :goto_1
    if-nez v2, :cond_7

    .line 470
    :try_start_1
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/vivo/common/utils/VivoWallpaperManager;->getDefaultLockscreenLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 475
    :cond_7
    :goto_2
    iget-boolean v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mSupportCache:Z

    if-eqz v4, :cond_8

    .line 477
    iput-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mLockScreenBitmap:Landroid/graphics/Bitmap;

    .line 482
    .end local v1    # "file":Ljava/io/File;
    :cond_8
    return-object v2

    .line 450
    .restart local v1    # "file":Ljava/io/File;
    :cond_9
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    const-string v4, "/data/bbkcore/lockscreen"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v1    # "file":Ljava/io/File;
    goto :goto_0

    .line 461
    :cond_a
    :try_start_2
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/vivo/common/utils/VivoWallpaperManager;->getCurrentLockscreenLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto :goto_1

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v4, "VivoWallpaperManager"

    const-string v5, "No memory load current wallpaper"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 471
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 472
    .restart local v0    # "e":Ljava/lang/OutOfMemoryError;
    const-string v4, "VivoWallpaperManager"

    const-string v5, "No memory load default wallpaper"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private getCurrentLockscreenLiveWallPaper(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 771
    const-string v6, "VivoWallpaperManager"

    const-string v7, "start getCurrentLockscreenLiveWallPaper"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/4 v2, 0x0

    .line 774
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v6, "/data/bbkcore/background/livewallpaper.png"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 775
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 776
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 778
    .local v5, "runtime":Ljava/lang/Runtime;
    :try_start_1
    const-string v6, "chmod 777 /data/bbkcore/background/livewallpaper.png"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 782
    :goto_0
    const/high16 v6, 0x30000000

    :try_start_2
    invoke-static {v3, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 787
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "runtime":Ljava/lang/Runtime;
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 789
    :try_start_3
    const-string v6, "VivoWallpaperManager"

    const-string v7, "getCurrentLockscreenLiveWallPaper"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 791
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 799
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 806
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_2
    return-object v0

    .line 779
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "runtime":Ljava/lang/Runtime;
    :catch_0
    move-exception v1

    .line 780
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    const-string v6, "VivoWallpaperManager"

    const-string v7, "IOException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 784
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "runtime":Ljava/lang/Runtime;
    :catch_1
    move-exception v1

    .line 785
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v6, "VivoWallpaperManager"

    const-string v7, "Error setting wallpaper"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 794
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 795
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_6
    const-string v6, "VivoWallpaperManager"

    const-string v7, "Can\'t decode file"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 799
    :try_start_7
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 800
    :catch_3
    move-exception v6

    goto :goto_2

    .line 798
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v6

    .line 799
    :try_start_8
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 802
    :goto_3
    throw v6

    .line 800
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v6

    goto :goto_2

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_5
    move-exception v7

    goto :goto_3
.end method

.method private getCurrentLockscreenLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 732
    const/4 v2, 0x0

    .line 734
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v6, "/data/bbkcore/lockscreen"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 735
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 736
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 738
    .local v5, "runtime":Ljava/lang/Runtime;
    :try_start_1
    const-string v6, "chmod 777 /data/bbkcore/lockscreen"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 742
    :goto_0
    const/high16 v6, 0x30000000

    :try_start_2
    invoke-static {v3, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 747
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "runtime":Ljava/lang/Runtime;
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 749
    :try_start_3
    const-string v6, "VivoWallpaperManager"

    const-string v7, "getCurrentLockscreenLocked"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 751
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 759
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 766
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_2
    return-object v0

    .line 739
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "runtime":Ljava/lang/Runtime;
    :catch_0
    move-exception v1

    .line 740
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    const-string v6, "VivoWallpaperManager"

    const-string v7, "IOException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 744
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "runtime":Ljava/lang/Runtime;
    :catch_1
    move-exception v1

    .line 745
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v6, "VivoWallpaperManager"

    const-string v7, "Error setting wallpaper"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 754
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 755
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_6
    const-string v6, "VivoWallpaperManager"

    const-string v7, "Can\'t decode file"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 759
    :try_start_7
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 760
    :catch_3
    move-exception v6

    goto :goto_2

    .line 758
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v6

    .line 759
    :try_start_8
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 762
    :goto_3
    throw v6

    .line 760
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v6

    goto :goto_2

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_5
    move-exception v7

    goto :goto_3
.end method

.method private getDefaultLockscreenLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 813
    invoke-direct {p0}, Lcom/vivo/common/utils/VivoWallpaperManager;->getSpecificWallpaper()Ljava/io/InputStream;

    move-result-object v2

    .line 814
    .local v2, "is":Ljava/io/InputStream;
    if-nez v2, :cond_0

    .line 815
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x108ff00

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 819
    :cond_0
    if-eqz v2, :cond_1

    .line 821
    :try_start_0
    const-string v4, "VivoWallpaperManager"

    const-string v5, "getDefaultLockscreenLocked"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 823
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 829
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 835
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    return-object v0

    .line 825
    :catch_0
    move-exception v1

    .line 826
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v4, "VivoWallpaperManager"

    const-string v5, "Can\'t decode stream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 829
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 830
    :catch_1
    move-exception v4

    goto :goto_0

    .line 828
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    .line 829
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 832
    :goto_1
    throw v4

    .line 830
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vivo/common/utils/VivoWallpaperManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    sget-object v0, Lcom/vivo/common/utils/VivoWallpaperManager;->mInstance:Lcom/vivo/common/utils/VivoWallpaperManager;

    if-nez v0, :cond_0

    .line 112
    const-string v0, "VivoWallpaperManager"

    const-string v1, "mInstance is null, need to create an new instance"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Lcom/vivo/common/utils/VivoWallpaperManager;

    invoke-direct {v0, p0}, Lcom/vivo/common/utils/VivoWallpaperManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/common/utils/VivoWallpaperManager;->mInstance:Lcom/vivo/common/utils/VivoWallpaperManager;

    .line 116
    :cond_0
    sget-object v0, Lcom/vivo/common/utils/VivoWallpaperManager;->mInstance:Lcom/vivo/common/utils/VivoWallpaperManager;

    return-object v0
.end method

.method private static getIntFromSettings(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 874
    move v1, p2

    .line 875
    .local v1, "result":I
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 876
    :cond_0
    const-string v3, "VivoWallpaperManager"

    const-string v4, "params errors"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 885
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 880
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 885
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 881
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VivoWallpaperManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t get int from settings : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 883
    move v1, p2

    goto :goto_1
.end method

.method private getSpecificWallpaper()Ljava/io/InputStream;
    .locals 3
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 962
    const-string v2, "ro.config.lock.wallpaper"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 963
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 964
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 965
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 967
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v2

    .line 968
    .restart local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 972
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isHomeUsingLivewalpaper()Z
    .locals 5
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 945
    const-string v2, "VivoWallpaperManager"

    const-string v3, "isHomeUsingLivewalpaper"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const/4 v1, 0x0

    .line 947
    .local v1, "isLive":Z
    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v2, :cond_0

    .line 948
    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    const-string v3, "wallpaper"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager;

    iput-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 950
    :cond_0
    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v2, :cond_1

    .line 951
    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 952
    .local v0, "info":Landroid/app/WallpaperInfo;
    const-string v2, "VivoWallpaperManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 955
    .end local v0    # "info":Landroid/app/WallpaperInfo;
    :cond_1
    :goto_0
    const-string v2, "VivoWallpaperManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHomeUsingLivewalpaper isLive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    return v1

    .line 953
    .restart local v0    # "info":Landroid/app/WallpaperInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyCallbacksLocked()V
    .locals 2
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 859
    iget-object v1, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 860
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 861
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.mediatek.lockscreen.action.WALLPAPER_SET.DONE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 863
    :try_start_0
    iget-object v1, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 864
    .restart local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static putIntToSettings(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 891
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 892
    :cond_0
    const-string v1, "VivoWallpaperManager"

    const-string v2, "params errors"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :goto_0
    return-void

    .line 896
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VivoWallpaperManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t write to settings : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private registerSetLockbgDialogReceiver()V
    .locals 3

    .prologue
    .line 564
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 565
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.intent.bbk_setlockbg_return"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mSetLockbgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 567
    return-void
.end method

.method private saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 3
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    const v2, 0x8000

    new-array v1, v2, [B

    .line 379
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "amt":I
    if-lez v0, :cond_0

    .line 380
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 382
    :cond_0
    return-void
.end method

.method private unregisterSetLockbgDialogReceiver()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mSetLockbgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 572
    return-void
.end method

.method private updateLockBg()V
    .locals 0

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/vivo/common/utils/VivoWallpaperManager;->registerUpdateLockbgReceiver()V

    .line 122
    return-void
.end method


# virtual methods
.method public changeCurLockBitmap()V
    .locals 2

    .prologue
    .line 487
    const-string v0, "VivoWallpaperManager"

    const-string v1, "lockscreen wallpaper changed, forget mLockScreenBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mLockScreenBitmap:Landroid/graphics/Bitmap;

    .line 489
    return-void
.end method

.method public checkWallpaperSize(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "wallpaperBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 685
    const/4 v8, 0x0

    .line 686
    .local v8, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    move/from16 v0, p4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    move/from16 v0, p5

    if-ne v0, v1, :cond_0

    .line 687
    move-object v8, p1

    :goto_0
    move-object v1, v8

    .line 713
    :goto_1
    return-object v1

    .line 689
    :cond_0
    iget-object v1, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 690
    .local v10, "screenWidth":I
    iget-object v1, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v9, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 691
    .local v9, "screenHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v9, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v10, v1, :cond_1

    .line 703
    :goto_2
    add-int v1, p2, p4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v1, v2, :cond_3

    add-int v1, p3, p5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 704
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 705
    const-string v1, "VivoWallpaperManager"

    const-string v2, "wallpaperBitmap is Recycled "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v1, 0x0

    goto :goto_1

    .line 694
    :cond_1
    const-string v1, "VivoWallpaperManager"

    const-string v2, "Need scale up wallpaper"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    int-to-float v1, v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v11, v1, v2

    .line 696
    .local v11, "xScale":F
    int-to-float v1, v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v12, v1, v2

    .line 697
    .local v12, "yScale":F
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 698
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v6, v11, v12}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 699
    const-string v1, "VivoWallpaperManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Befor scaling, old bitmap width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 701
    const-string v1, "VivoWallpaperManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After scaling, new bitmap width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 708
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v11    # "xScale":F
    .end local v12    # "yScale":F
    :cond_2
    invoke-static/range {p1 .. p5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    goto/16 :goto_0

    .line 710
    :cond_3
    const-string v1, "VivoWallpaperManager"

    const-string v2, "params error for createBitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public clear()V
    .locals 3
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 719
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/bbkcore/lockscreen"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 720
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 721
    :cond_0
    const-string v1, "VivoWallpaperManager"

    const-string v2, "Lockscreen wallpaper file do not exist, so no need to reset."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :goto_0
    return-void

    .line 723
    :cond_1
    const-string v1, "VivoWallpaperManager"

    const-string v2, "clear lockscreen wallpaper"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public getDefaultLockscreenDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 842
    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/vivo/common/utils/VivoWallpaperManager;->getDefaultLockscreenLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 843
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 844
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 845
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 853
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 849
    :cond_0
    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_1

    .line 851
    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x108ff00

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 853
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHolidayPaperResId(Z)I
    .locals 10
    .param p1, "showHoliday"    # Z

    .prologue
    const/4 v9, 0x1

    .line 386
    const/4 v5, -0x1

    .line 388
    .local v5, "resId":I
    invoke-static {}, Landroid/os/FtBuild;->isOverSeas()Z

    move-result v7

    if-eqz v7, :cond_0

    move v6, v5

    .line 412
    .end local v5    # "resId":I
    .local v6, "resId":I
    :goto_0
    return v6

    .line 392
    .end local v6    # "resId":I
    .restart local v5    # "resId":I
    :cond_0
    if-nez p1, :cond_1

    .line 393
    iget-object v7, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "change_holiday_wallpaper_enable"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 395
    .local v0, "enable":I
    if-eq v0, v9, :cond_1

    .line 397
    const-string v7, "VivoWallpaperManager"

    const-string v8, "change_holiday_wallpaper_enable != 1"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 398
    .end local v5    # "resId":I
    .restart local v6    # "resId":I
    goto :goto_0

    .line 401
    .end local v0    # "enable":I
    .end local v6    # "resId":I
    .restart local v5    # "resId":I
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v7, "/data/bbkcore/lockscreen"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 403
    .local v2, "lastmodify":J
    invoke-static {}, Lcom/vivo/common/utils/Lunar;->getDefault()Lcom/vivo/common/utils/Lunar;

    move-result-object v4

    .line 404
    .local v4, "lunar":Lcom/vivo/common/utils/Lunar;
    invoke-virtual {v4, v2, v3}, Lcom/vivo/common/utils/Lunar;->getHolidayId(J)I

    move-result v5

    .line 405
    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    .line 406
    sput-boolean v9, Lcom/vivo/common/utils/Lunar;->LastDayIsHoliday:Z

    .line 407
    const-wide/16 v8, 0x1

    invoke-virtual {v1, v8, v9}, Ljava/io/File;->setLastModified(J)Z

    .line 408
    const-string v7, "VivoWallpaperManager"

    const-string v8, "getHolidayPaper success"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v6, v5

    .line 412
    .end local v5    # "resId":I
    .restart local v6    # "resId":I
    goto :goto_0

    .line 410
    .end local v6    # "resId":I
    .restart local v5    # "resId":I
    :cond_2
    const-string v7, "VivoWallpaperManager"

    const-string v8, "getHolidayPaper fail"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getKeyguardGrayValue(IIII)I
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 664
    const-string v0, "VivoWallpaperManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKeyguardGrayValue == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v7, 0x0

    .line 667
    .local v7, "value":I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/common/utils/VivoWallpaperManager;->getLockScreen(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 668
    .local v1, "lockscreen":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 669
    const-string v0, "VivoWallpaperManager"

    const-string v2, "Fail to getLockScreen!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 679
    .end local v7    # "value":I
    .local v8, "value":I
    :goto_0
    return v8

    .end local v8    # "value":I
    .restart local v7    # "value":I
    :cond_0
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 673
    invoke-virtual/range {v0 .. v5}, Lcom/vivo/common/utils/VivoWallpaperManager;->checkWallpaperSize(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 675
    .local v6, "bm":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_1

    .line 676
    invoke-static {v6}, Lcom/vivo/common/utils/BitmapUtils;->getGrayValue(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 678
    :cond_1
    const-string v0, "VivoWallpaperManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKeyguardGrayValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 679
    .end local v7    # "value":I
    .restart local v8    # "value":I
    goto :goto_0
.end method

.method public getLockScreen(Z)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "showHoliday"    # Z

    .prologue
    const/4 v8, 0x0

    const v6, 0x3020395

    const/4 v7, -0x1

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1}, Lcom/vivo/common/utils/VivoWallpaperManager;->getHolidayPaperResId(Z)I

    move-result v3

    .line 267
    .local v3, "resId":I
    if-eq v3, v7, :cond_8

    .line 268
    const-string v4, "VivoWallpaperManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLockScreen resId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mHolidayId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mHolidayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mHolidayId:I

    if-eq v4, v3, :cond_1

    .line 271
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mHolidayBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mHolidayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 272
    const-string v4, "VivoWallpaperManager"

    const-string v5, "recycle holiday old bitmap"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iput-object v8, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mHolidayBitmap:Landroid/graphics/Bitmap;

    .line 276
    :cond_0
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mResources:Landroid/content/res/Resources;

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mHolidayBitmap:Landroid/graphics/Bitmap;

    .line 278
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mHolidayBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 279
    iput v3, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mHolidayId:I

    .line 282
    :cond_1
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mHolidayBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mHolidayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 283
    const-string v4, "VivoWallpaperManager"

    const-string v5, "getLockScreen mHolidayBitmap has been recycled."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mResources:Landroid/content/res/Resources;

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mHolidayBitmap:Landroid/graphics/Bitmap;

    .line 286
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mHolidayBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 287
    iput v3, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mHolidayId:I

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mHolidayBitmap:Landroid/graphics/Bitmap;

    .line 291
    if-nez v0, :cond_3

    .line 292
    const-string v4, "VivoWallpaperManager"

    const-string v5, "getLockScreen bmp null."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_3
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_4

    .line 297
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    const-string v5, "last_holiday_res_id"

    invoke-static {v4, v5, v7}, Lcom/vivo/common/utils/VivoWallpaperManager;->getIntFromSettings(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 298
    .local v1, "lastHolidayPaperResId":I
    if-eq v1, v3, :cond_4

    .line 300
    invoke-direct {p0}, Lcom/vivo/common/utils/VivoWallpaperManager;->notifyCallbacksLocked()V

    .line 305
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    const-string v5, "last_holiday_res_id"

    invoke-static {v4, v5, v3}, Lcom/vivo/common/utils/VivoWallpaperManager;->putIntToSettings(Landroid/content/Context;Ljava/lang/String;I)V

    .line 352
    .end local v1    # "lastHolidayPaperResId":I
    :cond_4
    :goto_0
    if-nez v0, :cond_7

    .line 353
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mHolidayBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mHolidayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 354
    const-string v4, "VivoWallpaperManager"

    const-string v5, "set null holiday bitmap, because isn\'t holiday."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iput-object v8, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mHolidayBitmap:Landroid/graphics/Bitmap;

    .line 357
    iput v7, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mHolidayId:I

    .line 359
    :cond_5
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mSuperPowerBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mSuperPowerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 360
    const-string v4, "VivoWallpaperManager"

    const-string v5, "set null superpower bitmap, because isn\'t superpower mode."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iput-object v8, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mSuperPowerBitmap:Landroid/graphics/Bitmap;

    .line 365
    :cond_6
    iget-object v5, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 366
    :try_start_0
    invoke-direct {p0}, Lcom/vivo/common/utils/VivoWallpaperManager;->getCurLockBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 367
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    move-object v4, v0

    .line 371
    :goto_1
    return-object v4

    .line 311
    :cond_8
    const-string v4, "sys.super_power_save"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 313
    .local v2, "on":Z
    if-eqz v2, :cond_c

    .line 314
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mSuperPowerBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mSuperPowerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 315
    :cond_9
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mResources:Landroid/content/res/Resources;

    invoke-static {v4, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mSuperPowerBitmap:Landroid/graphics/Bitmap;

    .line 319
    :cond_a
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mSuperPowerBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mSuperPowerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 321
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_b

    .line 324
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    const-string v5, "last_holiday_res_id"

    invoke-static {v4, v5, v7}, Lcom/vivo/common/utils/VivoWallpaperManager;->getIntFromSettings(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 325
    .restart local v1    # "lastHolidayPaperResId":I
    if-eq v1, v6, :cond_b

    .line 327
    invoke-direct {p0}, Lcom/vivo/common/utils/VivoWallpaperManager;->notifyCallbacksLocked()V

    .line 331
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    const-string v5, "last_holiday_res_id"

    invoke-static {v4, v5, v6}, Lcom/vivo/common/utils/VivoWallpaperManager;->putIntToSettings(Landroid/content/Context;Ljava/lang/String;I)V

    .line 334
    .end local v1    # "lastHolidayPaperResId":I
    :cond_b
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mSuperPowerBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 337
    :cond_c
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_4

    .line 340
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    const-string v5, "last_holiday_res_id"

    invoke-static {v4, v5, v7}, Lcom/vivo/common/utils/VivoWallpaperManager;->getIntFromSettings(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 341
    .restart local v1    # "lastHolidayPaperResId":I
    if-eq v1, v7, :cond_4

    .line 343
    invoke-direct {p0}, Lcom/vivo/common/utils/VivoWallpaperManager;->notifyCallbacksLocked()V

    .line 347
    iget-object v4, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    const-string v5, "last_holiday_res_id"

    invoke-static {v4, v5, v7}, Lcom/vivo/common/utils/VivoWallpaperManager;->putIntToSettings(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 367
    .end local v1    # "lastHolidayPaperResId":I
    .end local v2    # "on":Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public isLiveWallpaper()Z
    .locals 10
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 918
    const-string v7, "VivoWallpaperManager"

    const-string v8, "isLiveWallpaper"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const/4 v0, 0x0

    .line 921
    .local v0, "isLive":Z
    invoke-virtual {p0, v6}, Lcom/vivo/common/utils/VivoWallpaperManager;->getHolidayPaperResId(Z)I

    move-result v3

    .line 922
    .local v3, "resId":I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    .line 923
    const-string v5, "VivoWallpaperManager"

    const-string v6, "isLiveWallpaper == is holiday"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 939
    .end local v0    # "isLive":Z
    .local v1, "isLive":I
    :goto_0
    return v1

    .line 927
    .end local v1    # "isLive":I
    .restart local v0    # "isLive":Z
    :cond_0
    const-string v7, "sys.super_power_save"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 928
    .local v2, "on":Z
    if-eqz v2, :cond_1

    .line 929
    const-string v5, "VivoWallpaperManager"

    const-string v6, "isLiveWallpaper == is super power save"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 930
    .restart local v1    # "isLive":I
    goto :goto_0

    .line 932
    .end local v1    # "isLive":I
    :cond_1
    iget-object v7, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    const-string v8, "vivo_type_lockscreen_wallpaper"

    invoke-static {v7, v8, v6}, Lcom/vivo/common/utils/VivoWallpaperManager;->getIntFromSettings(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 933
    .local v4, "type":I
    const-string v7, "VivoWallpaperManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTypeOfLockscreen() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-direct {p0}, Lcom/vivo/common/utils/VivoWallpaperManager;->isHomeUsingLivewalpaper()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 935
    if-ne v5, v4, :cond_2

    move v0, v5

    :goto_1
    move v1, v0

    .line 939
    .restart local v1    # "isLive":I
    goto :goto_0

    .end local v1    # "isLive":I
    :cond_2
    move v0, v6

    .line 935
    goto :goto_1

    .line 937
    :cond_3
    iget-object v5, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    const-string v7, "vivo_type_lockscreen_wallpaper"

    invoke-static {v5, v7, v6}, Lcom/vivo/common/utils/VivoWallpaperManager;->putIntToSettings(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public isLockScreenWhiteStyle(IIII)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 591
    const-string v0, "VivoWallpaperManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLockScreenWhiteStyle == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v7, 0x0

    .line 594
    .local v7, "isWite":Z
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/common/utils/VivoWallpaperManager;->getLockScreen(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 595
    .local v1, "lockscreen":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 596
    const-string v0, "VivoWallpaperManager"

    const-string v2, "Fail to getLockScreen!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 608
    .end local v7    # "isWite":Z
    .local v8, "isWite":I
    :goto_0
    return v8

    .end local v8    # "isWite":I
    .restart local v7    # "isWite":Z
    :cond_0
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 600
    invoke-virtual/range {v0 .. v5}, Lcom/vivo/common/utils/VivoWallpaperManager;->checkWallpaperSize(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 601
    .local v6, "bm":Landroid/graphics/Bitmap;
    if-nez v6, :cond_1

    .line 602
    const-string v0, "VivoWallpaperManager"

    const-string v2, "Fail to createBitmap!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 603
    .restart local v8    # "isWite":I
    goto :goto_0

    .line 606
    .end local v8    # "isWite":I
    :cond_1
    invoke-static {v6}, Lcom/vivo/common/utils/BitmapUtils;->isBitmapWhiteStyle(Landroid/graphics/Bitmap;)Z

    move-result v7

    .line 607
    const-string v0, "VivoWallpaperManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLockScreenWhiteStyle==result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 608
    .restart local v8    # "isWite":I
    goto :goto_0
.end method

.method public isWallpaperWhiteStyle(IIII)Z
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 614
    const-string v0, "VivoWallpaperManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWallpaperWhiteStyle == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v9, 0x0

    .line 617
    .local v9, "isWite":Z
    const/4 v1, 0x0

    .line 618
    .local v1, "wallpaperBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    const-string v2, "wallpaper"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v0, :cond_1

    .line 622
    const-string v0, "VivoWallpaperManager"

    const-string v2, "Fail to get wallpaper service"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 658
    .end local v9    # "isWite":Z
    .local v10, "isWite":I
    :goto_0
    return v10

    .line 625
    .end local v10    # "isWite":I
    .restart local v9    # "isWite":Z
    :cond_1
    const-string v0, "VivoWallpaperManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isWallpaperWhiteStyle getWallpaperInfo() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 627
    const-string v0, "VivoWallpaperManager"

    const-string v2, "isWallpaperWhiteStyle==static wallpaper"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 645
    :goto_1
    if-nez v1, :cond_5

    .line 646
    const-string v0, "VivoWallpaperManager"

    const-string v2, "Fail to get wallpaper!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 647
    .restart local v10    # "isWite":I
    goto :goto_0

    .line 630
    .end local v10    # "isWite":I
    :cond_2
    const-string v0, "VivoWallpaperManager"

    const-string v2, "isWallpaperWhiteStyle==live wallpaper"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    new-instance v8, Ljava/io/File;

    const-string v0, "/data/bbkcore/background/livewallpaper.png"

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 632
    .local v8, "file":Ljava/io/File;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 633
    :cond_3
    const-string v0, "VivoWallpaperManager"

    const-string v2, "Fail to get background of live wallpaper"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 636
    :cond_4
    :try_start_0
    const-string v0, "/data/bbkcore/background/livewallpaper.png"

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 637
    :catch_0
    move-exception v7

    .line 638
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    const-string v0, "VivoWallpaperManager"

    const-string v2, "Can\'t decode file"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v7    # "e":Ljava/lang/OutOfMemoryError;
    .end local v8    # "file":Ljava/io/File;
    :cond_5
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 650
    invoke-virtual/range {v0 .. v5}, Lcom/vivo/common/utils/VivoWallpaperManager;->checkWallpaperSize(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 651
    .local v6, "bm":Landroid/graphics/Bitmap;
    if-nez v6, :cond_6

    .line 652
    const-string v0, "VivoWallpaperManager"

    const-string v2, "Fail to createBitmap!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 653
    .restart local v10    # "isWite":I
    goto :goto_0

    .line 656
    .end local v10    # "isWite":I
    :cond_6
    invoke-static {v6}, Lcom/vivo/common/utils/BitmapUtils;->isBitmapWhiteStyle(Landroid/graphics/Bitmap;)Z

    move-result v9

    .line 657
    const-string v0, "VivoWallpaperManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWallpaperWhiteStyle==result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 658
    .restart local v10    # "isWite":I
    goto/16 :goto_0
.end method

.method public registerUpdateLockbgReceiver()V
    .locals 3
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 530
    iget-boolean v1, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mSupportCache:Z

    if-eqz v1, :cond_0

    .line 538
    :goto_0
    return-void

    .line 533
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mSupportCache:Z

    .line 534
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.mediatek.lockscreen.action.WALLPAPER_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 536
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mUpdateLockbgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setLockScreen(I)V
    .locals 11
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v8, -0x1

    if-ne p1, v8, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const-string v8, "VivoWallpaperManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setLockScreen by resId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/bbkcore/lockscreen"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v5, "lockFile":Ljava/io/File;
    const/high16 v8, 0x38000000

    :try_start_0
    invoke-static {v5, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 137
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 138
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 139
    .local v6, "rt":Ljava/lang/Runtime;
    const/4 v3, 0x0

    .line 141
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v8, 0x3

    :try_start_1
    new-array v0, v8, [Ljava/lang/String;

    .line 143
    .local v0, "cmds":[Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "sh"

    aput-object v9, v0, v8

    .line 144
    const/4 v8, 0x1

    const-string v9, "-c"

    aput-object v9, v0, v8

    .line 145
    const/4 v8, 0x2

    const-string v9, "chmod 777 /data/bbkcore/lockscreen"

    aput-object v9, v0, v8

    .line 146
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v4, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v8, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/vivo/common/utils/VivoWallpaperManager;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 148
    invoke-virtual {v6, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 149
    iget-object v8, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    const-string v9, "vivo_type_lockscreen_wallpaper"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/vivo/common/utils/VivoWallpaperManager;->putIntToSettings(Landroid/content/Context;Ljava/lang/String;I)V

    .line 150
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    .line 151
    .local v7, "wallpaperFd":Ljava/io/FileDescriptor;
    if-eqz v7, :cond_2

    .line 152
    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 154
    :cond_2
    invoke-direct {p0}, Lcom/vivo/common/utils/VivoWallpaperManager;->notifyCallbacksLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 156
    if-eqz v4, :cond_0

    .line 157
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 161
    .end local v0    # "cmds":[Ljava/lang/String;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "rt":Ljava/lang/Runtime;
    .end local v7    # "wallpaperFd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 156
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "rt":Ljava/lang/Runtime;
    :catchall_0
    move-exception v8

    :goto_1
    if-eqz v3, :cond_3

    .line 157
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v8
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 156
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "cmds":[Ljava/lang/String;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setLockScreen(Landroid/graphics/Bitmap;)V
    .locals 12
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    if-nez p1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const-string v9, "VivoWallpaperManager"

    const-string v10, "setLockScreen by bitmap : "

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v5, Ljava/io/File;

    const-string v9, "/data/bbkcore/lockscreen"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v5, "lockFile":Ljava/io/File;
    const/high16 v9, 0x38000000

    :try_start_0
    invoke-static {v5, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 180
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 181
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 182
    .local v7, "rt":Ljava/lang/Runtime;
    const/4 v3, 0x0

    .line 184
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v9, "ro.product.model.bbk"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "model":Ljava/lang/String;
    const/4 v9, 0x3

    new-array v0, v9, [Ljava/lang/String;

    .line 186
    .local v0, "cmds":[Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "sh"

    aput-object v10, v0, v9

    .line 187
    const/4 v9, 0x1

    const-string v10, "-c"

    aput-object v10, v0, v9

    .line 188
    const/4 v9, 0x2

    const-string v10, "chmod 777 /data/bbkcore/lockscreen"

    aput-object v10, v0, v9

    .line 189
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v4, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x5a

    invoke-virtual {p1, v9, v10, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 199
    invoke-virtual {v7, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 200
    iget-object v9, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    const-string v10, "vivo_type_lockscreen_wallpaper"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/vivo/common/utils/VivoWallpaperManager;->putIntToSettings(Landroid/content/Context;Ljava/lang/String;I)V

    .line 201
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    .line 202
    .local v8, "wallpaperFd":Ljava/io/FileDescriptor;
    if-eqz v8, :cond_2

    .line 203
    invoke-virtual {v8}, Ljava/io/FileDescriptor;->sync()V

    .line 205
    :cond_2
    invoke-direct {p0}, Lcom/vivo/common/utils/VivoWallpaperManager;->notifyCallbacksLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 207
    if-eqz v4, :cond_0

    .line 208
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 212
    .end local v0    # "cmds":[Ljava/lang/String;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "model":Ljava/lang/String;
    .end local v7    # "rt":Ljava/lang/Runtime;
    .end local v8    # "wallpaperFd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 207
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "rt":Ljava/lang/Runtime;
    :catchall_0
    move-exception v9

    :goto_1
    if-eqz v3, :cond_3

    .line 208
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v9
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 207
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "cmds":[Ljava/lang/String;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "model":Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setOnCheckedChangeLockbgListener(Lcom/vivo/common/utils/VivoWallpaperManager$OnCheckedChangeLockbgListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vivo/common/utils/VivoWallpaperManager$OnCheckedChangeLockbgListener;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mCheckedChangeLockbgListener:Lcom/vivo/common/utils/VivoWallpaperManager$OnCheckedChangeLockbgListener;

    .line 498
    return-void
.end method

.method public setStream(Ljava/io/InputStream;)V
    .locals 11
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    if-nez p1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    const-string v8, "VivoWallpaperManager"

    const-string v9, "setLockScreen by stream "

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/bbkcore/lockscreen"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v5, "lockFile":Ljava/io/File;
    const/high16 v8, 0x38000000

    :try_start_0
    invoke-static {v5, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 233
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 234
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 235
    .local v6, "rt":Ljava/lang/Runtime;
    const/4 v3, 0x0

    .line 237
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v8, 0x3

    :try_start_1
    new-array v0, v8, [Ljava/lang/String;

    .line 239
    .local v0, "cmds":[Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "sh"

    aput-object v9, v0, v8

    .line 240
    const/4 v8, 0x1

    const-string v9, "-c"

    aput-object v9, v0, v8

    .line 241
    const/4 v8, 0x2

    const-string v9, "chmod 777 /data/bbkcore/lockscreen"

    aput-object v9, v0, v8

    .line 242
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v4, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, p1, v4}, Lcom/vivo/common/utils/VivoWallpaperManager;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 244
    invoke-virtual {v6, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 245
    iget-object v8, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    const-string v9, "vivo_type_lockscreen_wallpaper"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/vivo/common/utils/VivoWallpaperManager;->putIntToSettings(Landroid/content/Context;Ljava/lang/String;I)V

    .line 246
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    .line 247
    .local v7, "wallpaperFd":Ljava/io/FileDescriptor;
    if-eqz v7, :cond_2

    .line 248
    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 250
    :cond_2
    invoke-direct {p0}, Lcom/vivo/common/utils/VivoWallpaperManager;->notifyCallbacksLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 252
    if-eqz v4, :cond_0

    .line 253
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 257
    .end local v0    # "cmds":[Ljava/lang/String;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "rt":Ljava/lang/Runtime;
    .end local v7    # "wallpaperFd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 252
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "rt":Ljava/lang/Runtime;
    :catchall_0
    move-exception v8

    :goto_1
    if-eqz v3, :cond_3

    .line 253
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 252
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "cmds":[Ljava/lang/String;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 905
    const-string v0, "VivoWallpaperManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWallpaperComponent name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    const-string v1, "vivo_type_lockscreen_wallpaper"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/vivo/common/utils/VivoWallpaperManager;->putIntToSettings(Landroid/content/Context;Ljava/lang/String;I)V

    .line 907
    return-void
.end method

.method public showDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 508
    const-string v2, "VivoWallpaperManager"

    const-string v3, "showDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_theme_id"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 511
    .local v0, "lockscreen_id":I
    if-gez v0, :cond_1

    .line 512
    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_theme_tradition_id"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 514
    .local v1, "tradition_id":I
    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_theme_id"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 516
    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mCheckedChangeLockbgListener:Lcom/vivo/common/utils/VivoWallpaperManager$OnCheckedChangeLockbgListener;

    if-eqz v2, :cond_0

    .line 517
    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mCheckedChangeLockbgListener:Lcom/vivo/common/utils/VivoWallpaperManager$OnCheckedChangeLockbgListener;

    invoke-interface {v2, v5}, Lcom/vivo/common/utils/VivoWallpaperManager$OnCheckedChangeLockbgListener;->onCheckedChanged(Z)V

    .line 524
    .end local v1    # "tradition_id":I
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mCheckedChangeLockbgListener:Lcom/vivo/common/utils/VivoWallpaperManager$OnCheckedChangeLockbgListener;

    if-eqz v2, :cond_0

    .line 521
    iget-object v2, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mCheckedChangeLockbgListener:Lcom/vivo/common/utils/VivoWallpaperManager$OnCheckedChangeLockbgListener;

    invoke-interface {v2, v5}, Lcom/vivo/common/utils/VivoWallpaperManager$OnCheckedChangeLockbgListener;->onCheckedChanged(Z)V

    goto :goto_0
.end method

.method public unregisterUpdateLockbgReceiver()V
    .locals 2
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mSupportCache:Z

    if-eqz v0, :cond_0

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mSupportCache:Z

    .line 545
    iget-object v0, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/common/utils/VivoWallpaperManager;->mUpdateLockbgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 547
    :cond_0
    return-void
.end method
