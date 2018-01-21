.class public final Lcom/android/server/policy/key/VivoCustomKeyHandler;
.super Lcom/android/server/policy/AVivoInterceptKeyCallback;
.source "VivoCustomKeyHandler.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/IVivoAdjustmentPolicy;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vivoPolicy"    # Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/server/policy/AVivoInterceptKeyCallback;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/server/policy/key/VivoCustomKeyHandler;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/android/server/policy/key/VivoCustomKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .line 29
    return-void
.end method

.method private printf(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p1}, Lcom/android/server/policy/VivoWMPHook;->printf(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private silenceRinger()V
    .locals 3

    .prologue
    .line 98
    const-string v1, "silenceRinger"

    invoke-direct {p0, v1}, Lcom/android/server/policy/key/VivoCustomKeyHandler;->printf(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/android/server/policy/key/VivoCustomKeyHandler;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 100
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckForward(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 36
    .local v0, "isDrop":Z
    iget v1, p0, Lcom/android/server/policy/key/VivoCustomKeyHandler;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 46
    :pswitch_0
    return v0

    .line 36
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
    .line 53
    const/16 v0, -0x64

    .line 54
    .local v0, "result":I
    iget v1, p0, Lcom/android/server/policy/key/VivoCustomKeyHandler;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 68
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 57
    :pswitch_1
    sget v1, Lcom/android/server/policy/VivoPolicyConstant;->KEYCODE_TS_LARGE_SUPPRESSION:I

    if-ne v1, p1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoCustomKeyHandler;->silenceRinger()V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 94
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)I
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 74
    const/16 v0, -0x64

    .line 75
    .local v0, "result":I
    iget v1, p0, Lcom/android/server/policy/key/VivoCustomKeyHandler;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 87
    :pswitch_0
    return v0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
