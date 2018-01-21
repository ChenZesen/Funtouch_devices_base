.class public final Lcom/android/server/policy/key/VivoTaskKeyHandler;
.super Lcom/android/server/policy/AVivoInterceptKeyCallback;
.source "VivoTaskKeyHandler.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static ENABLE_DISPATCH_MENU_DELAY:Z = false

.field private static final TAG:Ljava/lang/String; = "VivoTaskKeyHandler"

.field private static mLock:[B


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEntryOp:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

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

    sput-object v0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mLock:[B

    .line 41
    sput-boolean v1, Lcom/android/server/policy/key/VivoTaskKeyHandler;->ENABLE_DISPATCH_MENU_DELAY:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/IVivoAdjustmentPolicy;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vivoPolicy"    # Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/policy/AVivoInterceptKeyCallback;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .line 55
    const-string v0, "ro.vivo.op.entry"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC_RW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mEntryOp:Z

    .line 56
    return-void
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 251
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method private getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 223
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
    .line 218
    invoke-static {}, Lcom/android/server/policy/VivoPolicyUtil;->isDrivingMode()Z

    move-result v0

    return v0
.end method

.method private isExport()Z
    .locals 3

    .prologue
    .line 270
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
    .line 213
    invoke-static {}, Lcom/android/server/policy/VivoPolicyUtil;->isSPSMode()Z

    move-result v0

    return v0
.end method

.method private isVivoiceLaunchable()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 242
    iget-object v4, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vivo_vivoice_launchable"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    .line 243
    .local v0, "unlaunch":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "setup_wizard_has_run"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    .line 244
    .local v1, "unwizard":Z
    :goto_1
    const-string v4, "VivoTaskKeyHandler"

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

    .line 245
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    return v2

    .end local v0    # "unlaunch":Z
    .end local v1    # "unwizard":Z
    :cond_0
    move v0, v3

    .line 242
    goto :goto_0

    .restart local v0    # "unlaunch":Z
    :cond_1
    move v1, v3

    .line 243
    goto :goto_1

    .restart local v1    # "unwizard":Z
    :cond_2
    move v2, v3

    .line 245
    goto :goto_2
.end method

.method private isVoiceAssitantEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 287
    iget-object v2, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.bbk.VoiceAssistant.SWITCH"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 289
    .local v0, "val":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVoiceAssitantRemind()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 293
    iget-object v2, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.bbk.VoiceAssistant.TIP"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 295
    .local v0, "val":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private performMenuKeyLongPress()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 157
    const-string v2, "VivoTaskKeyHandler"

    const-string v3, "performMenuKeyLongPress"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoTaskKeyHandler;->isVivoiceLaunchable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    const-string v2, "VivoTaskKeyHandler"

    const-string v3, "return because of VivoiceLaunchable!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoTaskKeyHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/policy/key/VivoTaskKeyHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    const-string v2, "VivoTaskKeyHandler"

    const-string v3, "return because of KeyguardSecure!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    const/4 v3, 0x1

    invoke-interface {v2, v4, v4, v3}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->performHapticFeedback(IZZ)Z

    .line 175
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoTaskKeyHandler;->isSuperPowerSaverMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 177
    const-string v2, "VivoTaskKeyHandler"

    const-string v3, "return because of SuperPowerSaverMode!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoTaskKeyHandler;->isDrivingMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 182
    const-string v2, "VivoTaskKeyHandler"

    const-string v3, "return because of DrivingMode!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoTaskKeyHandler;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 189
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isIdle(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 191
    const-string v2, "VivoTaskKeyHandler"

    const-string v3, "return because of idle is false!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoTaskKeyHandler;->isExport()Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoTaskKeyHandler;->startVoiceAssitant()V

    goto :goto_0
.end method

.method private printf(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-static {p1}, Lcom/android/server/policy/VivoWMPHook;->printf(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method private startVoiceAssitant()V
    .locals 3

    .prologue
    const/high16 v2, 0x10000000

    .line 274
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 275
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoTaskKeyHandler;->isVoiceAssitantEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 277
    const-string v1, "com.bbk.VoiceAssistant"

    const-string v2, "com.bbk.VoiceAssistant.VoiceAssistantActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    iget-object v1, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoTaskKeyHandler;->isVoiceAssitantRemind()Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 281
    const-string v1, "com.bbk.VoiceAssistant"

    const-string v2, "com.bbk.VoiceAssistant.LauchTipActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    iget-object v1, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private toggleRecentApps()V
    .locals 4

    .prologue
    .line 258
    const-string v2, "VivoTaskKeyHandler"

    const-string v3, "toggleRecentApps."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoTaskKeyHandler;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 261
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 262
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method


# virtual methods
.method public onCheckForward(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, "isDrop":Z
    iget v1, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 74
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mEntryOp:Z

    if-eqz v1, :cond_0

    .line 75
    const/4 v0, 0x1

    .line 78
    :cond_0
    return v0

    .line 64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)I
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 84
    const/16 v0, -0x64

    .line 85
    .local v0, "result":I
    sget-object v2, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mLock:[B

    monitor-enter v2

    .line 87
    :try_start_0
    iget v1, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 102
    :cond_0
    :goto_0
    monitor-exit v2

    .line 104
    return v0

    .line 90
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mMenuKeyTriggered:Z

    if-nez v1, :cond_0

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mMenuKeyTriggered:Z

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mMenuKeyLongPressConsumed:Z

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 97
    :pswitch_1
    const/4 v0, -0x1

    .line 98
    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 143
    sget-object v1, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mLock:[B

    monitor-enter v1

    .line 145
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mMenuKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mEntryOp:Z

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    const-string v0, "VivoTaskKeyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Return because of menutriggered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mMenuKeyTriggered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    monitor-exit v1

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mMenuKeyLongPressConsumed:Z

    .line 151
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoTaskKeyHandler;->performMenuKeyLongPress()V

    .line 152
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
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 110
    const/16 v0, -0x64

    .line 111
    .local v0, "result":I
    sget-object v2, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mLock:[B

    monitor-enter v2

    .line 113
    :try_start_0
    iget v1, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 135
    :cond_0
    :goto_0
    monitor-exit v2

    .line 137
    return v0

    .line 116
    :pswitch_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mMenuKeyTriggered:Z

    .line 117
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mMenuKeyLongPressConsumed:Z

    if-eqz v1, :cond_0

    .line 119
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 123
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mMenuKeyLongPressConsumed:Z

    if-eqz v1, :cond_2

    .line 125
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoTaskKeyHandler;->mMenuKeyLongPressConsumed:Z

    .line 130
    :cond_1
    :goto_1
    const/4 v0, -0x1

    .line 131
    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoTaskKeyHandler;->toggleRecentApps()V

    goto :goto_1

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
