.class public abstract Lcom/vivo/content/DynamicIcon;
.super Ljava/lang/Object;
.source "DynamicIcon.java"


# static fields
.field protected static final CALENDAR_COMP:Landroid/content/ComponentName;

.field protected static final CLOCK_COMP:Landroid/content/ComponentName;

.field protected static final WEATHER_COMP:Landroid/content/ComponentName;


# instance fields
.field protected final DYNAMIC_ICON_DIR:Ljava/lang/String;

.field protected final DYNAMIC_MANIFEST_NAME:Ljava/lang/String;

.field protected final TAG_ICON:Ljava/lang/String;

.field protected mComponentName:Landroid/content/ComponentName;

.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.bbk.calendar"

    const-string v2, "com.bbk.calendar.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vivo/content/DynamicIcon;->CALENDAR_COMP:Landroid/content/ComponentName;

    .line 26
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.vivo.weather"

    const-string v2, "com.vivo.weather.WeatherMain"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vivo/content/DynamicIcon;->WEATHER_COMP:Landroid/content/ComponentName;

    .line 28
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.BBKClock"

    const-string v2, "com.android.BBKClock.Timer"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vivo/content/DynamicIcon;->CLOCK_COMP:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vivo/content/VivoTheme;->getThemePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "icons/dynamic_icon/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/content/DynamicIcon;->DYNAMIC_ICON_DIR:Ljava/lang/String;

    .line 18
    const-string v0, "manifest.xml"

    iput-object v0, p0, Lcom/vivo/content/DynamicIcon;->DYNAMIC_MANIFEST_NAME:Ljava/lang/String;

    .line 19
    const-string v0, "ICON"

    iput-object v0, p0, Lcom/vivo/content/DynamicIcon;->TAG_ICON:Ljava/lang/String;

    return-void
.end method

.method public static creatDynamicIcon(Landroid/content/ComponentName;Landroid/content/Context;)Lcom/vivo/content/DynamicIcon;
    .locals 2
    .param p0, "componetName"    # Landroid/content/ComponentName;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "icon":Lcom/vivo/content/DynamicIcon;
    sget-object v1, Lcom/vivo/content/DynamicIcon;->CALENDAR_COMP:Landroid/content/ComponentName;

    invoke-virtual {p0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    new-instance v0, Lcom/vivo/content/DynamicCalendarIcon;

    .end local v0    # "icon":Lcom/vivo/content/DynamicIcon;
    invoke-direct {v0, p0}, Lcom/vivo/content/DynamicCalendarIcon;-><init>(Landroid/content/ComponentName;)V

    .line 98
    .restart local v0    # "icon":Lcom/vivo/content/DynamicIcon;
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected abstract creatDynamicIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
.end method

.method getDensityResPath(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 56
    .local v0, "density":I
    const/4 v1, 0x0

    .line 57
    .local v1, "path":Ljava/lang/String;
    sparse-switch v0, :sswitch_data_0

    .line 71
    :goto_0
    return-object v1

    .line 59
    :sswitch_0
    const-string v1, "res/drawable-sw360dp-hdpi/"

    .line 60
    goto :goto_0

    .line 62
    :sswitch_1
    const-string v1, "res/drawable-sw360dp-xhdpi/"

    .line 63
    goto :goto_0

    .line 65
    :sswitch_2
    const-string v1, "res/drawable-sw360dp-xxhdpi/"

    .line 66
    goto :goto_0

    .line 68
    :sswitch_3
    const-string v1, "res/drawable-sw360dp-xxxhdpi/"

    goto :goto_0

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        0xf0 -> :sswitch_0
        0x140 -> :sswitch_1
        0x1e0 -> :sswitch_2
        0x280 -> :sswitch_3
    .end sparse-switch
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v3, 0x0

    .line 33
    .local v3, "icon":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/vivo/content/DynamicIcon;->mComponentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/vivo/content/DynamicIcon;->DYNAMIC_ICON_DIR:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v4, p0, Lcom/vivo/content/DynamicIcon;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/vivo/content/DynamicIcon;->getDensityResPath(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "dir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "manifest.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v1, "config":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    invoke-virtual {p0, v1}, Lcom/vivo/content/DynamicIcon;->parserConfig(Ljava/io/File;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/vivo/content/DynamicIcon;->creatDynamicIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 51
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "config":Ljava/io/File;
    .end local v2    # "dir":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 44
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "config":Ljava/io/File;
    .restart local v2    # "dir":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/io/File;

    .end local v1    # "config":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "manifest.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .restart local v1    # "config":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    invoke-virtual {p0, v1}, Lcom/vivo/content/DynamicIcon;->parserConfig(Ljava/io/File;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/vivo/content/DynamicIcon;->creatDynamicIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method protected abstract parserConfig(Ljava/io/File;)V
.end method
