.class public Lvivo/content/res/VivoThemeResources;
.super Ljava/lang/Object;
.source "VivoThemeResources.java"


# static fields
.field private static sSystem:Lvivo/content/res/VivoThemeResourcesSystem;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mOriginPkg:Ljava/lang/String;

.field protected mPkgName:Ljava/lang/String;

.field protected mResources:Landroid/content/res/Resources;

.field protected mThemeValues:Lvivo/content/res/VivoThemeValues;

.field protected mUpdatedTime:J

.field protected mZipFile:Lvivo/content/res/VivoThemeZipFile;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "VivoThemeResources"

    iput-object v0, p0, Lvivo/content/res/VivoThemeResources;->TAG:Ljava/lang/String;

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lvivo/content/res/VivoThemeResources;->mUpdatedTime:J

    .line 46
    iput-object p1, p0, Lvivo/content/res/VivoThemeResources;->mResources:Landroid/content/res/Resources;

    .line 47
    iput-object p2, p0, Lvivo/content/res/VivoThemeResources;->mOriginPkg:Ljava/lang/String;

    .line 51
    const-string v0, "vivo"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {p1}, Lcom/vivo/content/VivoTheme;->loadPackageMatchInfo(Landroid/content/res/Resources;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lvivo/content/res/VivoThemeResources;->mOriginPkg:Ljava/lang/String;

    invoke-static {v0}, Lcom/vivo/content/VivoTheme;->getNewPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lvivo/content/res/VivoThemeResources;->mOriginPkg:Ljava/lang/String;

    invoke-static {v0}, Lcom/vivo/content/VivoTheme;->getNewPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 56
    const-string v0, "VivoThemeResources"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use new package ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") replace package ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvivo/content/res/VivoThemeResources;->mOriginPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_1
    iput-object p2, p0, Lvivo/content/res/VivoThemeResources;->mPkgName:Ljava/lang/String;

    .line 59
    new-instance v0, Lvivo/content/res/VivoThemeValues;

    invoke-direct {v0}, Lvivo/content/res/VivoThemeValues;-><init>()V

    iput-object v0, p0, Lvivo/content/res/VivoThemeResources;->mThemeValues:Lvivo/content/res/VivoThemeValues;

    .line 60
    invoke-static {p2}, Lvivo/content/res/VivoThemeZipFile;->getThemeZipFile(Ljava/lang/String;)Lvivo/content/res/VivoThemeZipFile;

    move-result-object v0

    iput-object v0, p0, Lvivo/content/res/VivoThemeResources;->mZipFile:Lvivo/content/res/VivoThemeZipFile;

    .line 61
    const-string v0, "framework-res"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62
    invoke-virtual {p0}, Lvivo/content/res/VivoThemeResources;->checkUpdate()J

    .line 63
    :cond_2
    return-void
.end method

.method public static getSystem()Lvivo/content/res/VivoThemeResourcesSystem;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lvivo/content/res/VivoThemeResources;->sSystem:Lvivo/content/res/VivoThemeResourcesSystem;

    return-object v0
.end method

.method public static getSystem(Landroid/content/res/Resources;)Lvivo/content/res/VivoThemeResourcesSystem;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 66
    sget-object v0, Lvivo/content/res/VivoThemeResources;->sSystem:Lvivo/content/res/VivoThemeResourcesSystem;

    if-nez v0, :cond_0

    .line 67
    invoke-static {p0}, Lvivo/content/res/VivoThemeResourcesSystem;->getThemeSystem(Landroid/content/res/Resources;)Lvivo/content/res/VivoThemeResourcesSystem;

    move-result-object v0

    sput-object v0, Lvivo/content/res/VivoThemeResources;->sSystem:Lvivo/content/res/VivoThemeResourcesSystem;

    .line 68
    :cond_0
    sget-object v0, Lvivo/content/res/VivoThemeResources;->sSystem:Lvivo/content/res/VivoThemeResourcesSystem;

    return-object v0
.end method

.method private isSystemResource()Z
    .locals 2

    .prologue
    .line 112
    const-string v0, "framework-res"

    iget-object v1, p0, Lvivo/content/res/VivoThemeResources;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vivo"

    iget-object v1, p0, Lvivo/content/res/VivoThemeResources;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resetSystemTheme()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-object v0, Lvivo/content/res/VivoThemeResources;->sSystem:Lvivo/content/res/VivoThemeResourcesSystem;

    .line 73
    return-void
.end method


# virtual methods
.method public checkUpdate()J
    .locals 8

    .prologue
    .line 89
    iget-object v4, p0, Lvivo/content/res/VivoThemeResources;->mResources:Landroid/content/res/Resources;

    const-string v5, "is_apk_independent"

    const-string v6, "bool"

    iget-object v7, p0, Lvivo/content/res/VivoThemeResources;->mPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 90
    .local v0, "id":I
    if-lez v0, :cond_0

    .line 91
    iget-object v4, p0, Lvivo/content/res/VivoThemeResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 92
    .local v1, "value":Z
    invoke-static {}, Lvivo/content/res/VivoThemeResources;->getSystem()Lvivo/content/res/VivoThemeResourcesSystem;

    move-result-object v4

    iget-object v5, p0, Lvivo/content/res/VivoThemeResources;->mPkgName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lvivo/content/res/VivoThemeResourcesSystem;->addIndependentPkg(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 94
    .end local v1    # "value":Z
    :cond_0
    iget-object v4, p0, Lvivo/content/res/VivoThemeResources;->mZipFile:Lvivo/content/res/VivoThemeZipFile;

    invoke-virtual {v4}, Lvivo/content/res/VivoThemeZipFile;->isFileExist()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    iget-object v4, p0, Lvivo/content/res/VivoThemeResources;->mZipFile:Lvivo/content/res/VivoThemeZipFile;

    invoke-virtual {v4}, Lvivo/content/res/VivoThemeZipFile;->checkUpdate()J

    move-result-wide v2

    .line 96
    .local v2, "zipUpdateTime":J
    iget-wide v4, p0, Lvivo/content/res/VivoThemeResources;->mUpdatedTime:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 97
    iput-wide v2, p0, Lvivo/content/res/VivoThemeResources;->mUpdatedTime:J

    .line 98
    invoke-virtual {p0}, Lvivo/content/res/VivoThemeResources;->loadThemeValues()V

    .line 103
    .end local v2    # "zipUpdateTime":J
    :cond_1
    :goto_0
    iget-wide v4, p0, Lvivo/content/res/VivoThemeResources;->mUpdatedTime:J

    return-wide v4

    .line 101
    :cond_2
    invoke-virtual {p0}, Lvivo/content/res/VivoThemeResources;->clearCache()V

    goto :goto_0
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lvivo/content/res/VivoThemeResources;->mThemeValues:Lvivo/content/res/VivoThemeValues;

    invoke-virtual {v0}, Lvivo/content/res/VivoThemeValues;->clearCache()V

    .line 29
    iget-object v0, p0, Lvivo/content/res/VivoThemeResources;->mZipFile:Lvivo/content/res/VivoThemeZipFile;

    invoke-virtual {v0}, Lvivo/content/res/VivoThemeZipFile;->clearCache()V

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lvivo/content/res/VivoThemeResources;->mUpdatedTime:J

    .line 31
    return-void
.end method

.method public closeVivoZipFileForPreloaded()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lvivo/content/res/VivoThemeResources;->mZipFile:Lvivo/content/res/VivoThemeZipFile;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lvivo/content/res/VivoThemeResources;->mZipFile:Lvivo/content/res/VivoThemeZipFile;

    invoke-virtual {v0}, Lvivo/content/res/VivoThemeZipFile;->clearCache()V

    .line 38
    :cond_0
    return-void
.end method

.method public getThemeFile(Landroid/content/res/VivoResources$VivoThemeFileInfo;)Z
    .locals 2
    .param p1, "fileInfo"    # Landroid/content/res/VivoResources$VivoThemeFileInfo;

    .prologue
    .line 85
    iget-object v0, p0, Lvivo/content/res/VivoThemeResources;->mZipFile:Lvivo/content/res/VivoThemeZipFile;

    iget-object v1, p0, Lvivo/content/res/VivoThemeResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, p1}, Lvivo/content/res/VivoThemeZipFile;->getThemeFile(Landroid/content/res/Resources;Landroid/content/res/VivoResources$VivoThemeFileInfo;)Z

    move-result v0

    return v0
.end method

.method public getVivoThemePkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lvivo/content/res/VivoThemeResources;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method protected loadThemeValues()V
    .locals 4

    .prologue
    .line 107
    iget-object v1, p0, Lvivo/content/res/VivoThemeResources;->mZipFile:Lvivo/content/res/VivoThemeZipFile;

    const-string v2, "theme_values.xml"

    invoke-virtual {v1, v2}, Lvivo/content/res/VivoThemeZipFile;->getZipInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 108
    .local v0, "is":Ljava/io/InputStream;
    iget-object v1, p0, Lvivo/content/res/VivoThemeResources;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lvivo/content/res/VivoThemeResources;->mOriginPkg:Ljava/lang/String;

    invoke-direct {p0}, Lvivo/content/res/VivoThemeResources;->isSystemResource()Z

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lvivo/content/res/VivoThemeValues;->parseThemeValues(Landroid/content/res/Resources;Ljava/io/InputStream;Ljava/lang/String;Z)Lvivo/content/res/VivoThemeValues;

    move-result-object v1

    iput-object v1, p0, Lvivo/content/res/VivoThemeResources;->mThemeValues:Lvivo/content/res/VivoThemeValues;

    .line 109
    return-void
.end method

.method public mergeThemeValues(Lvivo/content/res/VivoThemeValues;)V
    .locals 1
    .param p1, "themeValues"    # Lvivo/content/res/VivoThemeValues;

    .prologue
    .line 80
    iget-object v0, p0, Lvivo/content/res/VivoThemeResources;->mZipFile:Lvivo/content/res/VivoThemeZipFile;

    invoke-virtual {v0}, Lvivo/content/res/VivoThemeZipFile;->isFileExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lvivo/content/res/VivoThemeResources;->mThemeValues:Lvivo/content/res/VivoThemeValues;

    invoke-virtual {p1, v0}, Lvivo/content/res/VivoThemeValues;->putAll(Lvivo/content/res/VivoThemeValues;)V

    .line 82
    :cond_0
    return-void
.end method
