.class public interface abstract Lcom/vivo/common/widget/appwidget/AppWidgetClock$TimeListener;
.super Ljava/lang/Object;
.source "AppWidgetClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/appwidget/AppWidgetClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TimeListener"
.end annotation


# virtual methods
.method public abstract onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract onTimeChanged(Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;)V
.end method

.method public abstract onTimeTick(Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;)V
.end method

.method public abstract onTimezoneChanged(Lcom/vivo/common/widget/appwidget/AppWidgetClock$ClockDateTime;)V
.end method
