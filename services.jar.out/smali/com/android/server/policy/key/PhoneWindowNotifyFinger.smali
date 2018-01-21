.class public Lcom/android/server/policy/key/PhoneWindowNotifyFinger;
.super Ljava/lang/Object;
.source "PhoneWindowNotifyFinger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/key/PhoneWindowNotifyFinger$FingerNotify;,
        Lcom/android/server/policy/key/PhoneWindowNotifyFinger$KeyEventHandler;
    }
.end annotation


# static fields
.field private static final BATTERY_REBOOT:Ljava/lang/String; = "battery"

.field private static final KEYEVENT_DOWN_DELAY:I = 0x1388

.field private static final LONG_POWER_REBOOT:Ljava/lang/String; = "long_power"

.field private static final LONG_VOLUME_REBOOT:Ljava/lang/String; = "long_volume_down"

.field private static final MSG_KEYEVENT_KEY_DOWN:I = 0x64

.field private static final MSG_KEYEVENT_KEY_UP:I = 0x65

.field private static final NONE_REBOOT:Ljava/lang/String; = "none"

.field private static final PROP_USER_REBOOT:Ljava/lang/String; = "persist.vivo.finger.reboot"

.field private static final RECOVERY_REBOOT:Ljava/lang/String; = "recovery"

.field private static final TAG:Ljava/lang/String; = "PhoneWindowNotifyFinger"

.field private static final USER_REBOOT:Ljava/lang/String; = "user"

.field public static final WINDOW_EVENT_KEYGUARD_HIDE:I = 0x3

.field public static final WINDOW_EVENT_KEYGUARD_SHOW:I = 0x4

.field public static final WINDOW_EVENT_SCREEN_OFF:I = 0x2

.field public static final WINDOW_EVENT_SCREEN_ON:I = 0x1

.field public static final WINDOW_EVENT_SYSTEM_REBOOT:I = 0x5

.field private static mLock:Ljava/lang/Object;

.field private static mPhoneWindowNotifyFinger:Lcom/android/server/policy/key/PhoneWindowNotifyFinger;


# instance fields
.field private isSetRoot:Z

.field private key_long_press:Ljava/lang/String;

.field private mEventHandler:Lcom/android/server/policy/key/PhoneWindowNotifyFinger$KeyEventHandler;

.field private mFingerNotify:Lcom/android/server/policy/key/PhoneWindowNotifyFinger$FingerNotify;

.field private mThread:Landroid/os/HandlerThread;

