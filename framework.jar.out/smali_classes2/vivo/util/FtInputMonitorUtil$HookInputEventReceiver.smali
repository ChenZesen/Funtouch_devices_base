.class Lvivo/util/FtInputMonitorUtil$HookInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "FtInputMonitorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvivo/util/FtInputMonitorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HookInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lvivo/util/FtInputMonitorUtil;


# direct methods
.method public constructor <init>(Lvivo/util/FtInputMonitorUtil;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 67
    iput-object p1, p0, Lvivo/util/FtInputMonitorUtil$HookInputEventReceiver;->this$0:Lvivo/util/FtInputMonitorUtil;

    .line 68
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 69
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "handled":Z
    :try_start_0
    iget-object v1, p0, Lvivo/util/FtInputMonitorUtil$HookInputEventReceiver;->this$0:Lvivo/util/FtInputMonitorUtil;

    # getter for: Lvivo/util/FtInputMonitorUtil;->mMonitorInputListener:Lvivo/util/FtInputMonitorUtil$MonitorInputListener;
    invoke-static {v1}, Lvivo/util/FtInputMonitorUtil;->access$000(Lvivo/util/FtInputMonitorUtil;)Lvivo/util/FtInputMonitorUtil$MonitorInputListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lvivo/util/FtInputMonitorUtil$HookInputEventReceiver;->this$0:Lvivo/util/FtInputMonitorUtil;

    # getter for: Lvivo/util/FtInputMonitorUtil;->mMonitorInputListener:Lvivo/util/FtInputMonitorUtil$MonitorInputListener;
    invoke-static {v1}, Lvivo/util/FtInputMonitorUtil;->access$000(Lvivo/util/FtInputMonitorUtil;)Lvivo/util/FtInputMonitorUtil$MonitorInputListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lvivo/util/FtInputMonitorUtil$MonitorInputListener;->onInputEvent(Landroid/view/InputEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 79
    :cond_0
    invoke-virtual {p0, p1, v0}, Lvivo/util/FtInputMonitorUtil$HookInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 81
    return-void

    .line 79
    :catchall_0
    move-exception v1

    invoke-virtual {p0, p1, v0}, Lvivo/util/FtInputMonitorUtil$HookInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method
