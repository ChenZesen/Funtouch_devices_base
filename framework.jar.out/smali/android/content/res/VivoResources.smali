.class public Landroid/content/res/VivoResources;
.super Landroid/content/res/Resources;
.source "VivoResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/VivoResources$VivoThemeFileInfo;
    }
.end annotation


# static fields
.field public static final FRAMEWORK_PATH:Ljava/lang/String; = "/system/framework/framework-res.apk"

.field private static final TAG:Ljava/lang/String; = "VivoResources"

.field public static final VIVO_FRAMEWORK_PAHT:Ljava/lang/String; = "/system/framework/vivo-res.apk"

.field public static sCookieFramework:I

.field public static sCookieVivoFramework:I

.field private static final sPreloadDrawableSource:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/VivoResources$VivoThemeFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sSystemUpdateTime:Ljava/lang/Long;


# instance fields
.field private mIsPreloadOverlayed:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mSkipFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeLoadTime:J

.field private mThemeResources:Lvivo/content/res/VivoThemeResources;

.field private mThemeUpdateTime:J

.field private mThemeValues:Lvivo/content/res/VivoThemeValues;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 30
    sput v0, Landroid/content/res/VivoResources;->sCookieFramework:I

    .line 31
    sput v0, Landroid/content/res/VivoResources;->sCookieVivoFramework:I

    .line 32
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Landroid/content/res/VivoResources;->sSystemUpdateTime:Ljava/lang/Long;

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/VivoResources;->sPreloadDrawableSource:Landroid/util/SparseArray;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 42
    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/VivoResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/VivoResources;->mSkipFiles:Ljava/util/ArrayList;

    .line 39
    iput-wide v2, p0, Landroid/content/res/VivoResources;->mThemeLoadTime:J

    .line 40
    iput-wide v2, p0, Landroid/content/res/VivoResources;->mThemeUpdateTime:J

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    const-wide/16 v2, -0x1

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/VivoResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/VivoResources;->mSkipFiles:Ljava/util/ArrayList;

    .line 39
    iput-wide v2, p0, Landroid/content/res/VivoResources;->mThemeLoadTime:J

    .line 40
    iput-wide v2, p0, Landroid/content/res/VivoResources;->mThemeUpdateTime:J

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 4
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    const-wide/16 v2, -0x1

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/VivoResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/VivoResources;->mSkipFiles:Ljava/util/ArrayList;

    .line 39
    iput-wide v2, p0, Landroid/content/res/VivoResources;->mThemeLoadTime:J

    .line 40
    iput-wide v2, p0, Landroid/content/res/VivoResources;->mThemeUpdateTime:J

    .line 51
    return-void
.end method

