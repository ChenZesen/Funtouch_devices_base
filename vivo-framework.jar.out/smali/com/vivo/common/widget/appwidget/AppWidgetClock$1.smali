.class Lcom/vivo/common/widget/appwidget/AppWidgetClock$1;
.super Landroid/os/Handler;
.source "AppWidgetClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/appwidget/AppWidgetClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;


# direct methods
.method constructor <init>(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 50
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mClockDateTime:Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->setToNow()V

    .line 54
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mSecondUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$SecondUpdateListener;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$200(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$SecondUpdateListener;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mClockDateTime:Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$SecondUpdateListener;->onSecondUpdate(Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;)V

    .line 56
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->sendSecondUpdateMessage()V
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)V

    goto :goto_0

    .line 59
    :pswitch_1
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mClockDateTime:Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->setToNow()V

    .line 60
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mClockDateTime:Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->getMillisecond()I

    move-result v0

    .line 61
    .local v0, "millisecond":I
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mHalfSecondUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$HalfSecondUpdateListener;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$400(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$HalfSecondUpdateListener;

    move-result-object v2

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mClockDateTime:Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;

    move-result-object v3

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v2, v3, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$HalfSecondUpdateListener;->onHalfSecondUpdate(Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;Z)V

    .line 63
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->sendHalfSecondUpdateMessage()V
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$500(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)V

    goto :goto_0

    .line 61
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 66
    .end local v0    # "millisecond":I
    :pswitch_2
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mClockDateTime:Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;->setToNow()V

    .line 67
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mPeriodUpdateListener:Lcom/vivo/common/widget/appwidget/AppWidgetClock$PeriodUpdateListener;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$600(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$PeriodUpdateListener;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetClock;->mClockDateTime:Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetClock;)Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vivo/common/widget/appwidget/AppWidgetClock$PeriodUpdateListener;->onPeriodUpdate(Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;)V

    .line 69
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetClock$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetClock;

    invoke-virtual {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetClock;->sendPeriodUpdateMessage()V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
