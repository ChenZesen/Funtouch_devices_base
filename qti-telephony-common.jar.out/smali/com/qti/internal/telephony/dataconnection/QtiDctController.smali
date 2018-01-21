.class public Lcom/qti/internal/telephony/dataconnection/QtiDctController;
.super Lcom/android/internal/telephony/dataconnection/DctController;
.source "QtiDctController.java"


# static fields
.field private static final DCTCONTROLLER_EVENT_BASE:I = 0xc8

.field private static final EVENT_CONNECT_RESPONSE:I = 0xc9

.field private static final EVENT_VOICE_CALL_ENDED:I = 0xca


# instance fields
.field private final ACTIVE:I

.field private final ALLOW_DATA_RETRY_DELAY:I

.field private final DO_CONNECT_ON_PHONEID:I

.field private final DO_DISCONNECT_ON_ACTIVE_PHONEID:I

.field private final DO_DISCONNECT_ON_PHONEID:I

.field private final FALSE:I

.field private final INACTIVE:I

.field private final MANUAL_DDS_SWITCH_DSDA:I

.field private final MANUAL_DDS_SWITCH_DSDS:I

.field private final MAX_CONNECT_FAILURE_COUNT:I

.field private final MAX_LOG_LINES_PER_REQUEST:I

.field private final MODEM_DATA_CAPABILITY_UNKNOWN:I

.field private final MODEM_DUAL_DATA_CAPABLE:I

.field private final MODEM_SINGLE_DATA_CAPABLE:I

.field private final NOP:I

.field private final ON_DEMAND_REQ_DSDA:I

.field private final ON_DEMAND_REQ_DSDS:I

.field private final OVERRIDE_MODEM_DUAL_DATA_CAP_PROP:Ljava/lang/String;

.field private final TRUE:I

