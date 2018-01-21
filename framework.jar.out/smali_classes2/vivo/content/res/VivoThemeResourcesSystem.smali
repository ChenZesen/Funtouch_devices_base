.class public Lvivo/content/res/VivoThemeResourcesSystem;
.super Lvivo/content/res/VivoThemeResources;
.source "VivoThemeResourcesSystem.java"


# static fields
.field public static final FILTER_FALSE:I = 0x0

.field public static final FILTER_NONE:I = -0x1

.field public static final FILTER_TRUE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VivoThemeResourcesSystem"

.field private static sFramework:Lvivo/content/res/VivoThemeResources;


# instance fields
.field private mFilterPath:Ljava/lang/String;

.field private mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lvivo/content/res/VivoThemeResources;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static getThemeSystem(Landroid/content/res/Resources;)Lvivo/content/res/VivoThemeResourcesSystem;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 40
    new-instance v0, Lvivo/content/res/VivoThemeResources;

    const-string v1, "framework-res"

    invoke-direct {v0, p0, v1}, Lvivo/content/res/VivoThemeResources;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    sput-object v0, Lvivo/content/res/VivoThemeResourcesSystem;->sFramework:Lvivo/content/res/VivoThemeResources;

    .line 41
    new-instance v0, Lvivo/content/res/VivoThemeResourcesSystem;

    const-string v1, "vivo"

    invoke-direct {v0, p0, v1}, Lvivo/content/res/VivoThemeResourcesSystem;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    return-object v0
.end method

