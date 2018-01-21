.class public final Lcom/android/internal/telephony/VivoBigDataManager;
.super Ljava/lang/Object;
.source "VivoBigDataManager.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VivoBigDataManager"

.field private static final MODULE_ENABLE:[Z

.field private static final MODULE_INDEX:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-array v0, v4, [Z

    aput-boolean v3, v0, v3

    sput-object v0, Lcom/android/internal/telephony/VivoBigDataManager;->MODULE_ENABLE:[Z

    .line 47
    new-array v0, v4, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "800"

    aput-object v2, v1, v3

    const-string v2, "8002"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/VivoBigDataManager;->MODULE_INDEX:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static collectData(Landroid/content/Context;Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;Ljava/util/HashMap;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 57
    invoke-virtual {p1}, Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;->ordinal()I

    move-result v0

    .line 58
    .local v0, "moduleIndex":I
    invoke-static {p1}, Lcom/android/internal/telephony/VivoBigDataManager;->isModuleEnable(Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "module is not enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/VivoBigDataManager;->log(Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v1, Lcom/vivo/common/VivoCollectData;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vivo/common/VivoCollectData;-><init>(Landroid/content/Context;)V

    .line 64
    .local v1, "vivoCollectData":Lcom/vivo/common/VivoCollectData;
    sget-object v2, Lcom/android/internal/telephony/VivoBigDataManager;->MODULE_INDEX:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Lcom/android/internal/telephony/VivoBigDataManager;->MODULE_INDEX:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    move-object v11, p2

    invoke-virtual/range {v1 .. v11}, Lcom/vivo/common/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    goto :goto_0
.end method

.method public static isModuleEnable(Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;)Z
    .locals 2
    .param p0, "tag"    # Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;->ordinal()I

    move-result v0

    .line 53
    .local v0, "moduleIndex":I
    sget-object v1, Lcom/android/internal/telephony/VivoBigDataManager;->MODULE_ENABLE:[Z

    aget-boolean v1, v1, v0

    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v0, "VivoBigDataManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method
