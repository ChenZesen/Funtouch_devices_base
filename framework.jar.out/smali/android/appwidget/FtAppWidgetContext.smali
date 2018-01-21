.class public final Landroid/appwidget/FtAppWidgetContext;
.super Ljava/lang/Object;
.source "FtAppWidgetContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FtAppWidgetContext"

.field private static mUpgradeWidgetsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mWidgetsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/appwidget/FtAppWidgetContext;->mUpgradeWidgetsList:Ljava/util/ArrayList;

    .line 23
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.vivo.magic.clockweathermusic"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.vivo.magic.note"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.vivo.magic.manager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.vivo.dream.clock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.vivo.dream.music"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.vivo.dream.weather"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.vivo.dream.note"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.vivo.dream.manager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.vivo.simpleclock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.vivo.simplemusic"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.vivo.simpleweather"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.android.contacts.contactsstaredwidget"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.android.providers.calendar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.bbk.photoframewidget"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.vivo.browser"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.iqoo.secure"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.vivo.simpleweather.mix"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.vivo.magic.clock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.vivo.magic.music"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.vivo.widget.calendar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.vivo.doubletimezoneclock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mUpgradeWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.iqoo.secure"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mUpgradeWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.vivo.browser"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCustomViewApp(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    return-void
.end method

.method public static addUpgradeApp(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mUpgradeWidgetsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mUpgradeWidgetsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    return-void
.end method

.method public static isUpgradeApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mUpgradeWidgetsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newWidgetContext(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/content/Context;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "application"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 56
    :try_start_0
    sget-object v2, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const-string v2, "FtAppWidgetContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Appwidget has custom view, package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x4

    .line 59
    .local v0, "contextPermission":I
    const/4 v0, 0x3

    .line 60
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 68
    .end local v0    # "contextPermission":I
    .end local p0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-object p0

    .line 66
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "FtAppWidgetContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Appwidget Package name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static removeCustomViewApp(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 98
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mWidgetsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    return-void
.end method

.method public static removeUpgradeApp(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mUpgradeWidgetsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Landroid/appwidget/FtAppWidgetContext;->mUpgradeWidgetsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    return-void
.end method