.field private rebootReasons:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->mPhoneWindowNotifyFinger:Lcom/android/server/policy/key/PhoneWindowNotifyFinger;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "user"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "long_power"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "recovery"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "battery"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "long_volume_down"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->rebootReasons:[Ljava/lang/String;

    .line 46
    iput-boolean v3, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->isSetRoot:Z

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->key_long_press:Ljava/lang/String;

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PhoneWindowNotifyFinger"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->mThread:Landroid/os/HandlerThread;

    .line 51
    iget-object v0, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 52
    new-instance v0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger$KeyEventHandler;

    iget-object v1, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/key/PhoneWindowNotifyFinger$KeyEventHandler;-><init>(Lcom/android/server/policy/key/PhoneWindowNotifyFinger;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->mEventHandler:Lcom/android/server/policy/key/PhoneWindowNotifyFinger$KeyEventHandler;

    .line 53
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/policy/key/PhoneWindowNotifyFinger;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/PhoneWindowNotifyFinger;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->isSetRoot:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/key/PhoneWindowNotifyFinger;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/PhoneWindowNotifyFinger;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->key_long_press:Ljava/lang/String;

    return-object v0
.end method

.method private checkRebootReason(Ljava/lang/String;)Z
    .locals 8
    .param p1, "rebootReason"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v2, 0x0

    .line 145
    .local v2, "isUserReboot":Z
    iget-object v0, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->rebootReasons:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 146
    .local v4, "reason":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 147
    const/4 v2, 0x1

    .line 151
    .end local v4    # "reason":Ljava/lang/String;
    :cond_0
    const-string v5, "PhoneWindowNotifyFinger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get reboot reason isUserReboot is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return v2

    .line 145
    .restart local v4    # "reason":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/policy/key/PhoneWindowNotifyFinger;
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->mPhoneWindowNotifyFinger:Lcom/android/server/policy/key/PhoneWindowNotifyFinger;

    if-nez v0, :cond_1

    .line 57
    sget-object v1, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->mPhoneWindowNotifyFinger:Lcom/android/server/policy/key/PhoneWindowNotifyFinger;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;

    invoke-direct {v0}, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;-><init>()V

    sput-object v0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->mPhoneWindowNotifyFinger:Lcom/android/server/policy/key/PhoneWindowNotifyFinger;

    .line 61
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    sget-object v0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->mPhoneWindowNotifyFinger:Lcom/android/server/policy/key/PhoneWindowNotifyFinger;

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private notifyFingerprintToString(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknow PhoneWindowManager event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "message":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 192
    :goto_0
    const-string v1, "PhoneWindowNotifyFinger"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void

    .line 172
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneWindowManager notify fingerprintkeyHandler is WINDOW_EVENT_SCREEN_ON value is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    goto :goto_0

    .line 176
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneWindowManager notify fingerprintkeyHandler is WINDOW_EVENT_SCREEN_OFF value is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    goto :goto_0

    .line 180
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneWindowManager notify fingerprintkeyHandler is WINDOW_EVENT_KEYGUARD_HIDE value is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    goto :goto_0

    .line 184
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneWindowManager notify fingerprintkeyHandler is WINDOW_EVENT_KEYGUARD_SHOW value is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    goto :goto_0

    .line 188
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneWindowManager notify fingerprintkeyHandler is WINDOW_EVENT_SYSTEM_REBOOT value is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private notifyObserver(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 100
    const-string v0, "PhoneWindowNotifyFinger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyObserver result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->notifyFingerprintToString(I)V

    .line 102
    iget-object v0, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->mFingerNotify:Lcom/android/server/policy/key/PhoneWindowNotifyFinger$FingerNotify;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->mFingerNotify:Lcom/android/server/policy/key/PhoneWindowNotifyFinger$FingerNotify;

    invoke-interface {v0, p1}, Lcom/android/server/policy/key/PhoneWindowNotifyFinger$FingerNotify;->notifyFingerprintKeyHandler(I)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string v0, "PhoneWindowNotifyFinger"

    const-string v1, "mFingerNotify==null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clearRebootProp()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "PhoneWindowNotifyFinger"

    const-string v1, "clearRebootProp"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v0, "persist.vivo.finger.reboot"

    const-string v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->isSetRoot:Z

    .line 158
    return-void
.end method

.method public detectRebootReason()Z
    .locals 5

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "isUserReboot":Z
    const-string v2, "persist.vivo.finger.reboot"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "reboot_reason":Ljava/lang/String;
    const-string v2, "PhoneWindowNotifyFinger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detectRebootReason reboot_reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0, v1}, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->checkRebootReason(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    const/4 v0, 0x1

    .line 139
    invoke-virtual {p0}, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->clearRebootProp()V

    .line 141
    :cond_0
    return v0
.end method

.method public fingerPolicy(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->notifyObserver(I)V

    .line 72
    return-void
.end method

.method public getIsRebootValue()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->isSetRoot:Z

    return v0
.end method

.method public keyEvent(Landroid/view/KeyEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v7, 0x1a

    const/16 v5, 0x19

    const/16 v6, 0x64

    .line 75
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 76
    .local v1, "keycode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 77
    .local v0, "action":I
    const-string v2, "PhoneWindowNotifyFinger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowerKeyEvent keycode event is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-eq v1, v7, :cond_0

    if-ne v1, v5, :cond_2

    .line 79
    :cond_0
    if-nez v0, :cond_4

    .line 80
    iget-object v2, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->mEventHandler:Lcom/android/server/policy/key/PhoneWindowNotifyFinger$KeyEventHandler;

    if-eqz v2, :cond_2

    .line 81
    if-ne v1, v7, :cond_3

    .line 82
    const-string v2, "long_power"

    iput-object v2, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->key_long_press:Ljava/lang/String;

    .line 86
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->mEventHandler:Lcom/android/server/policy/key/PhoneWindowNotifyFinger$KeyEventHandler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v6, v4, v5}, Lcom/android/server/policy/key/PhoneWindowNotifyFinger$KeyEventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    :cond_2
    :goto_1
    return-void

    .line 83
    :cond_3
    if-ne v1, v5, :cond_1

    .line 84
    const-string v2, "long_volume_down"

    iput-object v2, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->key_long_press:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_4
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 89
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->key_long_press:Ljava/lang/String;

    .line 90
    iget-object v2, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->mEventHandler:Lcom/android/server/policy/key/PhoneWindowNotifyFinger$KeyEventHandler;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->mEventHandler:Lcom/android/server/policy/key/PhoneWindowNotifyFinger$KeyEventHandler;

    invoke-virtual {v2, v6}, Lcom/android/server/policy/key/PhoneWindowNotifyFinger$KeyEventHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 91
    iget-object v2, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->mEventHandler:Lcom/android/server/policy/key/PhoneWindowNotifyFinger$KeyEventHandler;

    invoke-virtual {v2, v6}, Lcom/android/server/policy/key/PhoneWindowNotifyFinger$KeyEventHandler;->removeMessages(I)V

    goto :goto_1

    .line 92
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->isSetRoot:Z

    if-eqz v2, :cond_2

    .line 93
    iget-object v2, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->mEventHandler:Lcom/android/server/policy/key/PhoneWindowNotifyFinger$KeyEventHandler;

    const/16 v3, 0x65

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/policy/key/PhoneWindowNotifyFinger$KeyEventHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public setFingerNotifyListener(Lcom/android/server/policy/key/PhoneWindowNotifyFinger$FingerNotify;)V
    .locals 0
    .param p1, "mFingerNotify"    # Lcom/android/server/policy/key/PhoneWindowNotifyFinger$FingerNotify;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/policy/key/PhoneWindowNotifyFinger;->mFingerNotify:Lcom/android/server/policy/key/PhoneWindowNotifyFinger$FingerNotify;

    .line 68
    return-void
.end method
