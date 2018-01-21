.class public Lvivo/content/res/VivoThemeZipFile;
.super Ljava/lang/Object;
.source "VivoThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvivo/content/res/VivoThemeZipFile$VivoZipFile;
    }
.end annotation


# static fields
.field public static final PKG_ANDROID:Ljava/lang/String; = "android"

.field public static final PKG_FRAMEWORK:Ljava/lang/String; = "framework-res"

.field public static final PKG_VIVO:Ljava/lang/String; = "vivo"

.field private static final TAG:Ljava/lang/String; = "VivoThemeZipFile"

.field public static final THEME_FILTER_FILE:Ljava/lang/String; = "filters.xml"

.field public static final THEME_VALUES_FILE:Ljava/lang/String; = "theme_values.xml"

.field private static final sThemeZipFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lvivo/content/res/VivoThemeZipFile;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mLastModifyTime:J

.field private mPath:Ljava/lang/String;

.field private mZipFile:Lvivo/content/res/VivoThemeZipFile$VivoZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lvivo/content/res/VivoThemeZipFile;->sThemeZipFiles:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lvivo/content/res/VivoThemeZipFile;->mLastModifyTime:J

    .line 66
    iput-object p1, p0, Lvivo/content/res/VivoThemeZipFile;->mPath:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private closeZipFile()V
    .locals 2

    .prologue
    .line 167
    iget-object v1, p0, Lvivo/content/res/VivoThemeZipFile;->mZipFile:Lvivo/content/res/VivoThemeZipFile$VivoZipFile;

    if-eqz v1, :cond_0

    .line 169
    :try_start_0
    iget-object v1, p0, Lvivo/content/res/VivoThemeZipFile;->mZipFile:Lvivo/content/res/VivoThemeZipFile$VivoZipFile;

    invoke-virtual {v1}, Lvivo/content/res/VivoThemeZipFile$VivoZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lvivo/content/res/VivoThemeZipFile;->mZipFile:Lvivo/content/res/VivoThemeZipFile$VivoZipFile;

    .line 175
    :cond_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getDensityResPath(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 243
    .local v0, "density":I
    const/4 v1, 0x0

    .line 244
    .local v1, "path":Ljava/lang/String;
    sparse-switch v0, :sswitch_data_0

    .line 255
    :goto_0
    return-object v1

    .line 246
    :sswitch_0
    const-string v1, "drawable-sw360dp-hdpi"

    .line 247
    goto :goto_0

    .line 249
    :sswitch_1
    const-string v1, "drawable-sw360dp-xhdpi"

    .line 250
    goto :goto_0

    .line 252
    :sswitch_2
    const-string v1, "drawable-sw360dp-xxxhdpi"

    goto :goto_0

    .line 244
    :sswitch_data_0
    .sparse-switch
        0xf0 -> :sswitch_0
        0x140 -> :sswitch_1
        0x280 -> :sswitch_2
    .end sparse-switch
.end method

.method private getNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 208
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 209
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 210
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 212
    :cond_0
    return-object p1
.end method

.method private static getPathName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 216
    if-eqz p0, :cond_0

    const-string v0, "android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string p0, "framework-res"

    .line 218
    .end local p0    # "pkg":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private getThemeZipFile()Lvivo/content/res/VivoThemeZipFile$VivoZipFile;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lvivo/content/res/VivoThemeZipFile;->mZipFile:Lvivo/content/res/VivoThemeZipFile$VivoZipFile;

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lvivo/content/res/VivoThemeZipFile;->checkUpdate()J

    .line 49
    :cond_0
    iget-object v0, p0, Lvivo/content/res/VivoThemeZipFile;->mZipFile:Lvivo/content/res/VivoThemeZipFile$VivoZipFile;

    return-object v0
.end method

.method public static getThemeZipFile(Ljava/lang/String;)Lvivo/content/res/VivoThemeZipFile;
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vivo/content/VivoTheme;->getThemePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lvivo/content/res/VivoThemeZipFile;->getPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "zipPath":Ljava/lang/String;
    sget-object v3, Lvivo/content/res/VivoThemeZipFile;->sThemeZipFiles:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 56
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lvivo/content/res/VivoThemeZipFile;>;"
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 57
    .local v1, "zipFile":Lvivo/content/res/VivoThemeZipFile;
    :goto_0
    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lvivo/content/res/VivoThemeZipFile;

    .end local v1    # "zipFile":Lvivo/content/res/VivoThemeZipFile;
    invoke-direct {v1, v2}, Lvivo/content/res/VivoThemeZipFile;-><init>(Ljava/lang/String;)V

    .line 59
    .restart local v1    # "zipFile":Lvivo/content/res/VivoThemeZipFile;
    invoke-virtual {v1}, Lvivo/content/res/VivoThemeZipFile;->isFileExist()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    sget-object v3, Lvivo/content/res/VivoThemeZipFile;->sThemeZipFiles:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    return-object v1

    .line 56
    .end local v1    # "zipFile":Lvivo/content/res/VivoThemeZipFile;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvivo/content/res/VivoThemeZipFile;

    move-object v1, v3

    goto :goto_0
.end method

.method private getZipInputStream(Landroid/content/res/VivoResources$VivoThemeFileInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileInfo"    # Landroid/content/res/VivoResources$VivoThemeFileInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "filter"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lvivo/content/res/VivoThemeZipFile;->getZipInputStream(Landroid/content/res/VivoResources$VivoThemeFileInfo;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getZipInputStream(Landroid/content/res/VivoResources$VivoThemeFileInfo;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "fileInfo"    # Landroid/content/res/VivoResources$VivoThemeFileInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "filter"    # Ljava/lang/String;
    .param p4, "def"    # Z

    .prologue
    const/4 v2, 0x0

    .line 183
    :try_start_0
    invoke-direct {p0}, Lvivo/content/res/VivoThemeZipFile;->getThemeZipFile()Lvivo/content/res/VivoThemeZipFile$VivoZipFile;

    move-result-object v3

    invoke-virtual {v3, p2}, Lvivo/content/res/VivoThemeZipFile$VivoZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 184
    .local v1, "zipEntry":Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_1

    if-eqz p4, :cond_1

    .line 185
    invoke-direct {p0, p2}, Lvivo/content/res/VivoThemeZipFile;->getNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 186
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 188
    :cond_0
    invoke-direct {p0}, Lvivo/content/res/VivoThemeZipFile;->getThemeZipFile()Lvivo/content/res/VivoThemeZipFile$VivoZipFile;

    move-result-object v3

    invoke-virtual {v3, p2}, Lvivo/content/res/VivoThemeZipFile$VivoZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 190
    :cond_1
    if-eqz v1, :cond_2

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lvivo/content/res/VivoThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/res/VivoResources$VivoThemeFileInfo;->resourcePath:Ljava/lang/String;

    .line 192
    iget-boolean v3, p1, Landroid/content/res/VivoResources$VivoThemeFileInfo;->requestStream:Z

    if-eqz v3, :cond_3

    .line 193
    invoke-direct {p0}, Lvivo/content/res/VivoThemeZipFile;->getThemeZipFile()Lvivo/content/res/VivoThemeZipFile$VivoZipFile;

    move-result-object v3

    invoke-virtual {v3, v1}, Lvivo/content/res/VivoThemeZipFile$VivoZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p1, Landroid/content/res/VivoResources$VivoThemeFileInfo;->inputStream:Ljava/io/InputStream;

    .line 194
    iget-object v3, p1, Landroid/content/res/VivoResources$VivoThemeFileInfo;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_3

    .line 204
    .end local v1    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_2
    :goto_0
    return v2

    .line 198
    .restart local v1    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkUpdate()J
    .locals 6

    .prologue
    .line 135
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lvivo/content/res/VivoThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 137
    .local v2, "modifyTime":J
    iget-wide v4, p0, Lvivo/content/res/VivoThemeZipFile;->mLastModifyTime:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 138
    iput-wide v2, p0, Lvivo/content/res/VivoThemeZipFile;->mLastModifyTime:J

    .line 139
    invoke-direct {p0}, Lvivo/content/res/VivoThemeZipFile;->closeZipFile()V

    .line 141
    :try_start_0
    new-instance v4, Lvivo/content/res/VivoThemeZipFile$VivoZipFile;

    invoke-direct {v4, p0, v1}, Lvivo/content/res/VivoThemeZipFile$VivoZipFile;-><init>(Lvivo/content/res/VivoThemeZipFile;Ljava/io/File;)V

    iput-object v4, p0, Lvivo/content/res/VivoThemeZipFile;->mZipFile:Lvivo/content/res/VivoThemeZipFile$VivoZipFile;
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    :cond_0
    :goto_0
    iget-wide v4, p0, Lvivo/content/res/VivoThemeZipFile;->mLastModifyTime:J

    return-wide v4

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/util/zip/ZipException;
    invoke-virtual {v0}, Ljava/util/zip/ZipException;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v0    # "e":Ljava/util/zip/ZipException;
    :catch_1
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lvivo/content/res/VivoThemeZipFile;->closeZipFile()V

    .line 40
    sget-object v0, Lvivo/content/res/VivoThemeZipFile;->sThemeZipFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lvivo/content/res/VivoThemeZipFile;->mLastModifyTime:J

    .line 42
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0}, Lvivo/content/res/VivoThemeZipFile;->closeZipFile()V

    .line 163
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 164
    return-void
.end method

.method public getThemeFile(Landroid/content/res/Resources;Landroid/content/res/VivoResources$VivoThemeFileInfo;)Z
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "fileInfo"    # Landroid/content/res/VivoResources$VivoThemeFileInfo;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lvivo/content/res/VivoThemeZipFile;->getThemeFile(Landroid/content/res/Resources;Landroid/content/res/VivoResources$VivoThemeFileInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getThemeFile(Landroid/content/res/Resources;Landroid/content/res/VivoResources$VivoThemeFileInfo;Ljava/lang/String;)Z
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "fileInfo"    # Landroid/content/res/VivoResources$VivoThemeFileInfo;
    .param p3, "filterPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0}, Lvivo/content/res/VivoThemeZipFile;->isFileExist()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lvivo/content/res/VivoThemeZipFile;->isValid()Z

    move-result v6

    if-nez v6, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 107
    :cond_1
    iget-object v6, p2, Landroid/content/res/VivoResources$VivoThemeFileInfo;->resourcePath:Ljava/lang/String;

    invoke-direct {p0, v6}, Lvivo/content/res/VivoThemeZipFile;->getNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "str":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v4, "sbu":Ljava/lang/StringBuilder;
    const-string v6, "res/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Lvivo/content/res/VivoThemeZipFile;->getDensityResPath(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-direct {p0, p2, v5, p3, v1}, Lvivo/content/res/VivoThemeZipFile;->getZipInputStream(Landroid/content/res/VivoResources$VivoThemeFileInfo;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 112
    .local v2, "isDpiRes":Z
    if-eqz v2, :cond_2

    .line 113
    const-string v6, "VivoThemeZipFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get density resources. path:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v1, 0x1

    goto :goto_0

    .line 116
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "sbu":Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .restart local v4    # "sbu":Ljava/lang/StringBuilder;
    iget-object v6, p2, Landroid/content/res/VivoResources$VivoThemeFileInfo;->resourcePath:Ljava/lang/String;

    invoke-direct {p0, v6}, Lvivo/content/res/VivoThemeZipFile;->getNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 119
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "language":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "country":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 123
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-direct {p0, p2, v5, p3}, Lvivo/content/res/VivoThemeZipFile;->getZipInputStream(Landroid/content/res/VivoResources$VivoThemeFileInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 127
    .local v1, "exist":Z
    if-nez v1, :cond_0

    const-string v6, ".9.png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 128
    const-string v6, ".9.png"

    const-string v7, ".png"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-direct {p0, p2, v5, p3}, Lvivo/content/res/VivoThemeZipFile;->getZipInputStream(Landroid/content/res/VivoResources$VivoThemeFileInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getZipInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0}, Lvivo/content/res/VivoThemeZipFile;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v2

    .line 73
    :cond_1
    invoke-direct {p0}, Lvivo/content/res/VivoThemeZipFile;->getThemeZipFile()Lvivo/content/res/VivoThemeZipFile$VivoZipFile;

    move-result-object v3

    invoke-virtual {v3, p1}, Lvivo/content/res/VivoThemeZipFile$VivoZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 74
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_0

    .line 76
    :try_start_0
    invoke-direct {p0}, Lvivo/content/res/VivoThemeZipFile;->getThemeZipFile()Lvivo/content/res/VivoThemeZipFile$VivoZipFile;

    move-result-object v3

    invoke-virtual {v3, v1}, Lvivo/content/res/VivoThemeZipFile$VivoZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public isFileExist()Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lvivo/content/res/VivoThemeZipFile;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lvivo/content/res/VivoThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Lvivo/content/res/VivoThemeZipFile;->getThemeZipFile()Lvivo/content/res/VivoThemeZipFile$VivoZipFile;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
