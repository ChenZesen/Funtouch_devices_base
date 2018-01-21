.class public Lcom/vivo/content/pm/VivoPackageParserHelper;
.super Ljava/lang/Object;
.source "VivoPackageParserHelper.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final HOME_CATEGORY:Ljava/lang/String; = "android.intent.category.HOME"

.field private static final INPUT_ACTION:Ljava/lang/String; = "android.view.InputMethod"

.field private static final LIVEWALLPAPER_ACTION:Ljava/lang/String; = "android.service.wallpaper.WallpaperService"

.field private static final TAG:Ljava/lang/String; = "VivoPackageParserHelper"

.field private static final WIDGET_ACTION:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE"

.field private static limitApp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/content/pm/VivoPackageParserHelper;->limitApp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initLimitVal()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/content/pm/VivoPackageParserHelper;->limitApp:Z

    .line 91
    return-void
.end method

.method private static isLimitApp()Z
    .locals 4

    .prologue
    .line 55
    const-string v1, "VivoPackageParserHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "now get limitApp value is :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/vivo/content/pm/VivoPackageParserHelper;->limitApp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-boolean v0, Lcom/vivo/content/pm/VivoPackageParserHelper;->limitApp:Z

    .line 57
    .local v0, "isLimit":Z
    const/4 v1, 0x0

    sput-boolean v1, Lcom/vivo/content/pm/VivoPackageParserHelper;->limitApp:Z

    .line 58
    return v0
.end method

.method public static isLimitApp(Landroid/content/pm/PackageParser$Package;)Z
    .locals 11
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v9, 0x1

    .line 99
    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 100
    .local v0, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v10, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    iget-object v10, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 103
    iget-object v10, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 104
    .local v1, "ai":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v2

    .line 105
    .local v2, "count":I
    const/4 v3, 0x0

    .line 106
    .local v3, "i":I
    const/4 v8, 0x0

    .line 107
    .local v8, "value":Ljava/lang/String;
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 108
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getAction(I)Ljava/lang/String;

    move-result-object v8

    .line 109
    const-string v10, "action"

    invoke-static {v10, v8}, Lcom/vivo/content/pm/VivoPackageParserHelper;->toJudgeAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 148
    .end local v0    # "a":Landroid/content/pm/PackageParser$Activity;
    .end local v1    # "ai":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    return v9

    .line 107
    .restart local v0    # "a":Landroid/content/pm/PackageParser$Activity;
    .restart local v1    # "ai":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    :cond_4
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countCategories()I

    move-result v2

    .line 114
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_1

    .line 115
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getCategory(I)Ljava/lang/String;

    move-result-object v8

    .line 116
    const-string v10, "category"

    invoke-static {v10, v8}, Lcom/vivo/content/pm/VivoPackageParserHelper;->toJudgeAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 124
    .end local v0    # "a":Landroid/content/pm/PackageParser$Activity;
    .end local v1    # "ai":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "value":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Service;

    .line 125
    .local v6, "s":Landroid/content/pm/PackageParser$Service;
    iget-object v10, v6, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    if-eqz v10, :cond_6

    iget-object v10, v6, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 128
    iget-object v10, v6, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 129
    .local v7, "si":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    invoke-virtual {v7}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->countActions()I

    move-result v2

    .line 130
    .restart local v2    # "count":I
    const/4 v3, 0x0

    .line 131
    .restart local v3    # "i":I
    const/4 v8, 0x0

    .line 132
    .restart local v8    # "value":Ljava/lang/String;
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_8

    .line 133
    invoke-virtual {v7, v3}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->getAction(I)Ljava/lang/String;

    move-result-object v8

    .line 134
    const-string v10, "action"

    invoke-static {v10, v8}, Lcom/vivo/content/pm/VivoPackageParserHelper;->toJudgeAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 132
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 138
    :cond_8
    invoke-virtual {v7}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->countCategories()I

    move-result v2

    .line 139
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_7

    .line 140
    invoke-virtual {v7, v3}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->getCategory(I)Ljava/lang/String;

    move-result-object v8

    .line 141
    const-string v10, "category"

    invoke-static {v10, v8}, Lcom/vivo/content/pm/VivoPackageParserHelper;->toJudgeAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 148
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "s":Landroid/content/pm/PackageParser$Service;
    .end local v7    # "si":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .end local v8    # "value":Ljava/lang/String;
    :cond_9
    sget-boolean v9, Lcom/vivo/content/pm/VivoPackageParserHelper;->limitApp:Z

    goto :goto_1
.end method

.method private static toJudgeAppCategory(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "nodeName"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 67
    const-string v0, "action"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const-string v0, "android.view.InputMethod"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.service.wallpaper.WallpaperService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/vivo/content/pm/VivoPackageParserHelper;->limitApp:Z

    if-nez v0, :cond_1

    .line 70
    const-string v0, "VivoPackageParserHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ; value is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sput-boolean v3, Lcom/vivo/content/pm/VivoPackageParserHelper;->limitApp:Z

    .line 75
    :cond_1
    const-string v0, "category"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/vivo/content/pm/VivoPackageParserHelper;->limitApp:Z

    if-nez v0, :cond_2

    .line 77
    const-string v0, "VivoPackageParserHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   action is :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   ;  value is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sput-boolean v3, Lcom/vivo/content/pm/VivoPackageParserHelper;->limitApp:Z

    .line 81
    :cond_2
    sget-boolean v0, Lcom/vivo/content/pm/VivoPackageParserHelper;->limitApp:Z

    return v0
.end method
