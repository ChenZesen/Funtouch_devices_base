.class public Lcom/vivo/services/motion/MotionManagerService;
.super Lcom/vivo/services/motion/IMotionManager$Stub;
.source "MotionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/motion/MotionManagerService$DeathHandler;,
        Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MotionManagerService"

.field private static final mObjectLock:Ljava/lang/Object;


# instance fields
.field private final mClientStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/MotionManagerService;->mObjectLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vivo/services/motion/IMotionManager$Stub;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/motion/MotionManagerService;->mClientStack:Ljava/util/Stack;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vivo/services/motion/IMotionManager$Stub;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/motion/MotionManagerService;->mClientStack:Ljava/util/Stack;

    .line 22
    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/vivo/services/motion/MotionManagerService;->mObjectLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/services/motion/MotionManagerService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/MotionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/vivo/services/motion/MotionManagerService;->removeClientStackEntry(Ljava/lang/String;Z)V

    return-void
.end method

.method private removeClientStackEntry(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "clientToRemove"    # Ljava/lang/String;
    .param p2, "signal"    # Z

    .prologue
    .line 148
    iget-object v2, p0, Lcom/vivo/services/motion/MotionManagerService;->mClientStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/vivo/services/motion/MotionManagerService;->mClientStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;

    # getter for: Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->mClientId:Ljava/lang/String;
    invoke-static {v2}, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->access$000(Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p0, Lcom/vivo/services/motion/MotionManagerService;->mClientStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;

    .line 150
    .local v0, "Cse":Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;
    invoke-virtual {v0}, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->unlinkToDeath()V

    .line 151
    const-string v2, "MotionManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->mClientId:Ljava/lang/String;
    invoke-static {v0}, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->access$000(Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-eqz p2, :cond_0

    .line 165
    .end local v0    # "Cse":Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;
    :cond_0
    return-void

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/vivo/services/motion/MotionManagerService;->mClientStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 156
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;

    .line 158
    .restart local v0    # "Cse":Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;
    # getter for: Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->mClientId:Ljava/lang/String;
    invoke-static {v0}, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->access$000(Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    const-string v2, "MotionManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->mClientId:Ljava/lang/String;
    invoke-static {v0}, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->access$000(Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 161
    invoke-virtual {v0}, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->unlinkToDeath()V

    goto :goto_0
.end method


# virtual methods
.method public getClients()Ljava/util/List;
    .locals 2

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "clients":Ljava/util/List;
    iget-object v1, p0, Lcom/vivo/services/motion/MotionManagerService;->mClientStack:Ljava/util/Stack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/services/motion/MotionManagerService;->mClientStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "clients":Ljava/util/List;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .restart local v0    # "clients":Ljava/util/List;
    iget-object v1, p0, Lcom/vivo/services/motion/MotionManagerService;->mClientStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;

    # getter for: Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->mClientId:Ljava/lang/String;
    invoke-static {v1}, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->access$000(Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_0
    return-object v0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 10
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "cb"    # Landroid/os/IBinder;

    .prologue
    const/4 v7, 0x0

    const/4 v1, -0x1

    .line 99
    const-string v0, "1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 130
    :goto_0
    return v0

    .line 102
    :cond_0
    const-string v0, "MotionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[register] type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",clientId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-interface {p4}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    const-string v0, "MotionManagerService"

    const-string v2, "!cb.pingBinder()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 106
    goto :goto_0

    .line 109
    :cond_1
    sget-object v8, Lcom/vivo/services/motion/MotionManagerService;->mObjectLock:Ljava/lang/Object;

    monitor-enter v8

    .line 110
    :try_start_0
    new-instance v5, Lcom/vivo/services/motion/MotionManagerService$DeathHandler;

    invoke-direct {v5, p0, p1}, Lcom/vivo/services/motion/MotionManagerService$DeathHandler;-><init>(Lcom/vivo/services/motion/MotionManagerService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .local v5, "dh":Lcom/vivo/services/motion/MotionManagerService$DeathHandler;
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p4, v5, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :try_start_2
    iget-object v0, p0, Lcom/vivo/services/motion/MotionManagerService;->mClientStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vivo/services/motion/MotionManagerService;->mClientStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;

    # getter for: Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->mClientId:Ljava/lang/String;
    invoke-static {v0}, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;->access$000(Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    const-string v0, "MotionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the current top of the client stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x0

    invoke-interface {p4, v5, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 122
    monitor-exit v8

    move v0, v1

    goto :goto_0

    .line 113
    :catch_0
    move-exception v6

    .line 115
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "MotionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binder death."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    monitor-exit v8

    move v0, v1

    goto/16 :goto_0

    .line 125
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/services/motion/MotionManagerService;->removeClientStackEntry(Ljava/lang/String;Z)V

    .line 127
    iget-object v9, p0, Lcom/vivo/services/motion/MotionManagerService;->mClientStack:Ljava/util/Stack;

    new-instance v0, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/vivo/services/motion/MotionManagerService$ClientStackEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Lcom/vivo/services/motion/MotionManagerService$DeathHandler;)V

    invoke-virtual {v9, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    monitor-exit v8

    move v0, v7

    .line 130
    goto/16 :goto_0

    .line 128
    .end local v5    # "dh":Lcom/vivo/services/motion/MotionManagerService$DeathHandler;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public unregister(Ljava/lang/String;)I
    .locals 4
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 136
    :try_start_0
    sget-object v2, Lcom/vivo/services/motion/MotionManagerService;->mObjectLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/vivo/services/motion/MotionManagerService;->removeClientStackEntry(Ljava/lang/String;Z)V

    .line 138
    monitor-exit v2

    .line 144
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MotionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION unregister caused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
