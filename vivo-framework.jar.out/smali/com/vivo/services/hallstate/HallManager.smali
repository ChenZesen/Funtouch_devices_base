.class public final Lcom/vivo/services/hallstate/HallManager;
.super Ljava/lang/Object;
.source "HallManager.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS_PART:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/hallstate/HallManager$HallMonitor;
    }
.end annotation


# static fields
.field public static final FLAG_EVENT_ALL:I = 0x3
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field public static final FLAG_EVENT_NO_WINDOW:I = 0x2
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field public static final FLAG_EVENT_WITH_WINDOW:I = 0x1
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private static final HAVE_HALL_SENSOR:Z

.field private static final HAVE_HOLSTER_WINDOW:Z

.field public static final TAG:Ljava/lang/String; = "HallManager"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mService:Lcom/vivo/services/hallstate/IHallManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "persist.vivo.phone.hall"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Have_hall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/services/hallstate/HallManager;->HAVE_HALL_SENSOR:Z

    .line 38
    const-string v0, "Have_holster_with_window"

    const-string v1, "persist.vivo.phone.holster"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/services/hallstate/HallManager;->HAVE_HOLSTER_WINDOW:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/vivo/services/hallstate/HallManager;->mContext:Landroid/content/Context;

    .line 151
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/vivo/services/hallstate/HallManager;->HAVE_HALL_SENSOR:Z

    return v0
.end method

