.class Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;
.super Ljava/lang/Object;
.source "ColorManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/ColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayConn"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qti/snapdragon/sdk/display/ColorManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qti/snapdragon/sdk/display/ColorManager$1;

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 361
    # getter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->colorMgrListener:Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$500()Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 362
    # getter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Listener is null"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :goto_0
    return-void

    .line 365
    :cond_0
    # getter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->REMOTE_SERVICE_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$700()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/snapdragon/sdk/display/IColorService;

    move-result-object v0

    # setter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;
    invoke-static {v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$602(Lcom/qti/snapdragon/sdk/display/IColorService;)Lcom/qti/snapdragon/sdk/display/IColorService;

    .line 367
    # getter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$200()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 368
    # getter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Callback called"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    # getter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->colorMgrListener:Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$500()Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;->onConnected()V

    .line 374
    :goto_1
    # setter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z
    invoke-static {v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$202(Z)Z

    .line 376
    # getter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "service connected"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    # getter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->serviceDie:Lcom/qti/snapdragon/sdk/display/ColorManager$ServiceDead;
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$800()Lcom/qti/snapdragon/sdk/display/ColorManager$ServiceDead;

    sput-object p2, Lcom/qti/snapdragon/sdk/display/ColorManager$ServiceDead;->mToken:Landroid/os/IBinder;

    .line 379
    :try_start_0
    # getter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->serviceDie:Lcom/qti/snapdragon/sdk/display/ColorManager$ServiceDead;
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$800()Lcom/qti/snapdragon/sdk/display/ColorManager$ServiceDead;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    goto :goto_0

    .line 372
    :cond_1
    # getter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Callback not called"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 387
    # getter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "service disconnected"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-void
.end method
