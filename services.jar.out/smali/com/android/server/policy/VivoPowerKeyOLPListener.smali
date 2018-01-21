.class public final Lcom/android/server/policy/VivoPowerKeyOLPListener;
.super Ljava/lang/Object;
.source "VivoPowerKeyOLPListener.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final OVER_LONG_PRESS_TIMEOUT:I = 0x1f40

.field private static final TAG:Ljava/lang/String; = "VivoPowerKeyOLPHandler"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRunable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/android/server/policy/VivoPowerKeyOLPListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/VivoPowerKeyOLPListener$1;-><init>(Lcom/android/server/policy/VivoPowerKeyOLPListener;)V

    iput-object v0, p0, Lcom/android/server/policy/VivoPowerKeyOLPListener;->mRunable:Ljava/lang/Runnable;

    .line 25
    iput-object p1, p0, Lcom/android/server/policy/VivoPowerKeyOLPListener;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/android/server/policy/VivoPowerKeyOLPListener;->mHandler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/VivoPowerKeyOLPListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoPowerKeyOLPListener;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/server/policy/VivoPowerKeyOLPListener;->sendBroadcast()V

    return-void
.end method

.method private sendBroadcast()V
    .locals 3

    .prologue
    .line 51
    const-string v1, "VivoPowerKeyOLPHandler"

    const-string v2, "sendBroadcast:vivo.intent.action.POWER_KEY_OVER_LONG_PRESS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "vivo.intent.action.POWER_KEY_OVER_LONG_PRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/policy/VivoPowerKeyOLPListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 54
    return-void
.end method


# virtual methods
.method public startObserve()V
    .locals 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/policy/VivoPowerKeyOLPListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/VivoPowerKeyOLPListener;->mRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    iget-object v0, p0, Lcom/android/server/policy/VivoPowerKeyOLPListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/VivoPowerKeyOLPListener;->mRunable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    return-void
.end method

.method public stopObserve()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/policy/VivoPowerKeyOLPListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/VivoPowerKeyOLPListener;->mRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method