.field private mAllowDataFailure:[I

.field private mCm:Lcom/android/internal/telephony/CallManager;

.field private final mDcSwitchStateMachineActionTable:[[I

.field private mDdsIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mDdsSwitchActionTable:[[I

.field private mDefaultDataPhoneId:I

.field private mDefaultDataSubscription:I

.field private mLocalLog:Landroid/util/LocalLog;

.field private mPreviousPhoneId:I


# direct methods
.method protected constructor <init>([Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 7
    .param p1, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    const/4 v2, 0x3

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 137
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;-><init>([Lcom/android/internal/telephony/PhoneProxy;)V

    .line 53
    const/16 v1, 0x7530

    iput v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->ALLOW_DATA_RETRY_DELAY:I

    .line 54
    const/4 v1, 0x5

    iput v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->MAX_CONNECT_FAILURE_COUNT:I

    .line 56
    iput v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->MODEM_DATA_CAPABILITY_UNKNOWN:I

    .line 57
    iput v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->MODEM_SINGLE_DATA_CAPABLE:I

    .line 58
    iput v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->MODEM_DUAL_DATA_CAPABLE:I

    .line 59
    const-string v1, "persist.radio.msim.data.cap"

    iput-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->OVERRIDE_MODEM_DUAL_DATA_CAP_PROP:Ljava/lang/String;

    .line 61
    iput v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->MANUAL_DDS_SWITCH_DSDS:I

    .line 62
    iput v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->MANUAL_DDS_SWITCH_DSDA:I

    .line 63
    iput v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->ON_DEMAND_REQ_DSDS:I

    .line 64
    iput v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->ON_DEMAND_REQ_DSDA:I

    .line 66
    iput v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->DO_CONNECT_ON_PHONEID:I

    .line 67
    iput v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->DO_DISCONNECT_ON_PHONEID:I

    .line 68
    iput v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->DO_DISCONNECT_ON_ACTIVE_PHONEID:I

    .line 69
    iput v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->NOP:I

    .line 90
    new-array v1, v2, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v4

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDdsSwitchActionTable:[[I

    .line 114
    new-array v1, v3, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchStateMachineActionTable:[[I

    .line 120
    iput v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->TRUE:I

    .line 121
    iput v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->FALSE:I

    .line 123
    iput v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->INACTIVE:I

    .line 124
    iput v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->ACTIVE:I

    .line 126
    const/16 v1, 0x32

    iput v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->MAX_LOG_LINES_PER_REQUEST:I

    .line 129
    iput v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDefaultDataSubscription:I

    .line 130
    iput v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDefaultDataPhoneId:I

    .line 131
    iput v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPreviousPhoneId:I

    .line 157
    new-instance v1, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;

    invoke-direct {v1, p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;-><init>(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)V

    iput-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDdsIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    const-string v1, "QtiDctController"

    sput-object v1, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->LOG_TAG:Ljava/lang/String;

    .line 139
    iget v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPhoneNum:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mAllowDataFailure:[I

    .line 140
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mCm:Lcom/android/internal/telephony/CallManager;

    .line 141
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mCm:Lcom/android/internal/telephony/CallManager;

    const/16 v2, 0xca

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 142
    new-instance v1, Landroid/util/LocalLog;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mLocalLog:Landroid/util/LocalLog;

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDdsIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 146
    return-void

    .line 90
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x0
    .end array-data

    .line 114
    :array_3
    .array-data 4
        0x0
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 1
    .param p0, "x0"    # Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)I
    .locals 1
    .param p0, "x0"    # Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    .prologue
    .line 48
    iget v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDefaultDataSubscription:I

    return v0
.end method

.method static synthetic access$300(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)I
    .locals 1
    .param p0, "x0"    # Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    .prologue
    .line 48
    iget v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDefaultDataPhoneId:I

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)I
    .locals 1
    .param p0, "x0"    # Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getTopPriorityRequestPhoneId()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    return-object v0
.end method

.method static synthetic access$700(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->processRequests()V

    return-void
.end method

.method private doConnect(I)V
    .locals 10
    .param p1, "phoneId"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->CHANGE_CODE:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/16 v9, 0xc9

    const/4 v8, 0x0

    .line 241
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doConnect phoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 243
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isUiccProvisioned(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 244
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doConnect: phoneId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not provisioned, bail out"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 252
    .local v1, "ddsSubId":I
    const/4 v0, 0x0

    .line 254
    .local v0, "connectReqSent":Z
    iget-object v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 255
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 256
    iget-object v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 259
    .local v5, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v6, v5, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v6}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v6

    if-ne v6, p1, :cond_2

    iget v6, v5, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executedPhoneId:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 261
    const/4 v0, 0x1

    .line 262
    invoke-virtual {p0, v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->informDdsToRil(I)V

    .line 263
    iget-object v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v6, v6, p1

    invoke-virtual {p0, v9, p1, v8}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->connect(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;Landroid/os/Message;)I

    goto :goto_1

    .line 269
    .end local v5    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_3
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isDdsSwitchNeeded()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 270
    const-string v6, "doConnect: sending dummy connect req to force DDS switch"

    invoke-static {v6}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 273
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 274
    .local v2, "dummyReqBuilder":Landroid/net/NetworkRequest$Builder;
    new-instance v3, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mLocalLog:Landroid/util/LocalLog;

    invoke-direct {v3, v6, v8, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;-><init>(Landroid/net/NetworkRequest;ILandroid/util/LocalLog;)V

    .line 275
    .local v3, "dummyReqInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    invoke-virtual {p0, v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->informDdsToRil(I)V

    .line 276
    iget-object v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v6, v6, p1

    invoke-virtual {p0, v9, p1, v8}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->connect(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;Landroid/os/Message;)I

    goto :goto_0
.end method

.method private doDisconnectAll(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doDisconnectAll phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 318
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 319
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->disconnectAll()I

    .line 322
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getConnectFailureCount(I)I

    move-result v2

    if-lez v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->reset()V

    .line 324
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->resetConnectFailureCount(I)V

    .line 326
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 327
    .local v0, "dataRat":I
    invoke-static {v0}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x12

    if-ne v0, v2, :cond_2

    .line 339
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data registered on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fake DETACH"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 341
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->notifyDataDetached()V

    .line 343
    :cond_2
    return-void
.end method

.method private doDsdaCleanUp(I)V
    .locals 7
    .param p1, "activePhoneId"    # I

    .prologue
    .line 292
    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 293
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 294
    .local v0, "anyRequestExecutingOnOtherSub":Z
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getNonActivePhoneId(I)I

    move-result v2

    .line 296
    .local v2, "nonActivePhoneId":I
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 297
    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 298
    .local v4, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v5, v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v3

    .line 301
    .local v3, "phoneId":I
    if-ne v3, v2, :cond_0

    .line 302
    const/4 v0, 0x1

    .line 307
    .end local v3    # "phoneId":I
    .end local v4    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_1
    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    if-nez v0, :cond_2

    .line 309
    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleOrDetachingSync()Z

    move-result v5

    if-nez v5, :cond_2

    .line 310
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doDsdaCleanup on phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 311
    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->doDisconnectAll(I)V

    .line 314
    :cond_2
    return-void
.end method

.method private enforceDds(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 572
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 573
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enforceDds: subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 575
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 577
    :cond_0
    return-void
.end method

.method private getConnectFailureCount(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 568
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mAllowDataFailure:[I

    aget v0, v0, p1

    return v0
.end method

.method private getDcSwitchStateMachineActivityState(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 450
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleOrDetachingSync()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getIwlanPhoneId()I
    .locals 4

    .prologue
    .line 435
    const/4 v1, -0x1

    .line 436
    .local v1, "iwlanPhoneId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPhoneNum:I

    if-ge v0, v2, :cond_0

    .line 437
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 440
    move v1, v0

    .line 445
    :cond_0
    return v1

    .line 436
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getMaxDataAllowed()I
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 498
    const/4 v0, 0x1

    .line 499
    .local v0, "maxData":I
    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v2

    .line 501
    .local v2, "radioCapCtrlr":Lcom/qti/internal/telephony/QtiRadioCapabilityController;
    if-eqz v2, :cond_0

    .line 502
    invoke-virtual {v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getMaxDataAllowed()I

    move-result v0

    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modem value of max_data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 506
    :cond_0
    const-string v3, "persist.radio.msim.data.cap"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 508
    .local v1, "override":I
    if-eq v1, v5, :cond_1

    .line 509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overriding modem max_data_value with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 510
    move v0, v1

    .line 512
    :cond_1
    return v0
.end method

.method private getNonActivePhoneId(I)I
    .locals 2
    .param p1, "activePhoneId"    # I

    .prologue
    .line 283
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPhoneNum:I

    if-ge v0, v1, :cond_1

    .line 284
    if-eq v0, p1, :cond_0

    .line 288
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 283
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private handleConnectMaxFailure(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 580
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->resetConnectFailureCount(I)V

    .line 581
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 582
    .local v1, "defaultDds":I
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 583
    .local v0, "ddsPhoneId":I
    if-eq p1, v0, :cond_1

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALLOW_DATA retries exhausted on phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enforce DDS setting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 586
    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->enforceDds(I)V

    .line 598
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->reset()V

    .line 599
    return-void

    .line 588
    :cond_1
    iget v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPreviousPhoneId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DDS switch retries exhausted, reverting back DDS to phoneId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPreviousPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 591
    iget v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPreviousPhoneId:I

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->enforceDds(I)V

    goto :goto_0
.end method

.method private handleDdsSwitch(II)V
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "activePhoneId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 378
    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v5}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 379
    .local v2, "ddsSubId":I
    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 380
    .local v1, "ddsPhoneId":I
    if-eq p2, v7, :cond_0

    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v5, v5, p2

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v5

    const/16 v6, 0x12

    if-ne v5, v6, :cond_0

    if-eq p2, v1, :cond_0

    if-eq p2, p1, :cond_0

    .line 386
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is in already in attached state on IWLAN. Ignore handleDdsSwitch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 432
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getIwlanPhoneId()I

    move-result v4

    .line 392
    .local v4, "iwlanPhoneId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iwlanPhoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 393
    if-eq v4, v7, :cond_1

    if-eq v4, p1, :cond_1

    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mNeedsDdsSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1

    .line 398
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is already in attached state on IWLAN. Ignore handleDdsSwitch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :cond_1
    invoke-virtual {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isDataAllowedOnPhoneId(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 406
    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mNeedsDdsSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 408
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mIsDataAllowed:[Ljava/util/concurrent/atomic/AtomicBoolean;

    array-length v5, v5

    if-ge v3, v5, :cond_3

    .line 409
    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mIsDataAllowed:[Ljava/util/concurrent/atomic/AtomicBoolean;

    aget-object v5, v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 408
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 411
    :cond_3
    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mIsDataAllowed:[Ljava/util/concurrent/atomic/AtomicBoolean;

    aget-object v5, v5, p1

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 413
    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDdsSwitchActionTable:[[I

    add-int/lit8 v6, p2, 0x1

    aget-object v5, v5, v6

    aget v0, v5, p1

    .line 414
    .local v0, "action":I
    if-eq v4, v7, :cond_4

    if-ne v4, p1, :cond_4

    .line 415
    const/4 v0, 0x0

    .line 417
    :cond_4
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 419
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->doConnect(I)V

    goto :goto_0

    .line 423
    :pswitch_2
    invoke-direct {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isAnyVoiceCallActiveOnDevice()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 424
    const-string v5, "handleDdsSwitch: Voice call active. Defer PS detach"

    invoke-static {v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 427
    :cond_5
    invoke-direct {p0, p2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->doDisconnectAll(I)V

    goto/16 :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleSimultaneousReq(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getNonActivePhoneId(I)I

    move-result v0

    .line 491
    .local v0, "otherPhoneId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 492
    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->processAction(I)V

    .line 494
    :cond_0
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->processAction(I)V

    .line 495
    return-void
.end method

.method private identifyUsecase(IIII)I
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "activePhoneId"    # I
    .param p3, "ddsPhoneId"    # I
    .param p4, "maxDataCap"    # I

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activePhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ddsPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxDataCap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 351
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    if-ne p2, p1, :cond_2

    .line 352
    :cond_0
    if-ne p4, v1, :cond_1

    .line 353
    const-string v1, "Modem is DSDA-Data capable."

    invoke-static {v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 373
    :goto_0
    return v0

    .line 356
    :cond_1
    const-string v0, "Modem is DSDS-Data capable."

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 357
    goto :goto_0

    .line 359
    :cond_2
    if-ne p4, v1, :cond_4

    .line 360
    const-string v1, "Modem is DSDA-Data capable."

    invoke-static {v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 362
    if-ne p1, p3, :cond_3

    .line 363
    const-string v0, "DDS switch request identified"

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 364
    iput p2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPreviousPhoneId:I

    .line 365
    const/4 v0, 0x1

    goto :goto_0

    .line 367
    :cond_3
    const-string v1, "Ondemand PS request on non-dds identified"

    invoke-static {v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_4
    const-string v0, "Modem is DSDS-Data capable."

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 372
    iput p2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPreviousPhoneId:I

    move v0, v1

    .line 373
    goto :goto_0
.end method

.method private incConnectFailureCount(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 563
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mAllowDataFailure:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allow_data failure count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mAllowDataFailure:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method private isAnyVoiceCallActiveOnDevice()Z
    .locals 3

    .prologue
    .line 637
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 638
    .local v0, "ret":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAnyVoiceCallActiveOnDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 639
    return v0

    .line 637
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReqPresentForPhoneId(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 454
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 455
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 456
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 457
    .local v1, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectExecPhone requestInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 458
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 459
    const/4 v2, 0x0

    .line 462
    .end local v1    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isUiccProvisioned(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 643
    invoke-static {}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->getUiccProvisionerInstance()Lcom/qti/internal/telephony/UiccCardProvisioner;

    move-result-object v1

    .line 646
    .local v1, "uiccProvisioner":Lcom/qti/internal/telephony/UiccCardProvisioner;
    invoke-virtual {v1, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 648
    .local v0, "status":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUiccProvisioned = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 650
    return v0

    .line 646
    .end local v0    # "status":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeDctController([Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 2
    .param p0, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    .line 149
    sget-object v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDctController: new QtiDctController phones.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 151
    new-instance v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    invoke-direct {v0, p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;-><init>([Lcom/android/internal/telephony/PhoneProxy;)V

    sput-object v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDctController: X sDctController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    return-object v0
.end method

.method private onConnectResponse(ILandroid/os/AsyncResult;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "asyncResult"    # Landroid/os/AsyncResult;

    .prologue
    .line 602
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allow_data failed on phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 604
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->incConnectFailureCount(I)V

    .line 605
    invoke-direct {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isAnyVoiceCallActiveOnDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    const-string v0, "Wait for call end indication"

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 634
    :goto_0
    return-void

    .line 612
    :cond_0
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getConnectFailureCount(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 613
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->handleConnectMaxFailure(I)V

    goto :goto_0

    .line 615
    :cond_1
    const-string v0, "Scheduling retry connect/allow_data"

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 616
    new-instance v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController$2;

    invoke-direct {v0, p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController$2;-><init>(Lcom/qti/internal/telephony/dataconnection/QtiDctController;I)V

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v0, v2, v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 631
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allow_data success on phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 632
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->resetConnectFailureCount(I)V

    goto :goto_0
.end method

.method private processAction(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getDcSwitchStateMachineActivityState(I)I

    move-result v2

    .line 468
    .local v2, "state":I
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isReqPresentForPhoneId(I)I

    move-result v1

    .line 470
    .local v1, "anyReqPresent":I
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchStateMachineActionTable:[[I

    aget-object v3, v3, v2

    aget v0, v3, v1

    .line 472
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 486
    :goto_0
    return-void

    .line 474
    :pswitch_0
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->setDataAllowedOnPhoneId(IZ)V

    .line 475
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->doConnect(I)V

    goto :goto_0

    .line 479
    :pswitch_1
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->setDataAllowedOnPhoneId(IZ)V

    .line 480
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->doDisconnectAll(I)V

    goto :goto_0

    .line 472
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private resetConnectFailureCount(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 559
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mAllowDataFailure:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 560
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDdsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 678
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->dispose()V

    .line 679
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 215
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 235
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->handleMessage(Landroid/os/Message;)V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 217
    :pswitch_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {p0, v4, v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->onConnectResponse(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 220
    :pswitch_1
    const-string v3, "EVENT_VOICE_CALL_ENDED"

    invoke-static {v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 221
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 222
    .local v1, "ddsSubId":I
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 223
    .local v0, "ddsPhoneId":I
    invoke-virtual {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getTopPriorityRequestPhoneId()I

    move-result v2

    .line 224
    .local v2, "topPrioPhoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isAnyVoiceCallActiveOnDevice()Z

    move-result v3

    if-nez v3, :cond_0

    .line 226
    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getConnectFailureCount(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry attach on failed phoneid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 228
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->retryConnect()V

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->processRequests()V

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public informDdsToRil(I)V
    .locals 5
    .param p1, "ddsSubId"    # I

    .prologue
    .line 657
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 659
    .local v0, "ddsPhoneId":I
    if-ltz v0, :cond_2

    iget v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPhoneNum:I

    if-ge v0, v3, :cond_2

    .line 660
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qti/internal/telephony/QtiRilInterface;

    move-result-object v2

    .line 661
    .local v2, "qtiRilInterface":Lcom/qti/internal/telephony/QtiRilInterface;
    invoke-virtual {v2}, Lcom/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v3

    if-nez v3, :cond_1

    .line 662
    const-string v3, "Oem hook service is not ready yet"

    invoke-static {v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 673
    .end local v2    # "qtiRilInterface":Lcom/qti/internal/telephony/QtiRilInterface;
    :cond_0
    :goto_0
    return-void

    .line 666
    .restart local v2    # "qtiRilInterface":Lcom/qti/internal/telephony/QtiRilInterface;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPhoneNum:I

    if-ge v1, v3, :cond_0

    .line 667
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InformDdsToRil rild= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", DDS phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v2, v0, v1}, Lcom/qti/internal/telephony/QtiRilInterface;->qcRilSendDDSInfo(II)V

    .line 666
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 671
    .end local v1    # "i":I
    .end local v2    # "qtiRilInterface":Lcom/qti/internal/telephony/QtiRilInterface;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InformDdsToRil dds phoneId is invalid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onProcessRequest()V
    .locals 9

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getTopPriorityRequestPhoneId()I

    move-result v5

    .line 519
    .local v5, "phoneId":I
    const/4 v0, -0x1

    .line 520
    .local v0, "activePhoneId":I
    iget-object v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 521
    .local v2, "defaultDds":I
    iget-object v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 522
    .local v1, "ddsPhoneId":I
    invoke-direct {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getMaxDataAllowed()I

    move-result v4

    .line 524
    .local v4, "maxDataCap":I
    iget-object v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 525
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onProcessRequest: ddsSubId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not valid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 556
    :goto_0
    return-void

    .line 529
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    array-length v7, v7

    if-ge v3, v7, :cond_1

    .line 530
    iget-object v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleSync()Z

    move-result v7

    if-nez v7, :cond_2

    .line 531
    move v0, v3

    .line 536
    :cond_1
    invoke-direct {p0, v5, v0, v1, v4}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->identifyUsecase(IIII)I

    move-result v6

    .line 538
    .local v6, "usecase":I
    packed-switch v6, :pswitch_data_0

    .line 554
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unhandled usecase = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 529
    .end local v6    # "usecase":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 540
    .restart local v6    # "usecase":I
    :pswitch_0
    const-string v7, "MANUAL_DDS_SWITCH_DSDS"

    invoke-static {v7}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 542
    :pswitch_1
    const-string v7, "MANUAL_DDS_SWITCH_DSDA"

    invoke-static {v7}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 544
    :pswitch_2
    const-string v7, "ON_DEMAND_REQ_DSDS"

    invoke-static {v7}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 545
    invoke-direct {p0, v5, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->handleDdsSwitch(II)V

    goto :goto_0

    .line 549
    :pswitch_3
    const-string v7, "ON_DEMAND_REQ_DSDA"

    invoke-static {v7}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 550
    invoke-direct {p0, v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->handleSimultaneousReq(I)V

    goto :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onSettingsChanged()V
    .locals 2

    .prologue
    .line 175
    const-string v0, "onSettingsChanged"

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    iput v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDefaultDataSubscription:I

    .line 178
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    iget v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDefaultDataSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDefaultDataPhoneId:I

    .line 179
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    iget v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDefaultDataSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDefaultDataPhoneId:I

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isUiccProvisioned(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDefaultDataSubscription:I

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->informDdsToRil(I)V

    .line 182
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onSettingsChanged()V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ddsSubId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDefaultDataPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is invalid, ignore."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSubInfoReady()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 190
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onSubInfoReady()V

    .line 192
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v3, "subIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPhoneNum:I

    if-ge v0, v4, :cond_1

    .line 194
    iget-object v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 195
    .local v2, "subId":[I
    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isUiccProvisioned(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    aget v4, v2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    .end local v2    # "subId":[I
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-string v4, "org.codeaurora.intent.action.ACTION_NETWORK_SPECIFIER_SET"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "SubIdList"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 206
    const-string v4, "Broadcast network specifier set intent"

    invoke-static {v4}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 207
    iget-object v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 209
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method
