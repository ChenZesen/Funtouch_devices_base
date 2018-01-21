.class public Landroid/os/FtBuild;
.super Ljava/lang/Object;
.source "FtBuild.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final PLATFORM_INFO:Ljava/lang/String;

.field public static final PROP_ROM_VERSION:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FtBuild"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final mCustiomizeBbk:Ljava/lang/String;

.field private static final mDisplayId:Ljava/lang/String;

.field private static final mModel:Ljava/lang/String;

.field private static final mNetEntry:Ljava/lang/String;

.field private static final mOpEntry:Ljava/lang/String;

.field private static final mOsName:Ljava/lang/String;

.field private static final mOsVersion:Ljava/lang/String;

.field private static final mOverSeas:Ljava/lang/String;

.field private static final mProductName:Ljava/lang/String;

.field private static final mProductVersion:Ljava/lang/String;

.field private static final mReleaseBrand:Ljava/lang/String;

.field private static final mReleaseModel:Ljava/lang/String;

.field private static final mReleaseName:Ljava/lang/String;

.field private static mRomVer:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Landroid/os/FtBuild;->mRomVer:Ljava/lang/Float;

    .line 22
    const-string/jumbo v0, "ro.vivo.os.build.display.id"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/FtBuild;->mDisplayId:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "ro.vivo.os.name"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/FtBuild;->mOsName:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "ro.vivo.os.version"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/FtBuild;->mOsVersion:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "ro.vivo.product.model"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/FtBuild;->mProductName:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "ro.vivo.product.version"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/FtBuild;->mProductVersion:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "ro.vivo.net.entry"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/FtBuild;->mNetEntry:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "ro.vivo.product.overseas"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/FtBuild;->mOverSeas:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "ro.vivo.op.entry"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/FtBuild;->mOpEntry:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "ro.product.customize.bbk"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/FtBuild;->mCustiomizeBbk:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "ro.vivo.product.solution"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/FtBuild;->PLATFORM_INFO:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "ro.vivo.product.release.brand"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/FtBuild;->mReleaseBrand:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "ro.vivo.product.release.model"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/FtBuild;->mReleaseModel:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "ro.vivo.product.release.name"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/FtBuild;->mReleaseName:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "ro.product.model"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/FtBuild;->mModel:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "ro.vivo.rom.version"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/FtBuild;->PROP_ROM_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFuntouchOsVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    sget-object v1, Landroid/os/FtBuild;->mDisplayId:Ljava/lang/String;

    const-string/jumbo v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/FtBuild;->mOsName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/FtBuild;->mOsVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "funtouchOsVersion":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFuntouchOsVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FtBuild;->printfInfo(Ljava/lang/String;)V

    .line 65
    return-object v0

    .line 61
    .end local v0    # "funtouchOsVersion":Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/os/FtBuild;->mDisplayId:Ljava/lang/String;

    .restart local v0    # "funtouchOsVersion":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getFuntouchSDKVersion()F
    .locals 1

    .prologue
    .line 46
    const v0, 0x41a8cccd    # 21.1f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Landroid/os/FtBuild;->mProductName:Ljava/lang/String;

    return-object v0
.end method

