.class public final Lcom/android/server/policy/key/VivoOTGKeyHandler;
.super Lcom/android/server/policy/AVivoInterceptKeyCallback;
.source "VivoOTGKeyHandler.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field public static final ACTION_PHONE_INSTRUCTION:Ljava/lang/String; = "com.android.bbk_phoneInstructions"

.field public static final KEY_ACTIVITY_INPUT_METHOD:Ljava/lang/String; = "com.android.settings.Settings$InputMethodAndLanguageSettingsActivity"

.field public static final KEY_PACKAGE_SETTINGS:Ljava/lang/String; = "com.android.settings"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/IVivoAdjustmentPolicy;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vivoPolicy"    # Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/server/policy/AVivoInterceptKeyCallback;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/server/policy/key/VivoOTGKeyHandler;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/android/server/policy/key/VivoOTGKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .line 33
    return-void
.end method

.method private performF1KeyDownAction()V
    .locals 3

    .prologue
    .line 80
    const-string v2, "performF1KeyDownAction"

    invoke-direct {p0, v2}, Lcom/android/server/policy/key/VivoOTGKeyHandler;->printf(Ljava/lang/String;)V

    .line 81
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.bbk_phoneInstructions"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/key/VivoOTGKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private printf(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p1}, Lcom/android/server/policy/VivoWMPHook;->printf(Ljava/lang/String;)V

    .line 96
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)I
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 38
    const/16 v0, -0x64

    .line 39
    .local v0, "result":I
    iget v1, p0, Lcom/android/server/policy/key/VivoOTGKeyHandler;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 54
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 42
    :pswitch_1
    const/16 v1, 0x83

    if-ne p1, v1, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoOTGKeyHandler;->performF1KeyDownAction()V

    .line 45
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    nop

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
    .line 60
    const/16 v0, -0x64

    .line 61
    .local v0, "result":I
    iget v1, p0, Lcom/android/server/policy/key/VivoOTGKeyHandler;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 75
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 66
    :pswitch_1
    const/16 v1, 0x75

    if-eq p1, v1, :cond_1

    const/16 v1, 0x76

    if-ne p1, v1, :cond_0

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/key/VivoOTGKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->handleMetaKeyEvent()V

    .line 69
    const/4 v0, -0x1

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
