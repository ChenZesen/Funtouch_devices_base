.class public Lvivo/content/res/VivoThemeResourcesPackage;
.super Lvivo/content/res/VivoThemeResources;
.source "VivoThemeResourcesPackage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoThemeResourcesPackage"

.field private static final sResourcePackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lvivo/content/res/VivoThemeResourcesPackage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lvivo/content/res/VivoThemeResourcesPackage;->sResourcePackages:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lvivo/content/res/VivoThemeResources;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static getThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lvivo/content/res/VivoThemeResourcesPackage;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 25
    sget-object v2, Lvivo/content/res/VivoThemeResourcesPackage;->sResourcePackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 26
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lvivo/content/res/VivoThemeResourcesPackage;>;"
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 27
    .local v1, "resourcesPackage":Lvivo/content/res/VivoThemeResourcesPackage;
    :goto_0
    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lvivo/content/res/VivoThemeResourcesPackage;

    .end local v1    # "resourcesPackage":Lvivo/content/res/VivoThemeResourcesPackage;
    invoke-direct {v1, p0, p1}, Lvivo/content/res/VivoThemeResourcesPackage;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 29
    .restart local v1    # "resourcesPackage":Lvivo/content/res/VivoThemeResourcesPackage;
    sget-object v2, Lvivo/content/res/VivoThemeResourcesPackage;->sResourcePackages:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_0
    return-object v1

    .line 26
    .end local v1    # "resourcesPackage":Lvivo/content/res/VivoThemeResourcesPackage;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvivo/content/res/VivoThemeResourcesPackage;

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lvivo/content/res/VivoThemeResourcesPackage;->sResourcePackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 37
    return-void
.end method

