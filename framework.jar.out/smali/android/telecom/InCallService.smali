.class public abstract Landroid/telecom/InCallService;
.super Landroid/app/Service;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/InCallService$VideoCall;,
        Landroid/telecom/InCallService$InCallServiceBinder;
    }
.end annotation


# static fields
.field private static final MSG_ADD_CALL:I = 0x2

.field private static final MSG_BRING_TO_FOREGROUND:I = 0x6

.field private static final MSG_ON_CALL_AUDIO_STATE_CHANGED:I = 0x5

.field private static final MSG_ON_CAN_ADD_CALL_CHANGED:I = 0x7

.field private static final MSG_ON_MERGE_FAILED:I = 0x8

.field private static final MSG_SET_IN_CALL_ADAPTER:I = 0x1

.field private static final MSG_SET_POST_DIAL_WAIT:I = 0x4

.field private static final MSG_UPDATE_CALL:I = 0x3

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.InCallService"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mPhone:Landroid/telecom/Phone;

.field private mPhoneListener:Landroid/telecom/Phone$Listener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 264
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 85
    new-instance v0, Landroid/telecom/InCallService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/InCallService$1;-><init>(Landroid/telecom/InCallService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;

    .line 202
    new-instance v0, Landroid/telecom/InCallService$2;

    invoke-direct {v0, p0}, Landroid/telecom/InCallService$2;-><init>(Landroid/telecom/InCallService;)V

    iput-object v0, p0, Landroid/telecom/InCallService;->mPhoneListener:Landroid/telecom/Phone$Listener;

    .line 265
    return-void
.end method

.method static synthetic access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/InCallService;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    return-object v0
.end method

.method static synthetic access$002(Landroid/telecom/InCallService;Landroid/telecom/Phone;)Landroid/telecom/Phone;
    .locals 0
    .param p0, "x0"    # Landroid/telecom/InCallService;
    .param p1, "x1"    # Landroid/telecom/Phone;

    .prologue
    .line 67
    iput-object p1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    return-object p1
.end method

.method static synthetic access$100(Landroid/telecom/InCallService;)Landroid/telecom/Phone$Listener;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/InCallService;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhoneListener:Landroid/telecom/Phone$Listener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/telecom/InCallService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/InCallService;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final canAddCall()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->canAddCall()Z

    move-result v0

    goto :goto_0
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCallAudioState()Landroid/telecom/CallAudioState;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->getCalls()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhone()Landroid/telecom/Phone;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    return-object v0
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 0
    .param p1, "audioState"    # Landroid/telecom/AudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 421
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 269
    new-instance v0, Landroid/telecom/InCallService$InCallServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/InCallService$InCallServiceBinder;-><init>(Landroid/telecom/InCallService;Landroid/telecom/InCallService$1;)V

    return-object v0
.end method

.method public onBringToForeground(Z)V
    .locals 0
    .param p1, "showDialpad"    # Z

    .prologue
    .line 439
    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 451
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 0
    .param p1, "audioState"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 429
    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 462
    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 0
    .param p1, "canAddCall"    # Z

    .prologue
    .line 472
    return-void
.end method

.method public onPhoneCreated(Landroid/telecom/Phone;)V
    .locals 0
    .param p1, "phone"    # Landroid/telecom/Phone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 395
    return-void
.end method

.method public onPhoneDestroyed(Landroid/telecom/Phone;)V
    .locals 0
    .param p1, "phone"    # Landroid/telecom/Phone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 410
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 274
    iget-object v1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-eqz v1, :cond_0

    .line 275
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    .line 276
    .local v0, "oldPhone":Landroid/telecom/Phone;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    .line 278
    invoke-virtual {v0}, Landroid/telecom/Phone;->destroy()V

    .line 282
    iget-object v1, p0, Landroid/telecom/InCallService;->mPhoneListener:Landroid/telecom/Phone$Listener;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->removeListener(Landroid/telecom/Phone$Listener;)V

    .line 284
    invoke-virtual {p0, v0}, Landroid/telecom/InCallService;->onPhoneDestroyed(Landroid/telecom/Phone;)V

    .line 287
    .end local v0    # "oldPhone":Landroid/telecom/Phone;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public registerVivoApiCallback(Lcom/android/internal/telephony/VivoTelephonyApiParams;Lcom/android/internal/telephony/IVivoTelephonyApiCallback;)Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .locals 1
    .param p1, "v"    # Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .param p2, "callback"    # Lcom/android/internal/telephony/IVivoTelephonyApiCallback;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public final setAudioRoute(I)V
    .locals 1
    .param p1, "route"    # I

    .prologue
    .line 377
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->setAudioRoute(I)V

    .line 380
    :cond_0
    return-void
.end method

.method public final setMuted(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 353
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->setMuted(Z)V

    .line 356
    :cond_0
    return-void
.end method

.method public switchToOtherActiveSub(Ljava/lang/String;)V
    .locals 1
    .param p1, "subId"    # Ljava/lang/String;

    .prologue
    .line 365
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->switchToOtherActiveSub(Ljava/lang/String;)V

    .line 368
    :cond_0
    return-void
.end method

.method public unregisterVivoApiCallback(Lcom/android/internal/telephony/VivoTelephonyApiParams;Lcom/android/internal/telephony/IVivoTelephonyApiCallback;)Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .locals 1
    .param p1, "v"    # Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .param p2, "callback"    # Lcom/android/internal/telephony/IVivoTelephonyApiCallback;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 258
    const/4 v0, 0x0

    return-object v0
.end method

.method public vivoTelephonyApi(Lcom/android/internal/telephony/VivoTelephonyApiParams;)Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .locals 1
    .param p1, "v"    # Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method