.method public static getProductReleaseModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    sget-object v0, Landroid/os/FtBuild;->mReleaseBrand:Ljava/lang/String;

    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    sget-object v0, Landroid/os/FtBuild;->mReleaseModel:Ljava/lang/String;

    .line 223
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/FtBuild;->mReleaseBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/FtBuild;->mReleaseModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getProductReleaseName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    invoke-static {}, Landroid/os/FtBuild;->isFlagshipMachine()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 197
    sget-object v0, Landroid/os/FtBuild;->mReleaseBrand:Ljava/lang/String;

    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Landroid/os/FtBuild;->mReleaseName:Ljava/lang/String;

    .line 208
    :goto_0
    return-object v0

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/FtBuild;->mReleaseBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/FtBuild;->mReleaseName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_1
    sget-object v0, Landroid/os/FtBuild;->mModel:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getProductVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    sget-object v0, Landroid/os/FtBuild;->mProductVersion:Ljava/lang/String;

    .line 115
    .local v0, "version":Ljava/lang/String;
    invoke-static {}, Landroid/os/FtBuild;->isNetEntry()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 117
    const-string/jumbo v1, "ro.build.netaccess.version"

    const-string/jumbo v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_0
    :goto_0
    return-object v0

    .line 119
    :cond_1
    invoke-static {}, Landroid/os/FtBuild;->isCmccOpEntry()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    const-string/jumbo v1, "ro.vivo.op.entry.version"

    const-string/jumbo v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_2
    sget-object v1, Landroid/os/FtBuild;->mCustiomizeBbk:Ljava/lang/String;

    const-string v2, "CN-YD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 125
    const-string v1, "PD1421"

    invoke-static {}, Landroid/os/FtBuild;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    const-string v1, "PD1421D"

    const-string v2, "PD1421L"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_3
    const-string v1, "_"

    const-string v2, "-YD_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_4
    sget-object v1, Landroid/os/FtBuild;->mCustiomizeBbk:Ljava/lang/String;

    const-string v2, "CN-DX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "_"

    const-string v2, "-DX_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getRomVersion()F
    .locals 5

    .prologue
    .line 72
    sget-object v3, Landroid/os/FtBuild;->mRomVer:Ljava/lang/Float;

    if-eqz v3, :cond_0

    .line 74
    sget-object v3, Landroid/os/FtBuild;->mRomVer:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 107
    .local v1, "romVer":Ljava/lang/String;
    .local v2, "romVerSplit":[Ljava/lang/String;
    :goto_0
    return v3

    .line 77
    .end local v1    # "romVer":Ljava/lang/String;
    .end local v2    # "romVerSplit":[Ljava/lang/String;
    :cond_0
    sget-object v1, Landroid/os/FtBuild;->PROP_ROM_VERSION:Ljava/lang/String;

    .line 78
    .restart local v1    # "romVer":Ljava/lang/String;
    const/4 v2, 0x0

    .line 79
    .restart local v2    # "romVerSplit":[Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string/jumbo v3, "unknown"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 81
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 85
    if-eqz v2, :cond_3

    :try_start_0
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    .line 87
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    sput-object v3, Landroid/os/FtBuild;->mRomVer:Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_1
    :goto_1
    sget-object v3, Landroid/os/FtBuild;->mRomVer:Ljava/lang/Float;

    if-nez v3, :cond_2

    .line 102
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    sput-object v3, Landroid/os/FtBuild;->mRomVer:Ljava/lang/Float;

    .line 105
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRomVersion mRomVer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/FtBuild;->mRomVer:Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/FtBuild;->printfInfo(Ljava/lang/String;)V

    .line 107
    sget-object v3, Landroid/os/FtBuild;->mRomVer:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_0

    .line 91
    :cond_3
    :try_start_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    sput-object v3, Landroid/os/FtBuild;->mRomVer:Ljava/lang/Float;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method public static isCmccOpEntry()Z
    .locals 2

    .prologue
    .line 158
    sget-object v0, Landroid/os/FtBuild;->mOpEntry:Ljava/lang/String;

    const-string v1, "CMCC_RW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/FtBuild;->mOpEntry:Ljava/lang/String;

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFlagshipMachine()Z
    .locals 2

    .prologue
    .line 188
    sget-object v0, Landroid/os/FtBuild;->mReleaseName:Ljava/lang/String;

    sget-object v1, Landroid/os/FtBuild;->mReleaseModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMTKPlatform()Z
    .locals 2

    .prologue
    .line 176
    sget-object v0, Landroid/os/FtBuild;->PLATFORM_INFO:Ljava/lang/String;

    const-string v1, "MTK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNetEntry()Z
    .locals 2

    .prologue
    .line 152
    const-string/jumbo v0, "yes"

    sget-object v1, Landroid/os/FtBuild;->mNetEntry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isOverSeas()Z
    .locals 2

    .prologue
    .line 170
    const-string/jumbo v0, "yes"

    sget-object v1, Landroid/os/FtBuild;->mOverSeas:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isQCOMPlatform()Z
    .locals 2

    .prologue
    .line 182
    sget-object v0, Landroid/os/FtBuild;->PLATFORM_INFO:Ljava/lang/String;

    const-string v1, "QCOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static printfInfo(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 229
    const-string v0, "FtBuild"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method
