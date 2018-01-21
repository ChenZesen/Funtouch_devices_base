.class Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;
.super Ljava/lang/Object;
.source "MotionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/MotionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientStackEntry"
.end annotation


# instance fields
.field private mCallingPackageName:Ljava/lang/String;

.field private mCb:Landroid/os/IBinder;

.field private mClientId:Ljava/lang/String;

.field private mDh:Lcom/vivo/services/motion/MotionManagerService$DeathHandler;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Lcom/vivo/services/motion/MotionManagerService$DeathHandler;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "cb"    # Landroid/os/IBinder;
    .param p5, "dh"    # Lcom/vivo/services/motion/MotionManagerService$DeathHandler;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->mClientId:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->mCallingPackageName:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->mType:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->mCb:Landroid/os/IBinder;

    .line 49
    iput-object p5, p0, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->mDh:Lcom/vivo/services/motion/MotionManagerService$DeathHandler;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->mClientId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->unlinkToDeath()V

    .line 75
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 76
    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getDeathHandler()Lcom/vivo/services/motion/MotionManagerService$DeathHandler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->mDh:Lcom/vivo/services/motion/MotionManagerService$DeathHandler;

    return-object v0
.end method

.method public unlinkToDeath()V
    .locals 4

    .prologue
    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->mCb:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->mDh:Lcom/vivo/services/motion/MotionManagerService$DeathHandler;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->mCb:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->mDh:Lcom/vivo/services/motion/MotionManagerService$DeathHandler;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->mDh:Lcom/vivo/services/motion/MotionManagerService$DeathHandler;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "MotionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in ClientStackEntry.unlinkToDeath()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
