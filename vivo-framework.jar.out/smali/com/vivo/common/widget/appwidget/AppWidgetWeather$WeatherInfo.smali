.class public Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
.super Ljava/lang/Object;
.source "AppWidgetWeather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/appwidget/AppWidgetWeather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeatherInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;
    }
.end annotation


# instance fields
.field private currentCity:Ljava/lang/String;

.field private currentCondition:Ljava/lang/String;

.field private currentIcon:I

.field private currentTemp:Ljava/lang/String;

.field private currentTempHigh:Ljava/lang/String;

.field private currentTempLow:Ljava/lang/String;

.field private futherWeather:[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;

.field private isLbs:Z

.field final synthetic this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;


# direct methods
.method constructor <init>(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;I)V
    .locals 3
    .param p2, "day"    # I

    .prologue
    .line 404
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    new-array v1, p2, [Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;

    iput-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->futherWeather:[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;

    .line 406
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 407
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->futherWeather:[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;

    new-instance v2, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;

    invoke-direct {v2, p0}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)V

    aput-object v2, v1, v0

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTemp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTemp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTempHigh:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTempHigh:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTempLow:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTempLow:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentCondition:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentCondition:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    .param p1, "x1"    # I

    .prologue
    .line 391
    iput p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentIcon:I

    return p1
.end method

.method static synthetic access$400(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->isLbs:Z

    return v0
.end method

.method static synthetic access$402(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->isLbs:Z

    return p1
.end method

.method static synthetic access$600(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->futherWeather:[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentCity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentCity:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getCurrentCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentCondition:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentIcon()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentIcon:I

    return v0
.end method

.method public getCurrentTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTempHigh()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTempHigh:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTempLow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTempLow:Ljava/lang/String;

    return-object v0
.end method

.method public getFutherWeather()[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->futherWeather:[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;

    return-object v0
.end method

.method public getIsLbs()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->isLbs:Z

    return v0
.end method
