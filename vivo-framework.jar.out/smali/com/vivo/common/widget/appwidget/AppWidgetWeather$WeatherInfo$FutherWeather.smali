.class public Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;
.super Ljava/lang/Object;
.source "AppWidgetWeather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FutherWeather"
.end annotation


# instance fields
.field high:Ljava/lang/String;

.field icon:I

.field low:Ljava/lang/String;

.field final synthetic this$1:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

.field week:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)V
    .locals 1

    .prologue
    .line 459
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;->this$1:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    const/4 v0, 0x3

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;->icon:I

    .line 462
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;->week:Ljava/lang/String;

    .line 463
    const-string v0, "N"

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;->high:Ljava/lang/String;

    .line 464
    const-string v0, "N"

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;->low:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHigh()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;->high:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;->icon:I

    return v0
.end method

.method public getLow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;->low:Ljava/lang/String;

    return-object v0
.end method

.method public getWeek()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;->week:Ljava/lang/String;

    return-object v0
.end method
