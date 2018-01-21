.class public Lcom/qti/internal/telephony/QtiPhoneProxy;
.super Lcom/android/internal/telephony/PhoneProxy;
.source "QtiPhoneProxy.java"


# static fields
.field private static final EVENT_OEM_RIL_SERVICE_READY:I = 0xc8

.field private static final LOG_TAG:Ljava/lang/String; = "QtiPhoneProxy"

.field private static NOT_READY:I

.field private static READY:I


# instance fields
.field private mIsPhoneReadySent:Z

.field private mIsReSendPhoneReady:Z
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    sput v0, Lcom/qti/internal/telephony/QtiPhoneProxy;->READY:I

    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/qti/internal/telephony/QtiPhoneProxy;->NOT_READY:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 52
    iput-boolean v0, p0, Lcom/qti/internal/telephony/QtiPhoneProxy;->mIsPhoneReadySent:Z

    .line 57
    iput-boolean v0, p0, Lcom/qti/internal/telephony/QtiPhoneProxy;->mIsReSendPhoneReady:Z

    .line 65
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qti/internal/telephony/QtiRilInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/internal/telephony/QtiPhoneProxy;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    .line 67
    iget-object v0, p0, Lcom/qti/internal/telephony/QtiPhoneProxy;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/qti/internal/telephony/QtiRilInterface;->registerForServiceReadyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method private updatePhoneReady(I)V
    .locals 4
    .param p1, "phoneId"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->CHANGE_CODE:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 121
    iget-boolean v0, p0, Lcom/qti/internal/telephony/QtiPhoneProxy;->mIsPhoneReadySent:Z

    if-nez v0, :cond_0

    const-string v0, "persist.radio.poweron_opt"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 123
    const-string v0, "Sending Phone Ready to RIL."

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/QtiPhoneProxy;->logd(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/qti/internal/telephony/QtiPhoneProxy;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/qti/internal/telephony/QtiPhoneProxy;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    sget v1, Lcom/qti/internal/telephony/QtiPhoneProxy;->READY:I

    invoke-virtual {v0, v1, p1}, Lcom/qti/internal/telephony/QtiRilInterface;->sendPhoneStatus(II)V

    .line 129
    iput-boolean v2, p0, Lcom/qti/internal/telephony/QtiPhoneProxy;->mIsPhoneReadySent:Z

    .line 130
    iput-boolean v3, p0, Lcom/qti/internal/telephony/QtiPhoneProxy;->mIsReSendPhoneReady:Z

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const-string v0, "oem ril service is not ready"

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/QtiPhoneProxy;->logd(Ljava/lang/String;)V

    .line 133
    iput-boolean v2, p0, Lcom/qti/internal/telephony/QtiPhoneProxy;->mIsReSendPhoneReady:Z

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/qti/internal/telephony/QtiPhoneProxy;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0, p0}, Lcom/qti/internal/telephony/QtiRilInterface;->unRegisterForServiceReadyEvent(Landroid/os/Handler;)V

    .line 145
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneProxy;->dispose()V

    .line 146
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->CHANGE_CODE:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 74
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 75
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 115
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneProxy;->handleMessage(Landroid/os/Message;)V

    .line 117
    :cond_0
    :goto_1
    return-void

    .line 78
    :sswitch_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v2, "EVENT_VOICE_RADIO_TECH_CHANGED"

    .line 80
    .local v2, "what":Ljava/lang/String;
    :goto_2
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3

    .line 81
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    array-length v3, v3

    if-eqz v3, :cond_2

    .line 82
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v1, v3, v5

    .line 83
    .local v1, "newVoiceTech":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": newVoiceTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qti/internal/telephony/QtiPhoneProxy;->logd(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/qti/internal/telephony/QtiPhoneProxy;->phoneObjectUpdater(I)V

    .line 85
    iget v3, p0, Lcom/qti/internal/telephony/QtiPhoneProxy;->mPhoneId:I

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiPhoneProxy;->updatePhoneReady(I)V

    goto :goto_1

    .line 78
    .end local v1    # "newVoiceTech":I
    .end local v2    # "what":Ljava/lang/String;
    :cond_1
    const-string v2, "EVENT_REQUEST_VOICE_RADIO_TECH_DONE"

    goto :goto_2

    .line 87
    .restart local v2    # "what":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": has no tech!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qti/internal/telephony/QtiPhoneProxy;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qti/internal/telephony/QtiPhoneProxy;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 94
    .end local v2    # "what":Ljava/lang/String;
    :sswitch_1
    iput-boolean v5, p0, Lcom/qti/internal/telephony/QtiPhoneProxy;->mIsPhoneReadySent:Z

    .line 95
    iget v3, p0, Lcom/qti/internal/telephony/QtiPhoneProxy;->mPhoneId:I

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiPhoneProxy;->updatePhoneReady(I)V

    goto/16 :goto_1

    .line 99
    :sswitch_2
    const-string v3, "ui is not ready,send phone ready"

    invoke-virtual {p0, v3}, Lcom/qti/internal/telephony/QtiPhoneProxy;->logd(Ljava/lang/String;)V

    .line 100
    iput-boolean v5, p0, Lcom/qti/internal/telephony/QtiPhoneProxy;->mIsPhoneReadySent:Z

    .line 101
    iget v3, p0, Lcom/qti/internal/telephony/QtiPhoneProxy;->mPhoneId:I

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiPhoneProxy;->updatePhoneReady(I)V

    goto/16 :goto_1

    .line 104
    :sswitch_3
    const-string v3, "oem ril service is ready"

    invoke-virtual {p0, v3}, Lcom/qti/internal/telephony/QtiPhoneProxy;->logd(Ljava/lang/String;)V

    .line 105
    iget-boolean v3, p0, Lcom/qti/internal/telephony/QtiPhoneProxy;->mIsReSendPhoneReady:Z

    if-eqz v3, :cond_0

    .line 106
    iput-boolean v5, p0, Lcom/qti/internal/telephony/QtiPhoneProxy;->mIsPhoneReadySent:Z

    .line 107
    iget v3, p0, Lcom/qti/internal/telephony/QtiPhoneProxy;->mPhoneId:I

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiPhoneProxy;->updatePhoneReady(I)V

    goto/16 :goto_1

    .line 113
    :sswitch_4
    iput-boolean v5, p0, Lcom/qti/internal/telephony/QtiPhoneProxy;->mIsPhoneReadySent:Z

    goto/16 :goto_0

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_4
        0x8 -> :sswitch_1
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_3
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 150
    const-string v0, "QtiPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QtiPhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string v0, "QtiPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QtiPhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method