.method public getThemeFile(Landroid/content/res/VivoResources$VivoThemeFileInfo;)Z
    .locals 5
    .param p1, "fileInfo"    # Landroid/content/res/VivoResources$VivoThemeFileInfo;

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-static {}, Lvivo/content/res/VivoThemeResourcesPackage;->getSystem()Lvivo/content/res/VivoThemeResourcesSystem;

    move-result-object v2

    iget-object v3, p0, Lvivo/content/res/VivoThemeResourcesPackage;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lvivo/content/res/VivoThemeResourcesSystem;->getFilterInfo(Ljava/lang/String;)I

    move-result v0

    .line 63
    .local v0, "filterType":I
    if-ne v0, v1, :cond_2

    .line 64
    invoke-super {p0, p1}, Lvivo/content/res/VivoThemeResources;->getThemeFile(Landroid/content/res/VivoResources$VivoThemeFileInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v1

    .line 67
    :cond_1
    invoke-static {}, Lvivo/content/res/VivoThemeResourcesPackage;->getSystem()Lvivo/content/res/VivoThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lvivo/content/res/VivoThemeResourcesSystem;->getThemeFile(Landroid/content/res/VivoResources$VivoThemeFileInfo;)Z

    move-result v1

    goto :goto_0

    .line 70
    :cond_2
    iget v2, p1, Landroid/content/res/VivoResources$VivoThemeFileInfo;->cookie:I

    invoke-static {v2}, Landroid/content/res/VivoResources;->isSystemCookie(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 71
    if-nez v0, :cond_3

    iget-object v2, p0, Lvivo/content/res/VivoThemeResourcesPackage;->mZipFile:Lvivo/content/res/VivoThemeZipFile;

    iget-object v3, p0, Lvivo/content/res/VivoThemeResourcesPackage;->mResources:Landroid/content/res/Resources;

    invoke-static {}, Lvivo/content/res/VivoThemeResourcesPackage;->getSystem()Lvivo/content/res/VivoThemeResourcesSystem;

    move-result-object v4

    invoke-virtual {v4}, Lvivo/content/res/VivoThemeResourcesSystem;->getFilterPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, p1, v4}, Lvivo/content/res/VivoThemeZipFile;->getThemeFile(Landroid/content/res/Resources;Landroid/content/res/VivoResources$VivoThemeFileInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    :cond_3
    invoke-static {}, Lvivo/content/res/VivoThemeResourcesPackage;->getSystem()Lvivo/content/res/VivoThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lvivo/content/res/VivoThemeResourcesSystem;->getThemeFile(Landroid/content/res/VivoResources$VivoThemeFileInfo;)Z

    move-result v1

    goto :goto_0

    .line 77
    :cond_4
    invoke-super {p0, p1}, Lvivo/content/res/VivoThemeResources;->getThemeFile(Landroid/content/res/VivoResources$VivoThemeFileInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method protected loadThemeValues()V
    .locals 5

    .prologue
    .line 40
    invoke-super {p0}, Lvivo/content/res/VivoThemeResources;->loadThemeValues()V

    .line 41
    invoke-static {}, Lvivo/content/res/VivoThemeResourcesPackage;->getSystem()Lvivo/content/res/VivoThemeResourcesSystem;

    move-result-object v2

    iget-object v3, p0, Lvivo/content/res/VivoThemeResourcesPackage;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lvivo/content/res/VivoThemeResourcesSystem;->getFilterInfo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 42
    iget-object v2, p0, Lvivo/content/res/VivoThemeResourcesPackage;->mZipFile:Lvivo/content/res/VivoThemeZipFile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lvivo/content/res/VivoThemeResourcesPackage;->getSystem()Lvivo/content/res/VivoThemeResourcesSystem;

    move-result-object v4

    invoke-virtual {v4}, Lvivo/content/res/VivoThemeResourcesSystem;->getFilterPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "theme_values.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lvivo/content/res/VivoThemeZipFile;->getZipInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 43
    .local v0, "filterStream":Ljava/io/InputStream;
    iget-object v2, p0, Lvivo/content/res/VivoThemeResourcesPackage;->mResources:Landroid/content/res/Resources;

    const-string v3, "vivo"

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lvivo/content/res/VivoThemeValues;->parseThemeValues(Landroid/content/res/Resources;Ljava/io/InputStream;Ljava/lang/String;Z)Lvivo/content/res/VivoThemeValues;

    move-result-object v1

    .line 44
    .local v1, "themeValues":Lvivo/content/res/VivoThemeValues;
    iget-object v2, p0, Lvivo/content/res/VivoThemeResourcesPackage;->mThemeValues:Lvivo/content/res/VivoThemeValues;

    invoke-virtual {v2, v1}, Lvivo/content/res/VivoThemeValues;->putAll(Lvivo/content/res/VivoThemeValues;)V

    .line 46
    .end local v0    # "filterStream":Ljava/io/InputStream;
    .end local v1    # "themeValues":Lvivo/content/res/VivoThemeValues;
    :cond_0
    return-void
.end method

.method public mergeThemeValues(Lvivo/content/res/VivoThemeValues;)V
    .locals 4
    .param p1, "themeValues"    # Lvivo/content/res/VivoThemeValues;

    .prologue
    .line 49
    invoke-static {}, Lvivo/content/res/VivoThemeResourcesPackage;->getSystem()Lvivo/content/res/VivoThemeResourcesSystem;

    move-result-object v1

    iget-object v2, p0, Lvivo/content/res/VivoThemeResourcesPackage;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lvivo/content/res/VivoThemeResourcesSystem;->getFilterInfo(Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, "filterType":I
    invoke-super {p0, p1}, Lvivo/content/res/VivoThemeResources;->mergeThemeValues(Lvivo/content/res/VivoThemeValues;)V

    .line 51
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 52
    invoke-static {}, Lvivo/content/res/VivoThemeResourcesPackage;->getSystem()Lvivo/content/res/VivoThemeResourcesSystem;

    move-result-object v1

    iget-object v1, v1, Lvivo/content/res/VivoThemeResourcesSystem;->mThemeValues:Lvivo/content/res/VivoThemeValues;

    iget-object v1, v1, Lvivo/content/res/VivoThemeValues;->mSystemItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lvivo/content/res/VivoThemeResourcesPackage;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lvivo/content/res/VivoThemeResourcesPackage;->mPkgName:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lvivo/content/res/VivoThemeValues;->mergeValues(Lvivo/content/res/VivoThemeValues;Ljava/util/ArrayList;Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lvivo/content/res/VivoThemeResourcesPackage;->getSystem()Lvivo/content/res/VivoThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1}, Lvivo/content/res/VivoThemeResourcesSystem;->getFrameworkValues()Lvivo/content/res/VivoThemeValues;

    move-result-object v1

    iget-object v1, v1, Lvivo/content/res/VivoThemeValues;->mSystemItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lvivo/content/res/VivoThemeResourcesPackage;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lvivo/content/res/VivoThemeResourcesPackage;->mPkgName:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lvivo/content/res/VivoThemeValues;->mergeValues(Lvivo/content/res/VivoThemeValues;Ljava/util/ArrayList;Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 56
    :cond_0
    invoke-static {}, Lvivo/content/res/VivoThemeResourcesPackage;->getSystem()Lvivo/content/res/VivoThemeResourcesSystem;

    move-result-object v1

    iget-object v1, v1, Lvivo/content/res/VivoThemeResourcesSystem;->mThemeValues:Lvivo/content/res/VivoThemeValues;

    invoke-static {p1, v1}, Lvivo/content/res/VivoThemeValues;->mergeValues(Lvivo/content/res/VivoThemeValues;Lvivo/content/res/VivoThemeValues;)V

    .line 57
    invoke-static {}, Lvivo/content/res/VivoThemeResourcesPackage;->getSystem()Lvivo/content/res/VivoThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1}, Lvivo/content/res/VivoThemeResourcesSystem;->getFrameworkValues()Lvivo/content/res/VivoThemeValues;

    move-result-object v1

    invoke-static {p1, v1}, Lvivo/content/res/VivoThemeValues;->mergeValues(Lvivo/content/res/VivoThemeValues;Lvivo/content/res/VivoThemeValues;)V

    .line 59
    return-void
.end method