.method private getThemeInt(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 165
    invoke-direct {p0}, Landroid/content/res/VivoResources;->loadThemeValues()V

    .line 166
    iget-object v0, p0, Landroid/content/res/VivoResources;->mThemeValues:Lvivo/content/res/VivoThemeValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/VivoResources;->mThemeValues:Lvivo/content/res/VivoThemeValues;

    iget-object v0, v0, Lvivo/content/res/VivoThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThemeIntArray(I)[I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/content/res/VivoResources;->loadThemeValues()V

    .line 156
    iget-object v0, p0, Landroid/content/res/VivoResources;->mThemeValues:Lvivo/content/res/VivoThemeValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/VivoResources;->mThemeValues:Lvivo/content/res/VivoThemeValues;

    iget-object v0, v0, Lvivo/content/res/VivoThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThemeString(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 170
    invoke-direct {p0}, Landroid/content/res/VivoResources;->loadThemeValues()V

    .line 171
    iget-object v0, p0, Landroid/content/res/VivoResources;->mThemeValues:Lvivo/content/res/VivoThemeValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/VivoResources;->mThemeValues:Lvivo/content/res/VivoThemeValues;

    iget-object v0, v0, Lvivo/content/res/VivoThemeValues;->mStrings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThemeStringArray(I)[Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 160
    invoke-direct {p0}, Landroid/content/res/VivoResources;->loadThemeValues()V

    .line 161
    iget-object v0, p0, Landroid/content/res/VivoResources;->mThemeValues:Lvivo/content/res/VivoThemeValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/VivoResources;->mThemeValues:Lvivo/content/res/VivoThemeValues;

    iget-object v0, v0, Lvivo/content/res/VivoThemeValues;->mStringArrays:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initCookie()V
    .locals 3

    .prologue
    .line 79
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 80
    sget v2, Landroid/content/res/VivoResources;->sCookieFramework:I

    if-ltz v2, :cond_1

    sget v2, Landroid/content/res/VivoResources;->sCookieVivoFramework:I

    if-ltz v2, :cond_1

    .line 92
    :cond_0
    return-void

    .line 83
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/content/res/VivoResources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->getCookieName(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "cookieName":Ljava/lang/String;
    const-string v2, "/system/framework/framework-res.apk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    sput v1, Landroid/content/res/VivoResources;->sCookieFramework:I

    .line 79
    .end local v0    # "cookieName":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .restart local v0    # "cookieName":Ljava/lang/String;
    :cond_3
    const-string v2, "/system/framework/vivo-res.apk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    sput v1, Landroid/content/res/VivoResources;->sCookieVivoFramework:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 89
    .end local v0    # "cookieName":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static isSystemCookie(I)Z
    .locals 1
    .param p0, "cookie"    # I

    .prologue
    .line 95
    sget v0, Landroid/content/res/VivoResources;->sCookieFramework:I

    if-eq p0, v0, :cond_0

    sget v0, Landroid/content/res/VivoResources;->sCookieVivoFramework:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadThemeValues()V
    .locals 6

    .prologue
    .line 175
    iget-wide v2, p0, Landroid/content/res/VivoResources;->mThemeLoadTime:J

    iget-wide v4, p0, Landroid/content/res/VivoResources;->mThemeUpdateTime:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 181
    :goto_0
    return-void

    .line 177
    :cond_0
    new-instance v0, Lvivo/content/res/VivoThemeValues;

    invoke-direct {v0}, Lvivo/content/res/VivoThemeValues;-><init>()V

    .line 178
    .local v0, "themeValues":Lvivo/content/res/VivoThemeValues;
    iget-object v1, p0, Landroid/content/res/VivoResources;->mThemeResources:Lvivo/content/res/VivoThemeResources;

    invoke-virtual {v1, v0}, Lvivo/content/res/VivoThemeResources;->mergeThemeValues(Lvivo/content/res/VivoThemeValues;)V

    .line 179
    iput-object v0, p0, Landroid/content/res/VivoResources;->mThemeValues:Lvivo/content/res/VivoThemeValues;

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/res/VivoResources;->mThemeLoadTime:J

    goto :goto_0
.end method

.method private reInit()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Landroid/content/res/VivoResources;->mThemeResources:Lvivo/content/res/VivoThemeResources;

    invoke-virtual {v0}, Lvivo/content/res/VivoThemeResources;->clearCache()V

    .line 106
    iget-object v0, p0, Landroid/content/res/VivoResources;->mPackageName:Ljava/lang/String;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lvivo/content/res/VivoThemeResources;->resetSystemTheme()V

    .line 108
    invoke-static {p0}, Lvivo/content/res/VivoThemeResources;->getSystem(Landroid/content/res/Resources;)Lvivo/content/res/VivoThemeResourcesSystem;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/VivoResources;->mThemeResources:Lvivo/content/res/VivoThemeResources;

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Landroid/content/res/VivoResources;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lvivo/content/res/VivoThemeResourcesPackage;->getThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lvivo/content/res/VivoThemeResourcesPackage;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/VivoResources;->mThemeResources:Lvivo/content/res/VivoThemeResources;

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/VivoResources;->mThemeUpdateTime:J

    .line 100
    iget-object v0, p0, Landroid/content/res/VivoResources;->mSkipFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/VivoResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    .line 102
    return-void
.end method


# virtual methods
.method public closeVivoThemeFileForPreloaded()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Landroid/content/res/VivoResources;->mThemeResources:Lvivo/content/res/VivoThemeResources;

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "VivoResources"

    const-string v1, "close vivo global theme file descriptor after finish preloaded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Landroid/content/res/VivoResources;->mThemeResources:Lvivo/content/res/VivoThemeResources;

    invoke-virtual {v0}, Lvivo/content/res/VivoThemeResources;->closeVivoZipFileForPreloaded()V

    .line 75
    :cond_0
    return-void
.end method

.method protected createFromResourceStream(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-object v4, p0, Landroid/content/res/VivoResources;->mSkipFiles:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-object v1

    .line 263
    :cond_1
    new-instance v3, Landroid/content/res/VivoResources$VivoThemeFileInfo;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Landroid/content/res/VivoResources$VivoThemeFileInfo;-><init>(Landroid/util/TypedValue;Z)V

    .line 264
    .local v3, "fileInfo":Landroid/content/res/VivoResources$VivoThemeFileInfo;
    iget-object v4, p0, Landroid/content/res/VivoResources;->mThemeResources:Lvivo/content/res/VivoThemeResources;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/content/res/VivoResources;->mThemeResources:Lvivo/content/res/VivoThemeResources;

    invoke-virtual {v4, v3}, Lvivo/content/res/VivoThemeResources;->getThemeFile(Landroid/content/res/VivoResources$VivoThemeFileInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 265
    const/4 v1, 0x0

    .line 267
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v4, v3, Landroid/content/res/VivoResources$VivoThemeFileInfo;->resourcePath:Ljava/lang/String;

    const-string v5, ".9.png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 268
    iget-object v4, v3, Landroid/content/res/VivoResources$VivoThemeFileInfo;->inputStream:Ljava/io/InputStream;

    iget-object v5, v3, Landroid/content/res/VivoResources$VivoThemeFileInfo;->resourcePath:Ljava/lang/String;

    invoke-static {v4, p0, p2, v5}, Lcom/vivo/content/NinePatchUtil;->decodeDrawableFromStream(Ljava/io/InputStream;Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 281
    :goto_1
    :try_start_1
    iget-object v4, v3, Landroid/content/res/VivoResources$VivoThemeFileInfo;->inputStream:Ljava/io/InputStream;

    if-eqz v4, :cond_0

    .line 282
    iget-object v4, v3, Landroid/content/res/VivoResources$VivoThemeFileInfo;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 270
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    iget v0, p1, Landroid/util/TypedValue;->density:I

    .line 271
    .local v0, "density":I
    invoke-static {}, Lcom/vivo/content/VivoTheme;->getThemeResoucesDensity()I

    move-result v4

    iput v4, p1, Landroid/util/TypedValue;->density:I

    .line 272
    iget-object v4, v3, Landroid/content/res/VivoResources$VivoThemeFileInfo;->inputStream:Ljava/io/InputStream;

    iget-object v5, v3, Landroid/content/res/VivoResources$VivoThemeFileInfo;->resourcePath:Ljava/lang/String;

    invoke-static {p0, p1, v4, v5}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 273
    iput v0, p1, Landroid/util/TypedValue;->density:I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 275
    .end local v0    # "density":I
    :catch_1
    move-exception v2

    .line 276
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    .line 277
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v2

    .line 278
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "VivoResources"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/content/res/VivoResources$VivoThemeFileInfo;->resourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  resource ID #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 288
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v4, p0, Landroid/content/res/VivoResources;->mSkipFiles:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getIntArray(I)[I
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/content/res/VivoResources;->getThemeIntArray(I)[I

    move-result-object v0

    .line 117
    .local v0, "intArray":[I
    if-eqz v0, :cond_0

    .line 119
    .end local v0    # "intArray":[I
    :goto_0
    return-object v0

    .restart local v0    # "intArray":[I
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method protected getPreloadedDrawable(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 248
    iget-object v2, p0, Landroid/content/res/VivoResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 249
    .local v1, "isPreloadOverlayed":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 256
    :goto_0
    return v2

    .line 251
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 252
    sget-object v2, Landroid/content/res/VivoResources;->sPreloadDrawableSource:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/VivoResources$VivoThemeFileInfo;

    .line 253
    .local v0, "fileInfo":Landroid/content/res/VivoResources$VivoThemeFileInfo;
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/content/res/VivoResources;->mThemeResources:Lvivo/content/res/VivoThemeResources;

    invoke-virtual {v2, v0}, Lvivo/content/res/VivoThemeResources;->getThemeFile(Landroid/content/res/VivoResources$VivoThemeFileInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 255
    :cond_1
    iget-object v2, p0, Landroid/content/res/VivoResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1}, Landroid/content/res/VivoResources;->getThemeStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "stringArray":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 127
    .end local v0    # "stringArray":[Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "stringArray":[Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0, p1}, Landroid/content/res/VivoResources;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 133
    .local v0, "charSequence":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 135
    .end local v0    # "charSequence":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0    # "charSequence":Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Landroid/content/res/VivoResources;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 141
    .local v0, "charSequence":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 143
    .end local v0    # "charSequence":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0    # "charSequence":Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0, p1}, Landroid/content/res/VivoResources;->getThemeStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "textArray":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 151
    .end local v0    # "textArray":[Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "textArray":[Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected getTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 7
    .param p1, "array"    # Landroid/content/res/TypedArray;

    .prologue
    .line 185
    invoke-direct {p0}, Landroid/content/res/VivoResources;->loadThemeValues()V

    .line 186
    iget-object v5, p0, Landroid/content/res/VivoResources;->mThemeValues:Lvivo/content/res/VivoThemeValues;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/content/res/VivoResources;->mThemeValues:Lvivo/content/res/VivoThemeValues;

    iget-object v5, v5, Lvivo/content/res/VivoThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-eqz v5, :cond_3

    .line 187
    iget-object v0, p1, Landroid/content/res/TypedArray;->mData:[I

    .line 188
    .local v0, "data":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_3

    .line 189
    add-int/lit8 v5, v1, 0x0

    aget v4, v0, v5

    .line 190
    .local v4, "type":I
    add-int/lit8 v5, v1, 0x3

    aget v2, v0, v5

    .line 191
    .local v2, "id":I
    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    const/16 v5, 0x1f

    if-le v4, v5, :cond_1

    :cond_0
    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 192
    :cond_1
    invoke-direct {p0, v2}, Landroid/content/res/VivoResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v3

    .line 193
    .local v3, "integer":Ljava/lang/Integer;
    if-eqz v3, :cond_2

    .line 194
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v5

    .line 188
    .end local v3    # "integer":Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 198
    .end local v0    # "data":[I
    .end local v1    # "i":I
    .end local v2    # "id":I
    .end local v4    # "type":I
    :cond_3
    return-object p1
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 204
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_1

    :cond_0
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 205
    :cond_1
    invoke-direct {p0}, Landroid/content/res/VivoResources;->loadThemeValues()V

    .line 206
    invoke-direct {p0, p1}, Landroid/content/res/VivoResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 207
    .local v0, "integer":Ljava/lang/Integer;
    if-nez v0, :cond_2

    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    if-lez v1, :cond_2

    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    if-eq p1, v1, :cond_2

    .line 208
    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v1}, Landroid/content/res/VivoResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 210
    :cond_2
    if-eqz v0, :cond_3

    .line 211
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/util/TypedValue;->data:I

    .line 213
    .end local v0    # "integer":Ljava/lang/Integer;
    :cond_3
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/content/res/VivoResources;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 56
    :cond_0
    iput-object p1, p0, Landroid/content/res/VivoResources;->mPackageName:Ljava/lang/String;

    .line 57
    if-nez p1, :cond_1

    .line 58
    const-string v0, "android"

    iput-object v0, p0, Landroid/content/res/VivoResources;->mPackageName:Ljava/lang/String;

    .line 59
    :cond_1
    iget-object v0, p0, Landroid/content/res/VivoResources;->mPackageName:Ljava/lang/String;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    invoke-static {p0}, Lvivo/content/res/VivoThemeResources;->getSystem(Landroid/content/res/Resources;)Lvivo/content/res/VivoThemeResourcesSystem;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/VivoResources;->mThemeResources:Lvivo/content/res/VivoThemeResources;

    .line 64
    :goto_1
    invoke-direct {p0}, Landroid/content/res/VivoResources;->initCookie()V

    .line 65
    invoke-direct {p0}, Landroid/content/res/VivoResources;->reset()V

    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Landroid/content/res/VivoResources;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lvivo/content/res/VivoThemeResourcesPackage;->getThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lvivo/content/res/VivoThemeResourcesPackage;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/VivoResources;->mThemeResources:Lvivo/content/res/VivoThemeResources;

    goto :goto_1
.end method

.method loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 233
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/res/VivoResources;->isPreloading()Z

    move-result v3

    if-nez v3, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-object v0

    .line 235
    :cond_1
    iget v3, p1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_2

    iget v3, p1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-le v3, v4, :cond_0

    .line 236
    :cond_2
    iget-object v3, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "string":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 238
    new-instance v1, Landroid/content/res/VivoResources$VivoThemeFileInfo;

    iget v3, p1, Landroid/util/TypedValue;->assetCookie:I

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Landroid/content/res/VivoResources$VivoThemeFileInfo;-><init>(ILjava/lang/String;Z)V

    .line 239
    .local v1, "fileInfo":Landroid/content/res/VivoResources$VivoThemeFileInfo;
    sget-object v3, Landroid/content/res/VivoResources;->sPreloadDrawableSource:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 240
    sget-object v3, Landroid/content/res/VivoResources;->sPreloadDrawableSource:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 5
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 217
    iget-object v2, p0, Landroid/content/res/VivoResources;->mSkipFiles:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 218
    invoke-super {p0, p1, p2, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 219
    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/VivoResources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {p0, v2, p2}, Lcom/vivo/content/VivoTheme;->getThemeInputStream(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 220
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 227
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_1
    return-object v1

    .line 219
    :cond_0
    iget-object v2, p0, Landroid/content/res/VivoResources;->mPackageName:Ljava/lang/String;

    goto :goto_0

    .line 222
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_1
    new-instance v0, Landroid/content/res/VivoResources$VivoThemeFileInfo;

    invoke-direct {v0, p2, v4}, Landroid/content/res/VivoResources$VivoThemeFileInfo;-><init>(Landroid/util/TypedValue;Z)V

    .line 223
    .local v0, "fileInfo":Landroid/content/res/VivoResources$VivoThemeFileInfo;
    iget-object v2, p0, Landroid/content/res/VivoResources;->mThemeResources:Lvivo/content/res/VivoThemeResources;

    invoke-virtual {v2, v0}, Lvivo/content/res/VivoThemeResources;->getThemeFile(Landroid/content/res/VivoResources$VivoThemeFileInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    iget-object v1, v0, Landroid/content/res/VivoResources$VivoThemeFileInfo;->inputStream:Ljava/io/InputStream;

    goto :goto_1

    .line 225
    :cond_2
    iget-object v2, p0, Landroid/content/res/VivoResources;->mSkipFiles:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v0    # "fileInfo":Landroid/content/res/VivoResources$VivoThemeFileInfo;
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_1
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 10
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/content/res/VivoResources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 295
    .local v1, "configuration":Landroid/content/res/Configuration;
    const/4 v0, 0x0

    .line 296
    .local v0, "configChanges":I
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 297
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 298
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 299
    iget-object v6, p0, Landroid/content/res/VivoResources;->mThemeResources:Lvivo/content/res/VivoThemeResources;

    if-eqz v6, :cond_1

    invoke-static {v0}, Landroid/content/res/ExtraConfiguration;->needNewResources(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 300
    sget-object v7, Landroid/content/res/VivoResources;->sSystemUpdateTime:Ljava/lang/Long;

    monitor-enter v7

    .line 301
    :try_start_0
    invoke-static {}, Lvivo/content/res/VivoThemeResources;->getSystem()Lvivo/content/res/VivoThemeResourcesSystem;

    move-result-object v6

    invoke-virtual {v6}, Lvivo/content/res/VivoThemeResourcesSystem;->checkUpdate()J

    move-result-wide v4

    .line 303
    .local v4, "time":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sput-object v6, Landroid/content/res/VivoResources;->sSystemUpdateTime:Ljava/lang/Long;

    .line 304
    invoke-virtual {p0}, Landroid/content/res/VivoResources;->reloadPreloadedResources()V

    .line 306
    invoke-direct {p0}, Landroid/content/res/VivoResources;->reInit()V

    .line 307
    iget-object v6, p0, Landroid/content/res/VivoResources;->mThemeResources:Lvivo/content/res/VivoThemeResources;

    invoke-virtual {v6}, Lvivo/content/res/VivoThemeResources;->checkUpdate()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 309
    .local v2, "last":J
    invoke-direct {p0}, Landroid/content/res/VivoResources;->reset()V

    .line 310
    monitor-exit v7

    .line 312
    .end local v2    # "last":J
    .end local v4    # "time":J
    :cond_1
    return-void

    .line 310
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method
