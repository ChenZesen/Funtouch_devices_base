.class public Lcom/vivo/content/VivoTheme;
.super Ljava/lang/Object;
.source "VivoTheme.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS_PART:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/content/VivoTheme$ThemeIconItem;
    }
.end annotation


# static fields
.field public static final EXTRA_ASSET_PATH:Ljava/lang/String; = "/system/framework/vivo-res.apk"

.field public static final TAG:Ljava/lang/String; = "VivoTheme"

.field private static final TAG_THEMEICONS:Ljava/lang/String; = "ThemeIcons"

.field private static final defaultThemePath:Ljava/lang/String; = "/oem/etc/theme/"

.field private static icon_id:I = 0x0

.field private static launcherIcon:[Ljava/lang/String; = null

.field private static mImageMatcher:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mItemsMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vivo/content/VivoTheme$ThemeIconItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mPackageMatcher:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mThemeIconItem:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/content/VivoTheme$ThemeIconItem;",
            ">;"
        }
    .end annotation
.end field

.field private static packageName:Ljava/lang/String; = null

.field private static final themeBasePath:Ljava/lang/String; = "/data/bbkcore/theme/"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vivo/content/VivoTheme;->mThemeIconItem:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/content/VivoTheme;->mItemsMap:Ljava/util/HashMap;

    .line 50
    sput v2, Lcom/vivo/content/VivoTheme;->icon_id:I

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/content/VivoTheme;->packageName:Ljava/lang/String;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "app_folder_icon"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "calendar_bg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "folder_icon"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "folder_icon_cover"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "icon_bg"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "icon_border"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "icon_cover"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "icon_mask"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "launcher_bottom_bar_bg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/content/VivoTheme;->launcherIcon:[Ljava/lang/String;

    .line 403
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/content/VivoTheme;->mPackageMatcher:Ljava/util/HashMap;

    .line 404
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/content/VivoTheme;->mImageMatcher:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    return-void
.end method

.method public static addExtraAssetPath(Landroid/content/res/AssetManager;)V
    .locals 4
    .param p0, "assetManger"    # Landroid/content/res/AssetManager;

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/framework/vivo-res.apk"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 61
    const-string v2, "VivoTheme"

    const-string v3, "can not find the extra res apk!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string v2, "/system/framework/vivo-res.apk"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v1

    .line 65
    .local v1, "res":I
    if-nez v1, :cond_0

    .line 66
    const-string v2, "VivoTheme"

    const-string v3, "load the extra res apk failed! >> "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getAppIconDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 176
    const/4 v4, 0x0

    .line 178
    .local v4, "mDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 179
    .local v0, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 180
    .local v2, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/vivo/content/VivoTheme;->loadPackageMatchInfo(Landroid/content/res/Resources;)V

    .line 181
    invoke-static {p2}, Lcom/vivo/content/VivoTheme;->getNewPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, "newPkg":Ljava/lang/String;
    invoke-static {}, Lcom/vivo/content/VivoTheme;->getThemePath()Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, "path":Ljava/lang/String;
    if-nez p3, :cond_2

    .line 185
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "icons/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    if-eqz v5, :cond_5

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    .line 188
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "icons/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    :goto_0
    const/4 v3, 0x0

    .line 201
    .local v3, "ins":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 202
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3    # "ins":Ljava/io/InputStream;
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 217
    .restart local v3    # "ins":Ljava/io/InputStream;
    :cond_0
    if-eqz v3, :cond_1

    .line 218
    if-eqz p0, :cond_4

    .line 219
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p0, p1, v3, v8, v9}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 222
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 223
    if-eqz v4, :cond_1

    move-object v7, v4

    .line 230
    .end local v3    # "ins":Ljava/io/InputStream;
    .end local v5    # "newPkg":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v7

    .line 192
    .restart local v5    # "newPkg":Ljava/lang/String;
    .restart local v6    # "path":Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "icons/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 194
    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    .line 195
    if-nez v5, :cond_3

    .line 196
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "icons/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto/16 :goto_0

    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :cond_3
    move-object p2, v5

    .line 195
    goto :goto_3

    .line 221
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v3    # "ins":Ljava/io/InputStream;
    :cond_4
    const/4 v8, 0x0

    :try_start_4
    invoke-static {v3, v8}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v4

    goto :goto_1

    .line 227
    .end local v3    # "ins":Ljava/io/InputStream;
    .end local v5    # "newPkg":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_2

    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v5    # "newPkg":Ljava/lang/String;
    .restart local v6    # "path":Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_2

    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :cond_5
    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto/16 :goto_0
.end method

.method public static getIconId()I
    .locals 1

    .prologue
    .line 243
    sget v0, Lcom/vivo/content/VivoTheme;->icon_id:I

    return v0
.end method

