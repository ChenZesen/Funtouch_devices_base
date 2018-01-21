.class public final Lcom/android/server/policy/key/VivoPowerKeyHandler;
.super Lcom/android/server/policy/AVivoInterceptKeyCallback;
.source "VivoPowerKeyHandler.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final KEY_FLASHLIGHT_STATE:Ljava/lang/String; = "FlashState"

.field private static final KEY_VIVOFLASH_STATE:Ljava/lang/String; = "vivoFlash_state"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPowerKeyConsumed:Z

.field private mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/IVivoAdjustmentPolicy;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vivoPolicy"    # Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/server/policy/AVivoInterceptKeyCallback;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/policy/key/VivoPowerKeyHandler;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/android/server/policy/key/VivoPowerKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .line 32
    return-void
.end method

.method private isFlashlightOn()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 100
    iget-object v4, p0, Lcom/android/server/policy/key/VivoPowerKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vivoFlash_state"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 101
    .local v0, "flash":I
    iget-object v4, p0, Lcom/android/server/policy/key/VivoPowerKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "FlashState"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 102
    .local v1, "light":I
    if-nez v0, :cond_0

    if-ne v1, v2, :cond_0

    .line 108
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private printf(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {p1}, Lcom/android/server/policy/VivoWMPHook;->printf(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method private turnOffFlashLight()V
    .locals 3

    .prologue
    .line 114
    const-string v0, "turnOffFlashLight"

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoPowerKeyHandler;->printf(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/server/policy/key/VivoPowerKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "FlashState"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 116
    return-void
.end method


# virtual methods
.method public onCheckForward(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, "isDrop":Z
    iget v1, p0, Lcom/android/server/policy/key/VivoPowerKeyHandler;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 49
    :pswitch_0
    return v0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)I
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 55
    const/16 v0, -0x64

    .line 56
    .local v0, "result":I
    iget v1, p0, Lcom/android/server/policy/key/VivoPowerKeyHandler;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 72
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 59
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoPowerKeyHandler;->mIsScreenOn:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/key/VivoPowerKeyHandler;->isFlashlightOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoPowerKeyHandler;->turnOffFlashLight()V

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoPowerKeyHandler;->mPowerKeyConsumed:Z

    .line 63
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)I
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 78
    const/16 v0, -0x64

    .line 79
    .local v0, "result":I
    iget v1, p0, Lcom/android/server/policy/key/VivoPowerKeyHandler;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 95
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 82
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoPowerKeyHandler;->mPowerKeyConsumed:Z

    if-eqz v1, :cond_0

    .line 84
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoPowerKeyHandler;->mPowerKeyConsumed:Z

    .line 85
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