.method private loadFilters()V
    .locals 11

    .prologue
    .line 111
    iget-object v8, p0, Lvivo/content/res/VivoThemeResourcesSystem;->mPackages:Ljava/util/HashMap;

    if-eqz v8, :cond_0

    .line 112
    iget-object v8, p0, Lvivo/content/res/VivoThemeResourcesSystem;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 113
    :cond_0
    iget-object v8, p0, Lvivo/content/res/VivoThemeResourcesSystem;->mZipFile:Lvivo/content/res/VivoThemeZipFile;

    const-string v9, "filters.xml"

    invoke-virtual {v8, v9}, Lvivo/content/res/VivoThemeZipFile;->getZipInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 114
    .local v4, "is":Ljava/io/InputStream;
    if-nez v4, :cond_1

    .line 144
    :goto_0
    return-void

    .line 117
    :cond_1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v8

    const-string v9, "filter"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 118
    .local v2, "filterList":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 119
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 120
    .local v1, "filterElement":Lorg/w3c/dom/Element;
    const-string v8, "path"

    invoke-interface {v1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lvivo/content/res/VivoThemeResourcesSystem;->mFilterPath:Ljava/lang/String;

    .line 121
    iget-object v8, p0, Lvivo/content/res/VivoThemeResourcesSystem;->mFilterPath:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lvivo/content/res/VivoThemeResourcesSystem;->mFilterPath:Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 122
    const-string v8, "package"

    invoke-interface {v1, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 123
    .local v7, "pkgList":Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v5, v8, :cond_3

    .line 124
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 125
    .local v6, "pkgElement":Lorg/w3c/dom/Element;
    iget-object v8, p0, Lvivo/content/res/VivoThemeResourcesSystem;->mPackages:Ljava/util/HashMap;

    if-nez v8, :cond_2

    .line 126
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lvivo/content/res/VivoThemeResourcesSystem;->mPackages:Ljava/util/HashMap;

    .line 127
    :cond_2
    iget-object v8, p0, Lvivo/content/res/VivoThemeResourcesSystem;->mPackages:Ljava/util/HashMap;

    const-string v9, "name"

    invoke-interface {v6, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 118
    .end local v5    # "j":I
    .end local v6    # "pkgElement":Lorg/w3c/dom/Element;
    .end local v7    # "pkgList":Lorg/w3c/dom/NodeList;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 139
    .end local v1    # "filterElement":Lorg/w3c/dom/Element;
    :cond_4
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "filterList":Lorg/w3c/dom/NodeList;
    .end local v3    # "i":I
    :catch_1
    move-exception v0

    .line 132
    .local v0, "e":Lorg/xml/sax/SAXException;
    :try_start_2
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 140
    :catch_2
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 134
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 140
    :catch_4
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 136
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_6
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 139
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 140
    :catch_6
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 139
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 142
    :goto_3
    throw v8

    .line 140
    :catch_7
    move-exception v0

    .line 141
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public addIndependentPkg(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 102
    iget-object v0, p0, Lvivo/content/res/VivoThemeResourcesSystem;->mPackages:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lvivo/content/res/VivoThemeResourcesSystem;->mPackages:Ljava/util/HashMap;

    .line 104
    iget-object v0, p0, Lvivo/content/res/VivoThemeResourcesSystem;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lvivo/content/res/VivoThemeResourcesSystem;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvivo/content/res/VivoThemeResourcesSystem;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_0

    .line 106
    :cond_2
    iget-object v0, p0, Lvivo/content/res/VivoThemeResourcesSystem;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public checkUpdate()J
    .locals 4

    .prologue
    .line 45
    invoke-super {p0}, Lvivo/content/res/VivoThemeResources;->checkUpdate()J

    move-result-wide v0

    .line 46
    .local v0, "updateTime":J
    sget-object v2, Lvivo/content/res/VivoThemeResourcesSystem;->sFramework:Lvivo/content/res/VivoThemeResources;

    invoke-virtual {v2}, Lvivo/content/res/VivoThemeResources;->checkUpdate()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lvivo/content/res/VivoThemeResourcesSystem;->sFramework:Lvivo/content/res/VivoThemeResources;

    invoke-virtual {v0}, Lvivo/content/res/VivoThemeResources;->clearCache()V

    .line 79
    invoke-super {p0}, Lvivo/content/res/VivoThemeResources;->clearCache()V

    .line 80
    iget-object v0, p0, Lvivo/content/res/VivoThemeResourcesSystem;->mPackages:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lvivo/content/res/VivoThemeResourcesSystem;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 82
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lvivo/content/res/VivoThemeResourcesSystem;->mFilterPath:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public closeVivoZipFileForPreloaded()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lvivo/content/res/VivoThemeResources;->closeVivoZipFileForPreloaded()V

    .line 53
    sget-object v0, Lvivo/content/res/VivoThemeResourcesSystem;->sFramework:Lvivo/content/res/VivoThemeResources;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lvivo/content/res/VivoThemeResourcesSystem;->sFramework:Lvivo/content/res/VivoThemeResources;

    invoke-virtual {v0}, Lvivo/content/res/VivoThemeResources;->closeVivoZipFileForPreloaded()V

    .line 56
    :cond_0
    return-void
.end method

.method public getFilterInfo(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v1, p0, Lvivo/content/res/VivoThemeResourcesSystem;->mPackages:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lvivo/content/res/VivoThemeResourcesSystem;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lvivo/content/res/VivoThemeResourcesSystem;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 88
    .local v0, "isIndependent":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 90
    .end local v0    # "isIndependent":Z
    :goto_0
    return v1

    .line 88
    .restart local v0    # "isIndependent":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 90
    .end local v0    # "isIndependent":Z
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getFilterPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lvivo/content/res/VivoThemeResourcesSystem;->mFilterPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameworkValues()Lvivo/content/res/VivoThemeValues;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lvivo/content/res/VivoThemeResourcesSystem;->sFramework:Lvivo/content/res/VivoThemeResources;

    iget-object v0, v0, Lvivo/content/res/VivoThemeResources;->mThemeValues:Lvivo/content/res/VivoThemeValues;

    return-object v0
.end method

.method public getThemeFile(Landroid/content/res/VivoResources$VivoThemeFileInfo;)Z
    .locals 2
    .param p1, "fileInfo"    # Landroid/content/res/VivoResources$VivoThemeFileInfo;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lvivo/content/res/VivoThemeResources;->getThemeFile(Landroid/content/res/VivoResources$VivoThemeFileInfo;)Z

    move-result v0

    .line 72
    .local v0, "fileExist":Z
    if-nez v0, :cond_0

    .line 73
    sget-object v1, Lvivo/content/res/VivoThemeResourcesSystem;->sFramework:Lvivo/content/res/VivoThemeResources;

    invoke-virtual {v1, p1}, Lvivo/content/res/VivoThemeResources;->getThemeFile(Landroid/content/res/VivoResources$VivoThemeFileInfo;)Z

    move-result v1

    .line 74
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected loadThemeValues()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lvivo/content/res/VivoThemeResourcesSystem;->loadFilters()V

    .line 61
    invoke-super {p0}, Lvivo/content/res/VivoThemeResources;->loadThemeValues()V

    .line 62
    return-void
.end method

.method public mergeThemeValues(Lvivo/content/res/VivoThemeValues;)V
    .locals 1
    .param p1, "themeValues"    # Lvivo/content/res/VivoThemeValues;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lvivo/content/res/VivoThemeResources;->mergeThemeValues(Lvivo/content/res/VivoThemeValues;)V

    .line 67
    sget-object v0, Lvivo/content/res/VivoThemeResourcesSystem;->sFramework:Lvivo/content/res/VivoThemeResources;

    iget-object v0, v0, Lvivo/content/res/VivoThemeResources;->mThemeValues:Lvivo/content/res/VivoThemeValues;

    invoke-static {p1, v0}, Lvivo/content/res/VivoThemeValues;->mergeValues(Lvivo/content/res/VivoThemeValues;Lvivo/content/res/VivoThemeValues;)V

    .line 68
    return-void
.end method
