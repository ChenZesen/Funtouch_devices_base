.class public final Lcom/vivo/services/nightpearl/NightPearlManager;
.super Ljava/lang/Object;
.source "NightPearlManager.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field public static final NIGHT_PEARL_DISABLED:I = 0x0

.field public static final NIGHT_PEARL_ENABLED:I = 0x1

.field public static final NIGHT_PEARL_KEY:Ljava/lang/String; = "night_pearl_enabled"

.field public static final NIGHT_REMIND_SWITCH:Ljava/lang/String; = "night_remind"

.field public static final SCREEN_OFF_REMIND_SWITCH:Ljava/lang/String; = "screen_off_remind"

.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mService:Lcom/vivo/services/nightpearl/INightPearlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/vivo/services/nightpearl/NightPearlManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/services/nightpearl/NightPearlManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sput-object p1, Lcom/vivo/services/nightpearl/NightPearlManager;->mContext:Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Lcom/vivo/services/nightpearl/NightPearlManager;->checkService()Lcom/vivo/services/nightpearl/INightPearlManager;

    .line 32
    return-void
.end method

.method private checkService()Lcom/vivo/services/nightpearl/INightPearlManager;
    .locals 2

    .prologue
    .line 39
    const-string v1, "night_pearl_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 40
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/vivo/services/nightpearl/INightPearlManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vivo/services/nightpearl/INightPearlManager;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/services/nightpearl/NightPearlManager;->mService:Lcom/vivo/services/nightpearl/INightPearlManager;

    .line 41
    iget-object v1, p0, Lcom/vivo/services/nightpearl/NightPearlManager;->mService:Lcom/vivo/services/nightpearl/INightPearlManager;

    return-object v1
.end method


# virtual methods
.method public isNightPearlShowing()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lcom/vivo/services/nightpearl/NightPearlManager;->checkService()Lcom/vivo/services/nightpearl/INightPearlManager;

    .line 72
    iget-object v2, p0, Lcom/vivo/services/nightpearl/NightPearlManager;->mService:Lcom/vivo/services/nightpearl/INightPearlManager;

    if-eqz v2, :cond_0

    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/nightpearl/NightPearlManager;->mService:Lcom/vivo/services/nightpearl/INightPearlManager;

    invoke-interface {v2}, Lcom/vivo/services/nightpearl/INightPearlManager;->isNightPearlShowing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 81
    :goto_0
    return v1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/vivo/services/nightpearl/NightPearlManager;->TAG:Ljava/lang/String;

    const-string v3, "isNightPearlShowing :"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 80
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Lcom/vivo/services/nightpearl/NightPearlManager;->TAG:Ljava/lang/String;

    const-string v3, "isNightPearlShowing mService is null."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 3
    .param p1, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .prologue
    .line 102
    :try_start_0
    invoke-direct {p0}, Lcom/vivo/services/nightpearl/NightPearlManager;->checkService()Lcom/vivo/services/nightpearl/INightPearlManager;

    .line 103
    iget-object v1, p0, Lcom/vivo/services/nightpearl/NightPearlManager;->mService:Lcom/vivo/services/nightpearl/INightPearlManager;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/vivo/services/nightpearl/NightPearlManager;->mService:Lcom/vivo/services/nightpearl/INightPearlManager;

    invoke-interface {v1}, Lcom/vivo/services/nightpearl/INightPearlManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/vivo/services/nightpearl/NightPearlManager;->TAG:Ljava/lang/String;

    const-string v2, "linkToDeath RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBacklightStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "brightness"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vivo/services/nightpearl/NightPearlManager;->checkService()Lcom/vivo/services/nightpearl/INightPearlManager;

    .line 46
    iget-object v1, p0, Lcom/vivo/services/nightpearl/NightPearlManager;->mService:Lcom/vivo/services/nightpearl/INightPearlManager;

    if-eqz v1, :cond_0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/vivo/services/nightpearl/NightPearlManager;->mService:Lcom/vivo/services/nightpearl/INightPearlManager;

    invoke-interface {v1, p1, p2}, Lcom/vivo/services/nightpearl/INightPearlManager;->onBacklightStateChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/vivo/services/nightpearl/NightPearlManager;->TAG:Ljava/lang/String;

    const-string v2, "onBacklightStateChanged :"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 53
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Lcom/vivo/services/nightpearl/NightPearlManager;->TAG:Ljava/lang/String;

    const-string v2, "onBacklightStateChanged mService is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDrawFinished()V
    .locals 3

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/vivo/services/nightpearl/NightPearlManager;->checkService()Lcom/vivo/services/nightpearl/INightPearlManager;

    .line 87
    iget-object v1, p0, Lcom/vivo/services/nightpearl/NightPearlManager;->mService:Lcom/vivo/services/nightpearl/INightPearlManager;

    if-eqz v1, :cond_0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/vivo/services/nightpearl/NightPearlManager;->mService:Lcom/vivo/services/nightpearl/INightPearlManager;

    invoke-interface {v1}, Lcom/vivo/services/nightpearl/INightPearlManager;->onDrawFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/vivo/services/nightpearl/NightPearlManager;->TAG:Ljava/lang/String;

    const-string v2, "onDrawFinished :"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 94
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Lcom/vivo/services/nightpearl/NightPearlManager;->TAG:Ljava/lang/String;

    const-string v2, "onDrawFinished mService is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onShowOff(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/vivo/services/nightpearl/NightPearlManager;->checkService()Lcom/vivo/services/nightpearl/INightPearlManager;

    .line 59
    iget-object v1, p0, Lcom/vivo/services/nightpearl/NightPearlManager;->mService:Lcom/vivo/services/nightpearl/INightPearlManager;

    if-eqz v1, :cond_0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/vivo/services/nightpearl/NightPearlManager;->mService:Lcom/vivo/services/nightpearl/INightPearlManager;

    invoke-interface {v1, p1}, Lcom/vivo/services/nightpearl/INightPearlManager;->onShowOff(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/vivo/services/nightpearl/NightPearlManager;->TAG:Ljava/lang/String;

    const-string v2, "onShowOff :"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 66
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Lcom/vivo/services/nightpearl/NightPearlManager;->TAG:Ljava/lang/String;

    const-string v2, "onShowOff mService is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1
    .param p1, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/vivo/services/nightpearl/NightPearlManager;->checkService()Lcom/vivo/services/nightpearl/INightPearlManager;

    .line 117
    iget-object v0, p0, Lcom/vivo/services/nightpearl/NightPearlManager;->mService:Lcom/vivo/services/nightpearl/INightPearlManager;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/vivo/services/nightpearl/NightPearlManager;->mService:Lcom/vivo/services/nightpearl/INightPearlManager;

    invoke-interface {v0}, Lcom/vivo/services/nightpearl/INightPearlManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