.method static synthetic access$100(Lcom/vivo/services/hallstate/HallManager;Landroid/os/IBinder;Lcom/vivo/services/hallstate/IHallEventListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/hallstate/HallManager;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Lcom/vivo/services/hallstate/IHallEventListener;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vivo/services/hallstate/HallManager;->registerHallStateListener(Landroid/os/IBinder;Lcom/vivo/services/hallstate/IHallEventListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkService()Lcom/vivo/services/hallstate/IHallManager;
    .locals 2

    .prologue
    .line 143
    const-string v1, "hall_state_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 144
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/vivo/services/hallstate/IHallManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vivo/services/hallstate/IHallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/services/hallstate/HallManager;->mService:Lcom/vivo/services/hallstate/IHallManager;

    .line 145
    iget-object v1, p0, Lcom/vivo/services/hallstate/HallManager;->mService:Lcom/vivo/services/hallstate/IHallManager;

    return-object v1
.end method

.method private isValideFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 167
    packed-switch p1, :pswitch_data_0

    .line 173
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 171
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerHallStateListener(Landroid/os/IBinder;Lcom/vivo/services/hallstate/IHallEventListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "mToken"    # Landroid/os/IBinder;
    .param p2, "listener"    # Lcom/vivo/services/hallstate/IHallEventListener;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Lcom/vivo/services/hallstate/HallManager;->checkService()Lcom/vivo/services/hallstate/IHallManager;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/services/hallstate/HallManager;->mService:Lcom/vivo/services/hallstate/IHallManager;

    .line 217
    iget-object v2, p0, Lcom/vivo/services/hallstate/HallManager;->mService:Lcom/vivo/services/hallstate/IHallManager;

    if-eqz v2, :cond_0

    .line 219
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/hallstate/HallManager;->mService:Lcom/vivo/services/hallstate/IHallManager;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/vivo/services/hallstate/IHallManager;->registerHallStateListener(Landroid/os/IBinder;Lcom/vivo/services/hallstate/IHallEventListener;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 226
    :cond_0
    :goto_0
    return v1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HallManager"

    const-string v3, "registerHallStateListener failed, RemoteException."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public hallSwitchEnable(I)I
    .locals 4
    .param p1, "enable"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 250
    invoke-direct {p0}, Lcom/vivo/services/hallstate/HallManager;->checkService()Lcom/vivo/services/hallstate/IHallManager;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/services/hallstate/HallManager;->mService:Lcom/vivo/services/hallstate/IHallManager;

    .line 251
    iget-object v2, p0, Lcom/vivo/services/hallstate/HallManager;->mService:Lcom/vivo/services/hallstate/IHallManager;

    if-eqz v2, :cond_0

    .line 253
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/hallstate/HallManager;->mService:Lcom/vivo/services/hallstate/IHallManager;

    invoke-interface {v2, p1}, Lcom/vivo/services/hallstate/IHallManager;->hallSwitchEnable(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 260
    :cond_0
    :goto_0
    return v1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HallManager"

    const-string v3, "hallSwitchEnable failed, RemoteException."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public haveHallSensor()Z
    .locals 1
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 158
    sget-boolean v0, Lcom/vivo/services/hallstate/HallManager;->HAVE_HALL_SENSOR:Z

    return v0
.end method

.method public haveHolsterWindow()Z
    .locals 1
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 163
    sget-boolean v0, Lcom/vivo/services/hallstate/HallManager;->HAVE_HOLSTER_WINDOW:Z

    return v0
.end method

.method public newHallMonitor(Lcom/vivo/services/hallstate/IHallEventListener;Ljava/lang/String;)Lcom/vivo/services/hallstate/HallManager$HallMonitor;
    .locals 2
    .param p1, "listener"    # Lcom/vivo/services/hallstate/IHallEventListener;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v0, Lcom/vivo/services/hallstate/HallManager$HallMonitor;

    iget-object v1, p0, Lcom/vivo/services/hallstate/HallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/vivo/services/hallstate/HallManager$HallMonitor;-><init>(Lcom/vivo/services/hallstate/HallManager;Lcom/vivo/services/hallstate/IHallEventListener;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public registerHallStateListener(Lcom/vivo/services/hallstate/IHallEventListener;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "listener"    # Lcom/vivo/services/hallstate/IHallEventListener;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "flag"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 186
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p3}, Lcom/vivo/services/hallstate/HallManager;->isValideFlag(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 187
    :cond_0
    const-string v3, "HallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid args: listener="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_2

    const-string v2, "NULL"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " tag="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_3

    const-string v2, "NULL"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " flag valide="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/vivo/services/hallstate/HallManager;->isValideFlag(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v2, 0x0

    .line 208
    :cond_1
    :goto_2
    return v2

    .line 187
    :cond_2
    const-string v2, "NotNUll"

    goto :goto_0

    :cond_3
    const-string v2, "NotNULL"

    goto :goto_1

    .line 193
    :cond_4
    sget-boolean v3, Lcom/vivo/services/hallstate/HallManager;->HAVE_HALL_SENSOR:Z

    if-eqz v3, :cond_1

    .line 197
    if-ne p3, v2, :cond_5

    invoke-virtual {p0}, Lcom/vivo/services/hallstate/HallManager;->haveHolsterWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    :cond_5
    const/4 v3, 0x2

    if-ne p3, v3, :cond_6

    invoke-virtual {p0}, Lcom/vivo/services/hallstate/HallManager;->haveHolsterWindow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 205
    :cond_6
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 206
    .local v1, "token":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/vivo/services/hallstate/HallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/vivo/services/hallstate/HallManager;->registerHallStateListener(Landroid/os/IBinder;Lcom/vivo/services/hallstate/IHallEventListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_2
.end method

.method public unregisterHallStateListener(Lcom/vivo/services/hallstate/IHallEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/vivo/services/hallstate/IHallEventListener;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 232
    if-nez p1, :cond_0

    .line 233
    const-string v1, "HallManager"

    const-string v2, "unregisterHallStateListener not processed, as listener is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/vivo/services/hallstate/HallManager;->checkService()Lcom/vivo/services/hallstate/IHallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/services/hallstate/HallManager;->mService:Lcom/vivo/services/hallstate/IHallManager;

    .line 237
    iget-object v1, p0, Lcom/vivo/services/hallstate/HallManager;->mService:Lcom/vivo/services/hallstate/IHallManager;

    if-eqz v1, :cond_1

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/vivo/services/hallstate/HallManager;->mService:Lcom/vivo/services/hallstate/IHallManager;

    invoke-interface {v1, p1}, Lcom/vivo/services/hallstate/IHallManager;->unregisterHallStateListener(Lcom/vivo/services/hallstate/IHallEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HallManager"

    const-string v2, "unregisterHallStateListener failed, RemoteException."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "HallManager"

    const-string v2, "unregisterHallStateListener failed, service null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