.method public static getIconPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/vivo/content/VivoTheme;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getLauncherIcon(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    const/4 v9, 0x0

    .line 78
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, "resourceName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 81
    .local v2, "file":Ljava/io/File;
    const-string v10, "com.bbk.launcher2"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "android"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "vivo"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "com.bbk.scene.tech"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "com.bbk.scene.launcher.theme"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 84
    :cond_0
    const/4 v5, 0x0

    .line 85
    .local v5, "isLauncherIcon":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v10, Lcom/vivo/content/VivoTheme;->launcherIcon:[Ljava/lang/String;

    array-length v10, v10

    if-ge v3, v10, :cond_1

    .line 90
    sget-object v10, Lcom/vivo/content/VivoTheme;->launcherIcon:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 91
    const/4 v5, 0x1

    .line 95
    :cond_1
    invoke-static {}, Lcom/vivo/content/VivoTheme;->getThemePath()Ljava/lang/String;

    move-result-object v7

    .line 96
    .local v7, "path":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 97
    const-string v10, "vigour"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 98
    const-string v10, "vigour_"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 99
    :cond_2
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "launcher/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .restart local v2    # "file":Ljava/io/File;
    :cond_3
    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 106
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 107
    .local v4, "ins":Ljava/io/InputStream;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p0, p1, v4, v10, v11}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 108
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "i":I
    .end local v4    # "ins":Ljava/io/InputStream;
    .end local v5    # "isLauncherIcon":Z
    .end local v7    # "path":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 85
    .restart local v3    # "i":I
    .restart local v5    # "isLauncherIcon":Z
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    .restart local v7    # "path":Ljava/lang/String;
    :cond_5
    const-string v10, "sym_def_app_icon"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 101
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "icons/ic_launcher_default_icon.png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "file":Ljava/io/File;
    goto :goto_1

    .line 110
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    move-object v0, v9

    .line 111
    goto :goto_2

    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "i":I
    .end local v5    # "isLauncherIcon":Z
    .end local v7    # "path":Ljava/lang/String;
    :cond_6
    move-object v0, v9

    .line 115
    goto :goto_2
.end method

.method public static getNewImage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "newImage"    # Ljava/lang/String;

    .prologue
    .line 482
    sget-object v2, Lcom/vivo/content/VivoTheme;->mImageMatcher:Ljava/util/HashMap;

    monitor-enter v2

    .line 485
    :try_start_0
    sget-object v1, Lcom/vivo/content/VivoTheme;->mImageMatcher:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 486
    sget-object v1, Lcom/vivo/content/VivoTheme;->mImageMatcher:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 487
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v2

    .line 490
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 489
    :cond_0
    monitor-exit v2

    .line 490
    const/4 v1, 0x0

    goto :goto_0

    .line 489
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getNewPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "newPkg"    # Ljava/lang/String;

    .prologue
    .line 472
    sget-object v1, Lcom/vivo/content/VivoTheme;->mPackageMatcher:Ljava/util/HashMap;

    monitor-enter v1

    .line 475
    :try_start_0
    sget-object v0, Lcom/vivo/content/VivoTheme;->mPackageMatcher:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    sget-object v0, Lcom/vivo/content/VivoTheme;->mPackageMatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    .line 478
    :goto_0
    return-object v0

    .line 477
    :cond_0
    monitor-exit v1

    .line 478
    const/4 v0, 0x0

    goto :goto_0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getThemeInputStream(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 11
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 309
    const/4 v5, 0x0

    .line 311
    .local v5, "is":Ljava/io/InputStream;
    invoke-static {p0}, Lcom/vivo/content/VivoTheme;->loadThemeIcons(Landroid/content/res/Resources;)V

    .line 312
    sget-object v9, Lcom/vivo/content/VivoTheme;->mItemsMap:Ljava/util/HashMap;

    if-nez v9, :cond_0

    .line 313
    const/4 v6, 0x0

    .line 344
    :goto_0
    return-object v6

    .line 315
    :cond_0
    invoke-static {}, Lcom/vivo/content/VivoTheme;->getThemePath()Ljava/lang/String;

    move-result-object v7

    .line 317
    .local v7, "path":Ljava/lang/String;
    :try_start_0
    sget-object v9, Lcom/vivo/content/VivoTheme;->mItemsMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 318
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1
    sget-object v9, Lcom/vivo/content/VivoTheme;->mThemeIconItem:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_3

    .line 319
    sget-object v9, Lcom/vivo/content/VivoTheme;->mThemeIconItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vivo/content/VivoTheme$ThemeIconItem;

    invoke-virtual {v9}, Lcom/vivo/content/VivoTheme$ThemeIconItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 320
    iget-object v9, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "entryName":[Ljava/lang/String;
    array-length v9, v0

    if-lez v9, :cond_2

    .line 322
    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    aget-object v1, v0, v9

    .line 323
    .local v1, "fileName":Ljava/lang/String;
    sget-object v9, Lcom/vivo/content/VivoTheme;->mThemeIconItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vivo/content/VivoTheme$ThemeIconItem;

    invoke-virtual {v9}, Lcom/vivo/content/VivoTheme$ThemeIconItem;->getIconEntry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 326
    sget-object v9, Lcom/vivo/content/VivoTheme;->mThemeIconItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vivo/content/VivoTheme$ThemeIconItem;

    invoke-virtual {v9}, Lcom/vivo/content/VivoTheme$ThemeIconItem;->getIconPath()Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "iconPath":Ljava/lang/String;
    const-string v9, "vigour"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 328
    const-string v9, "vigour_"

    const-string v10, ""

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 329
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 331
    .local v8, "pathName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .local v2, "iconFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 333
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    move-object v5, v6

    .line 334
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 318
    .end local v0    # "entryName":[Ljava/lang/String;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "iconFile":Ljava/io/File;
    .end local v3    # "iconPath":Ljava/lang/String;
    .end local v8    # "pathName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 341
    .end local v4    # "index":I
    :catch_0
    move-exception v9

    :cond_3
    move-object v6, v5

    .line 344
    goto/16 :goto_0
.end method

.method public static getThemePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 494
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/bbkcore/theme/launcher/icon_mask.png"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    .local v1, "theme":Ljava/io/File;
    const-string v0, "/data/bbkcore/theme/"

    .line 496
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "/oem/etc/theme/"

    .line 497
    :cond_0
    return-object v0
.end method

.method public static getThemeResoucesDensity()I
    .locals 1

    .prologue
    .line 293
    const/16 v0, 0x1e0

    .line 294
    .local v0, "density":I
    return v0
.end method

.method public static isSystemIcon(Landroid/content/res/Resources;I)Z
    .locals 9
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 354
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v5

    .line 357
    :cond_1
    invoke-static {}, Lcom/vivo/content/VivoTheme;->getThemePath()Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "packageName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "icons/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 361
    .local v4, "pathName":Ljava/lang/String;
    const-string v7, "com.bbk.calendar"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 363
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, "iconFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 365
    goto :goto_0

    .line 367
    :cond_2
    invoke-static {p0}, Lcom/vivo/content/VivoTheme;->loadPackageMatchInfo(Landroid/content/res/Resources;)V

    .line 368
    invoke-static {v2}, Lcom/vivo/content/VivoTheme;->getNewPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "newPkg":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 370
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "icons/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 371
    new-instance v0, Ljava/io/File;

    .end local v0    # "iconFile":Ljava/io/File;
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    .restart local v0    # "iconFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    .line 373
    goto :goto_0
.end method

.method public static loadPackageMatchInfo(Landroid/content/res/Resources;)V
    .locals 16
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 407
    if-nez p0, :cond_0

    .line 468
    :goto_0
    return-void

    .line 408
    :cond_0
    const-string v11, "VivoTheme"

    const-string v12, "load old package name start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const v11, 0x3060001

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    .line 413
    .local v10, "xmlParser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    .line 414
    .local v2, "event":I
    const/4 v9, 0x0

    .line 415
    .local v9, "pkg":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 416
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v12, Lcom/vivo/content/VivoTheme;->mPackageMatcher:Ljava/util/HashMap;

    monitor-enter v12
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 417
    :try_start_2
    sget-object v13, Lcom/vivo/content/VivoTheme;->mImageMatcher:Ljava/util/HashMap;

    monitor-enter v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 418
    :try_start_3
    sget-object v11, Lcom/vivo/content/VivoTheme;->mPackageMatcher:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    sget-object v11, Lcom/vivo/content/VivoTheme;->mImageMatcher:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 419
    :cond_1
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v12

    goto :goto_0

    .line 453
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v11
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    .line 459
    .end local v2    # "event":I
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 460
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 463
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v10    # "xmlParser":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v1

    .line 464
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 420
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "event":I
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "pkg":Ljava/lang/String;
    .restart local v10    # "xmlParser":Landroid/content/res/XmlResourceParser;
    :cond_2
    :goto_1
    const/4 v11, 0x1

    if-eq v2, v11, :cond_7

    .line 421
    packed-switch v2, :pswitch_data_0

    .line 450
    :cond_3
    :goto_2
    :pswitch_0
    :try_start_7
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    goto :goto_1

    .line 425
    :pswitch_1
    const-string v11, "package"

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 426
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 427
    .local v6, "newPackage":Ljava/lang/String;
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 428
    .local v8, "oldPackage":Ljava/lang/String;
    const-string v11, "VivoTheme"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "new : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "   old : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    sget-object v11, Lcom/vivo/content/VivoTheme;->mPackageMatcher:Ljava/util/HashMap;

    invoke-virtual {v11, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 452
    .end local v6    # "newPackage":Ljava/lang/String;
    .end local v8    # "oldPackage":Ljava/lang/String;
    :catchall_1
    move-exception v11

    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 431
    :cond_4
    :try_start_9
    const-string v11, "images"

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 432
    if-eqz v9, :cond_5

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    .line 433
    sget-object v11, Lcom/vivo/content/VivoTheme;->mImageMatcher:Ljava/util/HashMap;

    invoke-virtual {v11, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_5
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 436
    sget-object v11, Lcom/vivo/content/VivoTheme;->mImageMatcher:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/util/HashMap;

    move-object v3, v0

    .line 437
    if-nez v3, :cond_3

    .line 438
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v3, v4

    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .line 439
    :cond_6
    const-string v11, "image"

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 440
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 441
    .local v5, "nImage":Ljava/lang/String;
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 442
    .local v7, "oImage":Ljava/lang/String;
    const-string v11, "VivoTheme"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "nImage : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "   oimage: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 452
    .end local v5    # "nImage":Ljava/lang/String;
    .end local v7    # "oImage":Ljava/lang/String;
    :cond_7
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 453
    :try_start_a
    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 455
    if-eqz v9, :cond_8

    :try_start_b
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    .line 456
    sget-object v11, Lcom/vivo/content/VivoTheme;->mImageMatcher:Ljava/util/HashMap;

    invoke-virtual {v11, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :cond_8
    const-string v11, "VivoTheme"

    const-string v12, "load old package name end"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_0

    .line 465
    .end local v2    # "event":I
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v10    # "xmlParser":Landroid/content/res/XmlResourceParser;
    :catch_2
    move-exception v1

    .line 466
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static loadThemeIcons(Landroid/content/res/Resources;)V
    .locals 15
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 121
    const/4 v6, 0x0

    .line 123
    .local v6, "index":I
    sget-object v11, Lcom/vivo/content/VivoTheme;->mThemeIconItem:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const/high16 v11, 0x3060000

    :try_start_0
    invoke-virtual {p0, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 129
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 130
    .local v1, "attrs":Landroid/util/AttributeSet;
    const-string v11, "ThemeIcons"

    invoke-static {v9, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 132
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 134
    .local v2, "depth":I
    :goto_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    .local v10, "type":I
    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    if-le v11, v2, :cond_0

    :cond_2
    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    sget-object v12, Lcom/vivo/internal/R$styleable;->ThemeIcon:[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v1, v12, v13, v14}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 136
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 137
    .local v8, "packageName":Ljava/lang/String;
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "iconEntry":Ljava/lang/String;
    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "iconPath":Ljava/lang/String;
    new-instance v7, Lcom/vivo/content/VivoTheme$ThemeIconItem;

    invoke-direct {v7}, Lcom/vivo/content/VivoTheme$ThemeIconItem;-><init>()V

    .line 141
    .local v7, "item":Lcom/vivo/content/VivoTheme$ThemeIconItem;
    invoke-virtual {v7, v8}, Lcom/vivo/content/VivoTheme$ThemeIconItem;->setPackageName(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v7, v4}, Lcom/vivo/content/VivoTheme$ThemeIconItem;->setIconEntry(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v7, v5}, Lcom/vivo/content/VivoTheme$ThemeIconItem;->setIconPath(Ljava/lang/String;)V

    .line 145
    sget-object v11, Lcom/vivo/content/VivoTheme;->mThemeIconItem:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v11, Lcom/vivo/content/VivoTheme;->mItemsMap:Ljava/util/HashMap;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 148
    sget-object v11, Lcom/vivo/content/VivoTheme;->mItemsMap:Ljava/util/HashMap;

    invoke-virtual {v11, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 153
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 156
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v2    # "depth":I
    .end local v4    # "iconEntry":Ljava/lang/String;
    .end local v5    # "iconPath":Ljava/lang/String;
    .end local v7    # "item":Lcom/vivo/content/VivoTheme$ThemeIconItem;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "type":I
    :catch_0
    move-exception v3

    .line 158
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 159
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v3

    .line 161
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setIconId(I)V
    .locals 0
    .param p0, "id"    # I

    .prologue
    .line 236
    sput p0, Lcom/vivo/content/VivoTheme;->icon_id:I

    .line 238
    return-void
.end method

.method public static setIconPackageName(Ljava/lang/String;)V
    .locals 0
    .param p0, "packagename"    # Ljava/lang/String;

    .prologue
    .line 249
    sput-object p0, Lcom/vivo/content/VivoTheme;->packageName:Ljava/lang/String;

    .line 250
    return-void
.end method
