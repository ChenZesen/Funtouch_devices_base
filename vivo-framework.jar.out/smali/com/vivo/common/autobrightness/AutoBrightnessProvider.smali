.class public Lcom/vivo/common/autobrightness/AutoBrightnessProvider;
.super Ljava/lang/Object;
.source "AutoBrightnessProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoBrightnessProvider"

.field private static final mUseAlsMemory:Z


# instance fields
.field private mBrightnessProvider:Lcom/vivo/common/autobrightness/BrightnessProvider;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseAlsMemory()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->mUseAlsMemory:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->mContext:Landroid/content/Context;

    .line 21
    sget-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->mUseAlsMemory:Z

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->mBrightnessProvider:Lcom/vivo/common/autobrightness/BrightnessProvider;

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    new-instance v0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->mBrightnessProvider:Lcom/vivo/common/autobrightness/BrightnessProvider;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "AutoBrightnessProvider"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public getBrightness(I)I
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 43
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->mBrightnessProvider:Lcom/vivo/common/autobrightness/BrightnessProvider;

    invoke-virtual {v1, p1}, Lcom/vivo/common/autobrightness/BrightnessProvider;->getBrightness(I)I

    move-result v0

    .line 44
    .local v0, "brightness":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBrightness mUseAlsMemory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->mUseAlsMemory:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mUseAlsMemory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->mUseAlsMemory:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->log(Ljava/lang/String;)V

    .line 45
    return v0
.end method

.method public getBrightness(Lcom/vivo/common/autobrightness/AutobrightInfo;)I
    .locals 3
    .param p1, "abInfo"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 36
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->mBrightnessProvider:Lcom/vivo/common/autobrightness/BrightnessProvider;

    invoke-virtual {v1, p1}, Lcom/vivo/common/autobrightness/BrightnessProvider;->getBrightness(Lcom/vivo/common/autobrightness/AutobrightInfo;)I

    move-result v0

    .line 38
    .local v0, "brightness":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBrightness mUseAlsMemory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->mUseAlsMemory:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " info.mScreenLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->log(Ljava/lang/String;)V

    .line 39
    return v0
.end method

.method public notifyStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->mBrightnessProvider:Lcom/vivo/common/autobrightness/BrightnessProvider;

    invoke-virtual {v0, p1}, Lcom/vivo/common/autobrightness/BrightnessProvider;->notifyStateChanged(I)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyStateChanged state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUseAlsMemory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->mUseAlsMemory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->log(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public onBrihgtnessChangeObserved(I)I
    .locals 3
    .param p1, "brightness"    # I

    .prologue
    .line 59
    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->mBrightnessProvider:Lcom/vivo/common/autobrightness/BrightnessProvider;

    invoke-virtual {v1, p1}, Lcom/vivo/common/autobrightness/BrightnessProvider;->onBrihgtnessChangeObserved(I)I

    move-result v0

    .line 60
    .local v0, "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBrihgtnessChangeObserved  mUseAlsMemory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->mUseAlsMemory:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->log(Ljava/lang/String;)V

    .line 61
    return v0
.end method

.method public setLightSensorEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->mBrightnessProvider:Lcom/vivo/common/autobrightness/BrightnessProvider;

    invoke-virtual {v0, p1}, Lcom/vivo/common/autobrightness/BrightnessProvider;->setLightSensorEnable(Z)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLightSensorEnable  mUseAlsMemory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->mUseAlsMemory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->log(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUseAlsMemory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->mUseAlsMemory:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessProvider;->mBrightnessProvider:Lcom/vivo/common/autobrightness/BrightnessProvider;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    return-object v0
.end method
