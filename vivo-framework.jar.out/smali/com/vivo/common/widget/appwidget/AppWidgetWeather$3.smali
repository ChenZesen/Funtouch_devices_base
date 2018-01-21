.class Lcom/vivo/common/widget/appwidget/AppWidgetWeather$3;
.super Landroid/os/Handler;
.source "AppWidgetWeather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/appwidget/AppWidgetWeather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;


# direct methods
.method constructor <init>(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mCallback:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherUpdateCallback;
    invoke-static {v0}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$1900(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherUpdateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherUpdateCallback;->onWeatherUpdate(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)V

    .line 363
    return-void
.end method
