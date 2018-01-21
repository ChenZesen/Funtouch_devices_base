.class public Lvivo/util/FtInputMonitorUtil;
.super Ljava/lang/Object;
.source "FtInputMonitorUtil.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvivo/util/FtInputMonitorUtil$HookInputEventReceiver;,
        Lvivo/util/FtInputMonitorUtil$MonitorInputListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInputChannel:Landroid/view/InputChannel;

.field private mInputEventReceiver:Lvivo/util/FtInputMonitorUtil$HookInputEventReceiver;

.field private mIsRegisted:Z

.field private mMonitorInputListener:Lvivo/util/FtInputMonitorUtil$MonitorInputListener;

.field private mWms:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "FtInputMonitorUtil"

    iput-object v0, p0, Lvivo/util/FtInputMonitorUtil;->TAG:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lvivo/util/FtInputMonitorUtil;->mInputEventReceiver:Lvivo/util/FtInputMonitorUtil$HookInputEventReceiver;

    .line 22
    iput-object v1, p0, Lvivo/util/FtInputMonitorUtil;->mInputChannel:Landroid/view/InputChannel;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvivo/util/FtInputMonitorUtil;->mIsRegisted:Z

    .line 25
    iput-object v1, p0, Lvivo/util/FtInputMonitorUtil;->mWms:Landroid/view/IWindowManager;

    .line 26
    iput-object v1, p0, Lvivo/util/FtInputMonitorUtil;->mContext:Landroid/content/Context;

    .line 27
    iput-object v1, p0, Lvivo/util/FtInputMonitorUtil;->mMonitorInputListener:Lvivo/util/FtInputMonitorUtil$MonitorInputListener;

    .line 30
    iput-object p1, p0, Lvivo/util/FtInputMonitorUtil;->mContext:Landroid/content/Context;

    .line 31
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lvivo/util/FtInputMonitorUtil;->mWms:Landroid/view/IWindowManager;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lvivo/util/FtInputMonitorUtil;)Lvivo/util/FtInputMonitorUtil$MonitorInputListener;
    .locals 1
    .param p0, "x0"    # Lvivo/util/FtInputMonitorUtil;

    .prologue
    .line 18
    iget-object v0, p0, Lvivo/util/FtInputMonitorUtil;->mMonitorInputListener:Lvivo/util/FtInputMonitorUtil$MonitorInputListener;

    return-object v0
.end method


# virtual methods
.method public registerInputMoniter(Lvivo/util/FtInputMonitorUtil$MonitorInputListener;)Z
    .locals 5
    .param p1, "monitorInputListener"    # Lvivo/util/FtInputMonitorUtil$MonitorInputListener;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    iget-boolean v3, p0, Lvivo/util/FtInputMonitorUtil;->mIsRegisted:Z

    if-eqz v3, :cond_0

    .line 36
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "One FtInputMonitorUtil object only can register one MonitorInputListener."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_0
    :try_start_0
    iput-object p1, p0, Lvivo/util/FtInputMonitorUtil;->mMonitorInputListener:Lvivo/util/FtInputMonitorUtil$MonitorInputListener;

    .line 41
    iget-object v3, p0, Lvivo/util/FtInputMonitorUtil;->mWms:Landroid/view/IWindowManager;

    const-string v4, "input_hook"

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v3

    iput-object v3, p0, Lvivo/util/FtInputMonitorUtil;->mInputChannel:Landroid/view/InputChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    new-instance v2, Lvivo/util/FtInputMonitorUtil$HookInputEventReceiver;

    iget-object v3, p0, Lvivo/util/FtInputMonitorUtil;->mInputChannel:Landroid/view/InputChannel;

    iget-object v4, p0, Lvivo/util/FtInputMonitorUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lvivo/util/FtInputMonitorUtil$HookInputEventReceiver;-><init>(Lvivo/util/FtInputMonitorUtil;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v2, p0, Lvivo/util/FtInputMonitorUtil;->mInputEventReceiver:Lvivo/util/FtInputMonitorUtil$HookInputEventReceiver;

    .line 47
    iput-boolean v1, p0, Lvivo/util/FtInputMonitorUtil;->mIsRegisted:Z

    .line 48
    :goto_0
    return v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v2, p0, Lvivo/util/FtInputMonitorUtil;->mIsRegisted:Z

    move v1, v2

    .line 44
    goto :goto_0
.end method

.method public unRegisterInputMoniter()V
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lvivo/util/FtInputMonitorUtil;->mIsRegisted:Z

    if-nez v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lvivo/util/FtInputMonitorUtil;->mInputEventReceiver:Lvivo/util/FtInputMonitorUtil$HookInputEventReceiver;

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lvivo/util/FtInputMonitorUtil;->mInputEventReceiver:Lvivo/util/FtInputMonitorUtil$HookInputEventReceiver;

    invoke-virtual {v0}, Lvivo/util/FtInputMonitorUtil$HookInputEventReceiver;->dispose()V

    .line 57
    :cond_2
    iget-object v0, p0, Lvivo/util/FtInputMonitorUtil;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lvivo/util/FtInputMonitorUtil;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    goto :goto_0
.end method
