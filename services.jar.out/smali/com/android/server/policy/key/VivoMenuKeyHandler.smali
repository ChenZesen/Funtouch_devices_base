.class public final Lcom/android/server/policy/key/VivoMenuKeyHandler;
.super Lcom/android/server/policy/AVivoInterceptKeyCallback;
.source "VivoMenuKeyHandler.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static ENABLE_DISPATCH_MENU_DELAY:Z = false

.field private static final TAG:Ljava/lang/String; = "VivoMenuKeyHandler"

.field private static mLock:[B


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMenuKeyForward:Z

.field private mMenuKeyLongPressConsumed:Z

.field private mMenuKeyTriggered:Z

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    new-array v0, v1, [B

    sput-object v0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mLock:[B

    .line 41
    sput-boolean v1, Lcom/android/server/policy/key/VivoMenuKeyHandler;->ENABLE_DISPATCH_MENU_DELAY:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/IVivoAdjustmentPolicy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vivoPolicy"    # Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/policy/AVivoInterceptKeyCallback;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .line 56
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoMenuKeyHandler;->checkMenuKeyForward()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mMenuKeyForward:Z

    .line 57
    return-void
.end method

.method private checkMenuKeyForward()Z
    .locals 2

    .prologue
    .line 62
    const-string v0, "ro.vivo.op.entry"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC_RW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "checkMenuKeyForward true."

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoMenuKeyHandler;->printf(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    .line 69
    :cond_0
    const-string v0, "checkMenuKeyForward false."

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoMenuKeyHandler;->printf(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 311
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method private getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 283
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private isDrivingMode()Z
    .locals 1

    .prologue
    .line 278
    invoke-static {}, Lcom/android/server/policy/VivoPolicyUtil;->isDrivingMode()Z

    move-result v0

    return v0
.end method

.method private isExport()Z
    .locals 3

    .prologue
    .line 329
    const-string v0, "yes"

    const-string v1, "ro.vivo.product.overseas"

    const-string v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSuperPowerSaverMode()Z
    .locals 1

    .prologue
    .line 273
    invoke-static {}, Lcom/android/server/policy/VivoPolicyUtil;->isSPSMode()Z

    move-result v0

    return v0
.end method

.method private isVivoiceLaunchable()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 302
    iget-object v4, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vivo_vivoice_launchable"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    .line 303
    .local v0, "unlaunch":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "setup_wizard_has_run"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    .line 304
    .local v1, "unwizard":Z
    :goto_1
    const-string v4, "VivoMenuKeyHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isVivoice launchable unlaunch = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,unwizard = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    return v2

    .end local v0    # "unlaunch":Z
    .end local v1    # "unwizard":Z
    :cond_0
    move v0, v3

    .line 302
    goto :goto_0

    .restart local v0    # "unlaunch":Z
    :cond_1
    move v1, v3

    .line 303
    goto :goto_1

    .restart local v1    # "unwizard":Z
    :cond_2
    move v2, v3

    .line 305
    goto :goto_2
.end method

.method private performMenuKeyLongPress()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 205
    const-string v3, "performMenuKeyLongPress"

    invoke-direct {p0, v3}, Lcom/android/server/policy/key/VivoMenuKeyHandler;->printf(Ljava/lang/String;)V

    .line 207
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoMenuKeyHandler;->isVivoiceLaunchable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    const-string v3, "VivoMenuKeyHandler"

    const-string v4, "return because of VivoiceLaunchable!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoMenuKeyHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/key/VivoMenuKeyHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    const-string v3, "VivoMenuKeyHandler"

    const-string v4, "return because of KeyguardSecure!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    const/4 v4, 0x1

    invoke-interface {v3, v5, v5, v4}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->performHapticFeedback(IZZ)Z

    .line 223
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoMenuKeyHandler;->isSuperPowerSaverMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 225
    const-string v3, "VivoMenuKeyHandler"

    const-string v4, "return because of SuperPowerSaverMode!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoMenuKeyHandler;->isDrivingMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 230
    const-string v3, "VivoMenuKeyHandler"

    const-string v4, "return because of DrivingMode!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoMenuKeyHandler;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 237
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoMenuKeyHandler;->isExport()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->isIdle(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 239
    const-string v3, "VivoMenuKeyHandler"

    const-string v4, "return because of idle is false!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoMenuKeyHandler;->isExport()Z

    move-result v3

    if-nez v3, :cond_5

    .line 249
    new-instance v1, Landroid/content/Intent;

    const-string v3, "vivo.intent.action.MENU_KEY_LONG_PRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.bbk.VoiceAssistant"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 254
    :try_start_1
    iget-object v3, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 256
    :catch_1
    move-exception v0

    .line 258
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoMenuKeyHandler;->toggleRecentApps()V

    goto/16 :goto_0
.end method

.method private printf(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 267
    invoke-static {p1}, Lcom/android/server/policy/VivoWMPHook;->printf(Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method private toggleRecentApps()V
    .locals 3

    .prologue
    .line 319
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoMenuKeyHandler;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 320
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 321
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private triggerVirtualKeypress(I)V
    .locals 15
    .param p1, "keyCode"    # I

    .prologue
    .line 76
    const-string v4, "triggerVirtualKeypress menu"

    invoke-direct {p0, v4}, Lcom/android/server/policy/key/VivoMenuKeyHandler;->printf(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 78
    .local v0, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 80
    .local v2, "now":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/16 v13, 0x101

    move-wide v4, v2

    move/from16 v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 84
    .local v1, "downEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x1

    invoke-static {v1, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v14

    .line 87
    .local v14, "upEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 89
    const/4 v4, 0x0

    invoke-virtual {v0, v14, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 91
    return-void
.end method


# virtual methods
.method public onCheckForward(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, "isDrop":Z
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mMenuKeyForward:Z

    .line 100
    iget v1, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 110
    :pswitch_0
    return v0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)I
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    const/16 v0, -0x64

    .line 117
    .local v0, "result":I
    sget-object v3, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mLock:[B

    monitor-enter v3

    .line 119
    :try_start_0
    iget v4, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 145
    :cond_0
    :goto_0
    monitor-exit v3

    move v2, v0

    .line 147
    :goto_1
    return v2

    .line 122
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mMenuKeyTriggered:Z

    if-nez v2, :cond_0

    .line 124
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mMenuKeyTriggered:Z

    .line 125
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mMenuKeyLongPressConsumed:Z

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 129
    :pswitch_1
    :try_start_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 130
    .local v1, "virtualKey":Z
    :goto_2
    if-eqz v1, :cond_2

    .line 131
    const-string v4, "Let the app handle the key"

    invoke-direct {p0, v4}, Lcom/android/server/policy/key/VivoMenuKeyHandler;->printf(Ljava/lang/String;)V

    .line 132
    monitor-exit v3

    goto :goto_1

    .end local v1    # "virtualKey":Z
    :cond_1
    move v1, v2

    .line 129
    goto :goto_2

    .line 135
    .restart local v1    # "virtualKey":Z
    :cond_2
    sget-boolean v2, Lcom/android/server/policy/key/VivoMenuKeyHandler;->ENABLE_DISPATCH_MENU_DELAY:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mMenuKeyTriggered:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mMenuKeyLongPressConsumed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_3

    .line 137
    const/16 v0, 0x32

    goto :goto_0

    .line 139
    :cond_3
    const/4 v0, -0x1

    .line 141
    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 192
    sget-object v1, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mLock:[B

    monitor-enter v1

    .line 194
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mMenuKeyTriggered:Z

    if-nez v0, :cond_0

    .line 196
    monitor-exit v1

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mMenuKeyLongPressConsumed:Z

    .line 199
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoMenuKeyHandler;->performMenuKeyLongPress()V

    .line 200
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)I
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 153
    const/16 v0, -0x64

    .line 154
    .local v0, "result":I
    sget-object v3, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mLock:[B

    monitor-enter v3

    .line 156
    :try_start_0
    iget v4, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 184
    :cond_0
    :goto_0
    monitor-exit v3

    move v2, v0

    .line 186
    :goto_1
    return v2

    .line 159
    :pswitch_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mMenuKeyTriggered:Z

    .line 160
    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mMenuKeyLongPressConsumed:Z

    if-eqz v2, :cond_0

    .line 162
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 166
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    .line 167
    .local v1, "virtualKey":Z
    :goto_2
    if-eqz v1, :cond_2

    .line 168
    const-string v4, "Let the app handle the key"

    invoke-direct {p0, v4}, Lcom/android/server/policy/key/VivoMenuKeyHandler;->printf(Ljava/lang/String;)V

    .line 169
    monitor-exit v3

    goto :goto_1

    .line 184
    .end local v1    # "virtualKey":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    move v1, v2

    .line 166
    goto :goto_2

    .line 172
    .restart local v1    # "virtualKey":Z
    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mMenuKeyLongPressConsumed:Z

    if-eqz v2, :cond_3

    .line 174
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/key/VivoMenuKeyHandler;->mMenuKeyLongPressConsumed:Z

    .line 177
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 178
    const/16 v2, 0x52

    invoke-direct {p0, v2}, Lcom/android/server/policy/key/VivoMenuKeyHandler;->triggerVirtualKeypress(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :cond_4
    const/4 v0, -0x1

    .line 180
    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
