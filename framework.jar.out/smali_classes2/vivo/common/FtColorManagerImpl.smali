.class public Lvivo/common/FtColorManagerImpl;
.super Lvivo/common/FtColorManager;
.source "FtColorManagerImpl.java"


# static fields
.field private static final MODE_NAME_LIST:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FtColorManager"


# instance fields
.field private mColorManager:Lcom/qti/snapdragon/sdk/display/ColorManager;

.field private mError:Z

.field private mModeList:[Lcom/qti/snapdragon/sdk/display/ModeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Mode_default"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Mode_EyeCare"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Mode_backlightlow"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Mode_backlighthigh"

    aput-object v2, v0, v1

    sput-object v0, Lvivo/common/FtColorManagerImpl;->MODE_NAME_LIST:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/app/Application;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app"    # Landroid/app/Application;

    .prologue
    const/4 v2, 0x1

    .line 21
    invoke-direct {p0}, Lvivo/common/FtColorManager;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvivo/common/FtColorManagerImpl;->mError:Z

    .line 22
    const-string v0, "FtColorManagerImpl  construct"

    invoke-static {v0}, Lvivo/common/FtColorManagerImpl;->Log(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->DISP_PRIMARY:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    invoke-static {p2, p1, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getInstance(Landroid/app/Application;Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v0

    iput-object v0, p0, Lvivo/common/FtColorManagerImpl;->mColorManager:Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 24
    iget-object v0, p0, Lvivo/common/FtColorManagerImpl;->mColorManager:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-nez v0, :cond_1

    .line 26
    const-string v0, "ColorManager.getInstance  return null"

    invoke-static {v0}, Lvivo/common/FtColorManagerImpl;->Log(Ljava/lang/String;)V

    .line 27
    iput-boolean v2, p0, Lvivo/common/FtColorManagerImpl;->mError:Z

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    iget-object v0, p0, Lvivo/common/FtColorManagerImpl;->mColorManager:Lcom/qti/snapdragon/sdk/display/ColorManager;

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_ALL:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    invoke-virtual {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getModes(Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;)[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    move-result-object v0

    iput-object v0, p0, Lvivo/common/FtColorManagerImpl;->mModeList:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    .line 32
    iget-object v0, p0, Lvivo/common/FtColorManagerImpl;->mModeList:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    if-nez v0, :cond_0

    .line 34
    const-string v0, "ColorManager.getModes  return null"

    invoke-static {v0}, Lvivo/common/FtColorManagerImpl;->Log(Ljava/lang/String;)V

    .line 35
    iput-boolean v2, p0, Lvivo/common/FtColorManagerImpl;->mError:Z

    goto :goto_0
.end method

.method protected static Log(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 134
    const-string v0, "FtColorManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method protected static getErrorString(I)Ljava/lang/String;
    .locals 2
    .param p0, "errorCode"    # I

    .prologue
    .line 139
    sparse-switch p0, :sswitch_data_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 142
    :sswitch_0
    const-string v0, "RET_FAILURE"

    goto :goto_0

    .line 144
    :sswitch_1
    const-string v0, "RET_FEATURE_DISABLED"

    goto :goto_0

    .line 146
    :sswitch_2
    const-string v0, "RET_ILLEGAL_ARGUMENT"

    goto :goto_0

    .line 148
    :sswitch_3
    const-string v0, "RET_NOT_SUPPORTED"

    goto :goto_0

    .line 150
    :sswitch_4
    const-string v0, "RET_PERMISSION_DENIED"

    goto :goto_0

    .line 152
    :sswitch_5
    const-string v0, "RET_VALUE_OUT_OF_RANGE"

    goto :goto_0

    .line 154
    :sswitch_6
    const-string v0, "RET_SUCCESS"

    goto :goto_0

    .line 139
    :sswitch_data_0
    .sparse-switch
        -0x3e7 -> :sswitch_0
        -0x389 -> :sswitch_1
        -0x388 -> :sswitch_2
        -0x387 -> :sswitch_4
        -0x386 -> :sswitch_5
        -0x385 -> :sswitch_3
        0x0 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public getActiveMode()I
    .locals 6

    .prologue
    const/4 v1, -0x1

    const/4 v5, 0x0

    .line 98
    iget-object v3, p0, Lvivo/common/FtColorManagerImpl;->mColorManager:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v3}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getActiveMode()[I

    move-result-object v2

    .line 99
    .local v2, "r":[I
    aget v3, v2, v5

    if-gez v3, :cond_1

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveMode  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v5

    invoke-static {v4}, Lvivo/common/FtColorManagerImpl;->getErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lvivo/common/FtColorManagerImpl;->Log(Ljava/lang/String;)V

    .line 102
    aget v3, v2, v5

    const/16 v4, -0x385

    if-ne v3, v4, :cond_0

    .line 103
    const/4 v1, -0x2

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 106
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lvivo/common/FtColorManagerImpl;->mModeList:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 108
    iget-object v3, p0, Lvivo/common/FtColorManagerImpl;->mModeList:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getId()I

    move-result v3

    aget v4, v2, v5

    if-ne v3, v4, :cond_3

    .line 110
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    sget-object v3, Lvivo/common/FtColorManagerImpl;->MODE_NAME_LIST:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 112
    sget-object v3, Lvivo/common/FtColorManagerImpl;->MODE_NAME_LIST:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lvivo/common/FtColorManagerImpl;->mModeList:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 115
    :cond_2
    const/16 v1, 0x10

    goto :goto_0

    .line 106
    .end local v1    # "j":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getModeFactor()I
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lvivo/common/FtColorManagerImpl;->mColorManager:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getColorBalance()I

    move-result v0

    .line 124
    .local v0, "r":I
    if-eqz v0, :cond_0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveMode  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lvivo/common/FtColorManagerImpl;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lvivo/common/FtColorManagerImpl;->Log(Ljava/lang/String;)V

    .line 127
    const/4 v0, -0x1

    .line 129
    .end local v0    # "r":I
    :cond_0
    return v0
.end method

.method protected isError()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lvivo/common/FtColorManagerImpl;->mError:Z

    return v0
.end method

.method public isModeExist(I)I
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lvivo/common/FtColorManagerImpl;->mModeList:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 88
    sget-object v1, Lvivo/common/FtColorManagerImpl;->MODE_NAME_LIST:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Lvivo/common/FtColorManagerImpl;->mModeList:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const/4 v1, 0x0

    .line 93
    :goto_1
    return v1

    .line 86
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_1
    const/4 v1, -0x2

    goto :goto_1
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lvivo/common/FtColorManagerImpl;->mColorManager:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->release()V

    .line 199
    return-void
.end method

.method public setActiveMode(I)I
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v2, -0x1

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lvivo/common/FtColorManagerImpl;->mModeList:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 48
    sget-object v3, Lvivo/common/FtColorManagerImpl;->MODE_NAME_LIST:[Ljava/lang/String;

    aget-object v3, v3, p1

    iget-object v4, p0, Lvivo/common/FtColorManagerImpl;->mModeList:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50
    iget-object v3, p0, Lvivo/common/FtColorManagerImpl;->mColorManager:Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget-object v4, p0, Lvivo/common/FtColorManagerImpl;->mModeList:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    move-result v1

    .line 51
    .local v1, "r":I
    if-eqz v1, :cond_1

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setActiveMode  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lvivo/common/FtColorManagerImpl;->getErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lvivo/common/FtColorManagerImpl;->Log(Ljava/lang/String;)V

    .line 54
    const/16 v3, -0x385

    if-ne v1, v3, :cond_0

    .line 55
    const/4 v2, -0x2

    .line 61
    .end local v1    # "r":I
    :cond_0
    :goto_1
    return v2

    .line 58
    .restart local v1    # "r":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 46
    .end local v1    # "r":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setActiveModeWithAm(I)I
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v2, -0x1

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lvivo/common/FtColorManagerImpl;->mModeList:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 68
    sget-object v3, Lvivo/common/FtColorManagerImpl;->MODE_NAME_LIST:[Ljava/lang/String;

    aget-object v3, v3, p1

    iget-object v4, p0, Lvivo/common/FtColorManagerImpl;->mModeList:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    iget-object v3, p0, Lvivo/common/FtColorManagerImpl;->mColorManager:Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget-object v4, p0, Lvivo/common/FtColorManagerImpl;->mModeList:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    move-result v1

    .line 71
    .local v1, "r":I
    if-eqz v1, :cond_1

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setActiveMode  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lvivo/common/FtColorManagerImpl;->getErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lvivo/common/FtColorManagerImpl;->Log(Ljava/lang/String;)V

    .line 74
    const/16 v3, -0x385

    if-ne v1, v3, :cond_0

    .line 75
    const/4 v2, -0x2

    .line 81
    .end local v1    # "r":I
    :cond_0
    :goto_1
    return v2

    .line 78
    .restart local v1    # "r":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 66
    .end local v1    # "r":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setDefaultMode(I)I
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v2, -0x1

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lvivo/common/FtColorManagerImpl;->mModeList:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 179
    sget-object v3, Lvivo/common/FtColorManagerImpl;->MODE_NAME_LIST:[Ljava/lang/String;

    aget-object v3, v3, p1

    iget-object v4, p0, Lvivo/common/FtColorManagerImpl;->mModeList:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 181
    iget-object v3, p0, Lvivo/common/FtColorManagerImpl;->mColorManager:Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget-object v4, p0, Lvivo/common/FtColorManagerImpl;->mModeList:[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setDefaultMode(I)I

    move-result v1

    .line 183
    .local v1, "r":I
    if-eqz v1, :cond_1

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefalutMode  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lvivo/common/FtColorManagerImpl;->getErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lvivo/common/FtColorManagerImpl;->Log(Ljava/lang/String;)V

    .line 186
    const/16 v3, -0x385

    if-ne v1, v3, :cond_0

    .line 187
    const/4 v2, -0x2

    .line 193
    .end local v1    # "r":I
    :cond_0
    :goto_1
    return v2

    .line 190
    .restart local v1    # "r":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 177
    .end local v1    # "r":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setModeFactor(I)I
    .locals 3
    .param p1, "factor"    # I

    .prologue
    .line 163
    iget-object v1, p0, Lvivo/common/FtColorManagerImpl;->mColorManager:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v1, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setColorBalance(I)I

    move-result v0

    .line 164
    .local v0, "r":I
    if-eqz v0, :cond_1

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setModeFactor  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lvivo/common/FtColorManagerImpl;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lvivo/common/FtColorManagerImpl;->Log(Ljava/lang/String;)V

    .line 167
    const/16 v1, -0x385

    if-ne v0, v1, :cond_0

    .line 168
    const/4 v1, -0x2

    .line 171
    :goto_0
    return v1

    .line 169
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 171
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
