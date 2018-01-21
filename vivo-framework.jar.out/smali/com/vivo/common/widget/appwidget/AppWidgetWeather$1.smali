.class Lcom/vivo/common/widget/appwidget/AppWidgetWeather$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 189
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 193
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.vivo.weather.data.change"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->removeMsg()V
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)V

    .line 197
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWorkHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$200(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->updateRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    :cond_0
    return-void
.end method
