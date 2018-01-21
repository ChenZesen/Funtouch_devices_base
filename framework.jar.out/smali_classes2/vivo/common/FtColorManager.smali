.class public abstract Lvivo/common/FtColorManager;
.super Ljava/lang/Object;
.source "FtColorManager.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvivo/common/FtColorManager$CallBack;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_BACKLIGHT_HIGH:I = 0x3

.field public static final COLOR_MODE_BACKLIGHT_LOW:I = 0x2

.field public static final COLOR_MODE_EYE_CARE:I = 0x1

.field public static final COLOR_MODE_NORMAL:I = 0x0

.field public static final COLOR_MODE_UNKNOWN:I = 0x10

.field public static final RET_FAILED:I = -0x1

.field public static final RET_SUCCESS:I = 0x0

.field public static final RET_UNSUPPORT:I = -0x2

.field private static sFtColorManager:Lvivo/common/FtColorManager;

.field private static sRefCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput v0, Lvivo/common/FtColorManager;->sRefCount:I

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lvivo/common/FtColorManager;->sFtColorManager:Lvivo/common/FtColorManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method static synthetic access$000()Lvivo/common/FtColorManager;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lvivo/common/FtColorManager;->sFtColorManager:Lvivo/common/FtColorManager;

    return-object v0
.end method

.method static synthetic access$002(Lvivo/common/FtColorManager;)Lvivo/common/FtColorManager;
    .locals 0
    .param p0, "x0"    # Lvivo/common/FtColorManager;

    .prologue
    .line 12
    sput-object p0, Lvivo/common/FtColorManager;->sFtColorManager:Lvivo/common/FtColorManager;

    return-object p0
.end method

.method static synthetic access$108()I
    .locals 2

    .prologue
    .line 12
    sget v0, Lvivo/common/FtColorManager;->sRefCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lvivo/common/FtColorManager;->sRefCount:I

    return v0
.end method

.method public static getInstanceWithCallBack(Landroid/content/Context;Landroid/app/Application;Lvivo/common/FtColorManager$CallBack;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "callback"    # Lvivo/common/FtColorManager$CallBack;

    .prologue
    const/4 v1, 0x0

    .line 29
    sget-object v2, Lvivo/common/FtColorManager;->sFtColorManager:Lvivo/common/FtColorManager;

    if-eqz v2, :cond_1

    .line 31
    sget-object v2, Lvivo/common/FtColorManager;->sFtColorManager:Lvivo/common/FtColorManager;

    invoke-interface {p2, v2}, Lvivo/common/FtColorManager$CallBack;->onCallBack(Lvivo/common/FtColorManager;)V

    .line 32
    sget v2, Lvivo/common/FtColorManager;->sRefCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lvivo/common/FtColorManager;->sRefCount:I

    .line 56
    :cond_0
    :goto_0
    return v1

    .line 35
    :cond_1
    new-instance v2, Lvivo/common/FtColorManager$1;

    invoke-direct {v2, p0, p1, p2}, Lvivo/common/FtColorManager$1;-><init>(Landroid/content/Context;Landroid/app/Application;Lvivo/common/FtColorManager$CallBack;)V

    invoke-static {p0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->connect(Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;)I

    move-result v0

    .line 49
    .local v0, "r":I
    if-eqz v0, :cond_0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lvivo/common/FtColorManagerImpl;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lvivo/common/FtColorManagerImpl;->Log(Ljava/lang/String;)V

    .line 52
    const/16 v1, -0x385

    if-ne v0, v1, :cond_2

    .line 53
    const/4 v1, -0x2

    goto :goto_0

    .line 54
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static releaseInstance(Lvivo/common/FtColorManager;)V
    .locals 1
    .param p0, "colorManager"    # Lvivo/common/FtColorManager;

    .prologue
    .line 61
    sget v0, Lvivo/common/FtColorManager;->sRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lvivo/common/FtColorManager;->sRefCount:I

    .line 62
    sget v0, Lvivo/common/FtColorManager;->sRefCount:I

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lvivo/common/FtColorManager;->sFtColorManager:Lvivo/common/FtColorManager;

    .line 65
    invoke-virtual {p0}, Lvivo/common/FtColorManager;->onRelease()V

    .line 67
    :cond_0
    sget v0, Lvivo/common/FtColorManager;->sRefCount:I

    if-gez v0, :cond_1

    .line 68
    const/4 v0, 0x0

    sput v0, Lvivo/common/FtColorManager;->sRefCount:I

    .line 69
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract getActiveMode()I
.end method

.method public abstract getModeFactor()I
.end method

.method public abstract isModeExist(I)I
.end method

.method protected onRelease()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public abstract setActiveMode(I)I
.end method

.method public abstract setActiveModeWithAm(I)I
.end method

.method public abstract setDefaultMode(I)I
.end method

.method public abstract setModeFactor(I)I
.end method
