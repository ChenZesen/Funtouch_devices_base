.class public Lvivo/util/FtInputFilterUtil;
.super Ljava/lang/Object;
.source "FtInputFilterUtil.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvivo/util/FtInputFilterUtil$InputFilterProxy;,
        Lvivo/util/FtInputFilterUtil$InputFilterListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFilterListener:Lvivo/util/FtInputFilterUtil$InputFilterListener;

.field private mInputFilterProxy:Lvivo/util/FtInputFilterUtil$InputFilterProxy;

.field private mLooper:Landroid/os/Looper;

.field private wms:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "FtInputFilterUtil"

    iput-object v0, p0, Lvivo/util/FtInputFilterUtil;->TAG:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lvivo/util/FtInputFilterUtil;->mInputFilterProxy:Lvivo/util/FtInputFilterUtil$InputFilterProxy;

    .line 21
    iput-object v1, p0, Lvivo/util/FtInputFilterUtil;->wms:Landroid/view/IWindowManager;

    .line 22
    iput-object v1, p0, Lvivo/util/FtInputFilterUtil;->mFilterListener:Lvivo/util/FtInputFilterUtil$InputFilterListener;

    .line 23
    iput-object v1, p0, Lvivo/util/FtInputFilterUtil;->mContext:Landroid/content/Context;

    .line 24
    iput-object v1, p0, Lvivo/util/FtInputFilterUtil;->mLooper:Landroid/os/Looper;

    .line 27
    iput-object p1, p0, Lvivo/util/FtInputFilterUtil;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lvivo/util/FtInputFilterUtil;->mLooper:Landroid/os/Looper;

    .line 29
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lvivo/util/FtInputFilterUtil;->wms:Landroid/view/IWindowManager;

    .line 30
    new-instance v0, Lvivo/util/FtInputFilterUtil$InputFilterProxy;

    invoke-direct {v0, p0, p2}, Lvivo/util/FtInputFilterUtil$InputFilterProxy;-><init>(Lvivo/util/FtInputFilterUtil;Landroid/os/Looper;)V

    iput-object v0, p0, Lvivo/util/FtInputFilterUtil;->mInputFilterProxy:Lvivo/util/FtInputFilterUtil$InputFilterProxy;

    .line 31
    return-void
.end method

.method static synthetic access$100(Lvivo/util/FtInputFilterUtil;)Lvivo/util/FtInputFilterUtil$InputFilterListener;
    .locals 1
    .param p0, "x0"    # Lvivo/util/FtInputFilterUtil;

    .prologue
    .line 17
    iget-object v0, p0, Lvivo/util/FtInputFilterUtil;->mFilterListener:Lvivo/util/FtInputFilterUtil$InputFilterListener;

    return-object v0
.end method


# virtual methods
.method public setInputFilter(Lvivo/util/FtInputFilterUtil$InputFilterListener;)Z
    .locals 4
    .param p1, "filterListener"    # Lvivo/util/FtInputFilterUtil$InputFilterListener;

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, "result":Z
    iput-object p1, p0, Lvivo/util/FtInputFilterUtil;->mFilterListener:Lvivo/util/FtInputFilterUtil$InputFilterListener;

    .line 38
    :try_start_0
    iget-object v2, p0, Lvivo/util/FtInputFilterUtil;->mFilterListener:Lvivo/util/FtInputFilterUtil$InputFilterListener;

    if-nez v2, :cond_0

    .line 39
    iget-object v2, p0, Lvivo/util/FtInputFilterUtil;->wms:Landroid/view/IWindowManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 44
    :goto_0
    const/4 v1, 0x1

    .line 48
    :goto_1
    return v1

    .line 41
    :cond_0
    iget-object v2, p0, Lvivo/util/FtInputFilterUtil;->mFilterListener:Lvivo/util/FtInputFilterUtil$InputFilterListener;

    iget-object v3, p0, Lvivo/util/FtInputFilterUtil;->mInputFilterProxy:Lvivo/util/FtInputFilterUtil$InputFilterProxy;

    # invokes: Lvivo/util/FtInputFilterUtil$InputFilterListener;->setFilterProxy(Lvivo/util/FtInputFilterUtil$InputFilterProxy;)V
    invoke-static {v2, v3}, Lvivo/util/FtInputFilterUtil$InputFilterListener;->access$000(Lvivo/util/FtInputFilterUtil$InputFilterListener;Lvivo/util/FtInputFilterUtil$InputFilterProxy;)V

    .line 42
    iget-object v2, p0, Lvivo/util/FtInputFilterUtil;->wms:Landroid/view/IWindowManager;

    iget-object v3, p0, Lvivo/util/FtInputFilterUtil;->mInputFilterProxy:Lvivo/util/FtInputFilterUtil$InputFilterProxy;

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->setInputFilter(Landroid/view/IInputFilter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_1
.end method
