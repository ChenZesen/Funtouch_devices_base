.class Landroid/app/IVivoSmartMultiWindowHelper$1;
.super Ljava/lang/Object;
.source "IVivoSmartMultiWindowHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IVivoSmartMultiWindowHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/IVivoSmartMultiWindowHelper;


# direct methods
.method constructor <init>(Landroid/app/IVivoSmartMultiWindowHelper;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Landroid/app/IVivoSmartMultiWindowHelper$1;->this$0:Landroid/app/IVivoSmartMultiWindowHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 37
    const-string v0, "IVivoSmartMultiWindowHelper"

    const-string v1, " onServiceConnected is true "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Landroid/app/IVivoSmartMultiWindowHelper$1;->this$0:Landroid/app/IVivoSmartMultiWindowHelper;

    invoke-static {p2}, Landroid/app/IVivoSmartMultiWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IVivoSmartMultiWindow;

    move-result-object v1

    # setter for: Landroid/app/IVivoSmartMultiWindowHelper;->mService:Landroid/app/IVivoSmartMultiWindow;
    invoke-static {v0, v1}, Landroid/app/IVivoSmartMultiWindowHelper;->access$002(Landroid/app/IVivoSmartMultiWindowHelper;Landroid/app/IVivoSmartMultiWindow;)Landroid/app/IVivoSmartMultiWindow;

    .line 39
    iget-object v0, p0, Landroid/app/IVivoSmartMultiWindowHelper$1;->this$0:Landroid/app/IVivoSmartMultiWindowHelper;

    const/4 v1, 0x1

    # setter for: Landroid/app/IVivoSmartMultiWindowHelper;->mIsBindServer:Z
    invoke-static {v0, v1}, Landroid/app/IVivoSmartMultiWindowHelper;->access$102(Landroid/app/IVivoSmartMultiWindowHelper;Z)Z

    .line 40
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 26
    const-string v0, "IVivoSmartMultiWindowHelper"

    const-string v1, " onServiceDisconnected "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Landroid/app/IVivoSmartMultiWindowHelper$1;->this$0:Landroid/app/IVivoSmartMultiWindowHelper;

    # getter for: Landroid/app/IVivoSmartMultiWindowHelper;->mService:Landroid/app/IVivoSmartMultiWindow;
    invoke-static {v0}, Landroid/app/IVivoSmartMultiWindowHelper;->access$000(Landroid/app/IVivoSmartMultiWindowHelper;)Landroid/app/IVivoSmartMultiWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Landroid/app/IVivoSmartMultiWindowHelper$1;->this$0:Landroid/app/IVivoSmartMultiWindowHelper;

    const/4 v1, 0x0

    # setter for: Landroid/app/IVivoSmartMultiWindowHelper;->mService:Landroid/app/IVivoSmartMultiWindow;
    invoke-static {v0, v1}, Landroid/app/IVivoSmartMultiWindowHelper;->access$002(Landroid/app/IVivoSmartMultiWindowHelper;Landroid/app/IVivoSmartMultiWindow;)Landroid/app/IVivoSmartMultiWindow;

    .line 30
    :cond_0
    iget-object v0, p0, Landroid/app/IVivoSmartMultiWindowHelper$1;->this$0:Landroid/app/IVivoSmartMultiWindowHelper;

    const/4 v1, 0x0

    # setter for: Landroid/app/IVivoSmartMultiWindowHelper;->mIsBindServer:Z
    invoke-static {v0, v1}, Landroid/app/IVivoSmartMultiWindowHelper;->access$102(Landroid/app/IVivoSmartMultiWindowHelper;Z)Z

    .line 31
    return-void
.end method
