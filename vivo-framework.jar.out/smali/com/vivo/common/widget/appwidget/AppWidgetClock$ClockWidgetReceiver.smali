.class Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockWidgetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/appwidget/AppWidgetClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClockWidgetReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;


# direct methods
.method private constructor <init>(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockWidgetReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/common/widget/appwidget/AppWidgetClock;Lcom/vivo/common/widget/appwidget/AppWidgetClock$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock;
    .param p2, "x1"    # Lcom/vivo/common/widget/appwidget/AppWidgetClock$1;

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockWidgetReceiver;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 207
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "action":Ljava/lang/String;
    const-string v1, "AppWidgetClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClockWidgetReceiver action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockWidgetReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mTimeListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$700(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockWidgetReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mClockDateTime:Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->setToNow()V

    .line 216
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockWidgetReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mTimeListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$700(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockWidgetReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mClockDateTime:Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;->onTimeTick(Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockWidgetReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mTimeListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$700(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockWidgetReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mClockDateTime:Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->setToNow()V

    .line 224
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockWidgetReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mTimeListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$700(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockWidgetReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mClockDateTime:Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;->onTimeChanged(Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;)V

    goto :goto_0

    .line 227
    :cond_2
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 229
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockWidgetReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mTimeListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$700(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockWidgetReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mClockDateTime:Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->setToNow()V

    .line 232
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockWidgetReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mTimeListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$700(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockWidgetReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mClockDateTime:Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;->onTimezoneChanged(Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;)V

    goto :goto_0

    .line 237
    :cond_3
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockWidgetReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mTimeListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$700(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockWidgetReceiver;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mTimeListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$700(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
