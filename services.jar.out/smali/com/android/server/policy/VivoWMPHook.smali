.class public final Lcom/android/server/policy/VivoWMPHook;
.super Ljava/lang/Object;
.source "VivoWMPHook.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/VivoWMPHook$InputTestView;,
        Lcom/android/server/policy/VivoWMPHook$ShowListener;,
        Lcom/android/server/policy/VivoWMPHook$OnekeySettingsObserver;
    }
.end annotation


# static fields
.field private static final DUMP_FOLDER:Ljava/lang/String; = "/data/vivo_dumpsys"

.field public static final ONEKEY_START_FUNCTION:Ljava/lang/String; = "smartkey_primary_switch"

.field private static final PROXIMITY_THRESHOLD:F = 5.0f

.field public static final TAG:Ljava/lang/String; = "VivoWMPHook"

.field private static final VOLUME_LONG_PRESS_DELAY:J


# instance fields
.field private isRun:Z

.field private mClickCount:I

.field public mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDoubleClickRunnable:Ljava/lang/Runnable;

.field private mDumpFolder:Ljava/io/File;

.field private mHandler:Landroid/os/Handler;

.field private mKeyBeforeDispatchingListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/policy/IVivoKeyBeforeDispatchingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyBeforeQueueingListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/policy/IVivoKeyBeforeQueueingListener;",
            ">;"
        }
    .end annotation
.end field

.field mLongPressLock:Landroid/os/PowerManager$WakeLock;

.field private mOneKeySwitchOn:Z

.field private mProximiteRegistered:Z

.field private mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySwitchOn:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSmartKeyDisable:Z

.field private mTimeClickResetRunnable:Ljava/lang/Runnable;

.field public mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

.field private mVivoPowerKeyOLPListener:Lcom/android/server/policy/VivoPowerKeyOLPListener;

.field private mVolumeKeyDown:Z

.field private mVolumeLongPressRunnable:Ljava/lang/Runnable;

.field private mWindowListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/IVivoWindowListener;",
            ">;"
        }
    .end annotation
.end field

.field public mWindowManager:Landroid/view/IWindowManager;

.field public mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/policy/VivoWMPHook;->VOLUME_LONG_PRESS_DELAY:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/server/policy/IVivoAdjustmentPolicy;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .param p4, "vivoPolicy"    # Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/VivoWMPHook;->mHandler:Landroid/os/Handler;

    .line 86
    iput v3, p0, Lcom/android/server/policy/VivoWMPHook;->mClickCount:I

    .line 90
    iput-boolean v3, p0, Lcom/android/server/policy/VivoWMPHook;->isRun:Z

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/VivoWMPHook;->mDumpFolder:Ljava/io/File;

    .line 94
    iput-boolean v3, p0, Lcom/android/server/policy/VivoWMPHook;->mVolumeKeyDown:Z

    .line 95
    iput-boolean v3, p0, Lcom/android/server/policy/VivoWMPHook;->mSmartKeyDisable:Z

    .line 96
    iput-boolean v3, p0, Lcom/android/server/policy/VivoWMPHook;->mOneKeySwitchOn:Z

    .line 97
    iput-boolean v3, p0, Lcom/android/server/policy/VivoWMPHook;->mProximitySwitchOn:Z

    .line 98
    iput-boolean v3, p0, Lcom/android/server/policy/VivoWMPHook;->mProximiteRegistered:Z

    .line 103
    new-instance v1, Lcom/android/server/policy/VivoWMPHook$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/VivoWMPHook$1;-><init>(Lcom/android/server/policy/VivoWMPHook;)V

    iput-object v1, p0, Lcom/android/server/policy/VivoWMPHook;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 122
    new-instance v1, Lcom/android/server/policy/VivoWMPHook$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/VivoWMPHook$2;-><init>(Lcom/android/server/policy/VivoWMPHook;)V

    iput-object v1, p0, Lcom/android/server/policy/VivoWMPHook;->mTimeClickResetRunnable:Ljava/lang/Runnable;

    .line 131
    new-instance v1, Lcom/android/server/policy/VivoWMPHook$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/VivoWMPHook$3;-><init>(Lcom/android/server/policy/VivoWMPHook;)V

    iput-object v1, p0, Lcom/android/server/policy/VivoWMPHook;->mVolumeLongPressRunnable:Ljava/lang/Runnable;

    .line 405
    new-instance v1, Lcom/android/server/policy/VivoWMPHook$4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/VivoWMPHook$4;-><init>(Lcom/android/server/policy/VivoWMPHook;)V

    iput-object v1, p0, Lcom/android/server/policy/VivoWMPHook;->mDoubleClickRunnable:Ljava/lang/Runnable;

    .line 195
    iput-object p1, p0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    .line 196
    iput-object p2, p0, Lcom/android/server/policy/VivoWMPHook;->mWindowManager:Landroid/view/IWindowManager;

    .line 197
    iput-object p3, p0, Lcom/android/server/policy/VivoWMPHook;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 198
    iput-object p4, p0, Lcom/android/server/policy/VivoWMPHook;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .line 200
    iget-object v1, p0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/policy/VivoWMPHook;->mSensorManager:Landroid/hardware/SensorManager;

    .line 201
    iget-object v1, p0, Lcom/android/server/policy/VivoWMPHook;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/VivoWMPHook;->mProximitySensor:Landroid/hardware/Sensor;

    .line 203
    invoke-direct {p0}, Lcom/android/server/policy/VivoWMPHook;->checkSmartKeyDisable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/VivoWMPHook;->mSmartKeyDisable:Z

    .line 204
    invoke-direct {p0}, Lcom/android/server/policy/VivoWMPHook;->registerOnekeySettingObserver()V

    .line 205
    invoke-direct {p0, v4}, Lcom/android/server/policy/VivoWMPHook;->registerProximityListener(Z)V

    .line 207
    invoke-static {p1}, Lcom/android/server/policy/VivoPolicyUtil;->createInstance(Landroid/content/Context;)Lcom/android/server/policy/VivoPolicyUtil;

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/VivoWMPHook;->mWindowListeners:Ljava/util/ArrayList;

    .line 211
    new-instance v1, Lcom/android/server/policy/VivoPowerKeyOLPListener;

    iget-object v2, p0, Lcom/android/server/policy/VivoWMPHook;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p1, v2}, Lcom/android/server/policy/VivoPowerKeyOLPListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/VivoWMPHook;->mVivoPowerKeyOLPListener:Lcom/android/server/policy/VivoPowerKeyOLPListener;

    .line 213
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 214
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "VivoWMPHook.mVolumeKeyWakeLock"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/VivoWMPHook;->mLongPressLock:Landroid/os/PowerManager$WakeLock;

    .line 216
    iget-object v1, p0, Lcom/android/server/policy/VivoWMPHook;->mLongPressLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 217
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/VivoWMPHook;->mKeyBeforeQueueingListeners:Landroid/util/SparseArray;

    .line 218
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/VivoWMPHook;->mKeyBeforeDispatchingListeners:Landroid/util/SparseArray;

    .line 219
    invoke-static {p0}, Lcom/android/server/policy/VivoWMPHookCreator;->createInterceptKeyHandler(Lcom/android/server/policy/VivoWMPHook;)V

    .line 221
    invoke-static {p0}, Lcom/android/server/policy/VivoWMPHookCreator;->createPointerEventListener(Lcom/android/server/policy/VivoWMPHook;)V

    .line 223
    const-string v1, "yes"

    const-string v2, "persist.vivo.abc.debug"

    const-string v3, "no"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const-string v1, "persist.vivo.abc.debug"

    const-string v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/VivoWMPHook;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/VivoWMPHook;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/VivoWMPHook;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/VivoWMPHook;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/server/policy/VivoWMPHook;->mProximitySwitchOn:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/policy/VivoWMPHook;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoWMPHook;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/policy/VivoWMPHook;->mProximitySwitchOn:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/policy/VivoWMPHook;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoWMPHook;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/android/server/policy/VivoWMPHook;->mClickCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/VivoWMPHook;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/VivoWMPHook;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/server/policy/VivoWMPHook;->mOneKeySwitchOn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/policy/VivoWMPHook;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoWMPHook;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/policy/VivoWMPHook;->mOneKeySwitchOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/policy/VivoWMPHook;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoWMPHook;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/policy/VivoWMPHook;->showInputTestWindow()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/policy/VivoWMPHook;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/VivoWMPHook;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/server/policy/VivoWMPHook;->isRun:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/policy/VivoWMPHook;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoWMPHook;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/policy/VivoWMPHook;->isRun:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/policy/VivoWMPHook;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoWMPHook;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/policy/VivoWMPHook;->runShell()V

    return-void
.end method

.method private checkSmartKeyDisable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 267
    const-string v1, "persist.vivo.smartkey.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    const/4 v0, 0x1

    .line 273
    :cond_0
    return v0
.end method

.method private static isUsbConnected()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 168
    const/4 v4, 0x0

    .line 170
    .local v4, "state":Ljava/lang/String;
    const/16 v6, 0x400

    :try_start_0
    new-array v0, v6, [C

    .line 171
    .local v0, "buffer":[C
    new-instance v2, Ljava/io/FileReader;

    const-string v6, "/sys/class/android_usb/android0/state"

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    .local v2, "file":Ljava/io/FileReader;
    const/4 v6, 0x0

    const/16 v7, 0x400

    :try_start_1
    invoke-virtual {v2, v0, v6, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 174
    .local v3, "len":I
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 176
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 184
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    .end local v3    # "len":I
    :goto_0
    if-eqz v4, :cond_0

    const-string v6, "CONFIGURED"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 185
    const-string v5, "VivoWMPHook"

    const-string v6, "VolumeKey usb is connected."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v5, 0x1

    .line 189
    :cond_0
    return v5

    .line 176
    .restart local v0    # "buffer":[C
    .restart local v2    # "file":Ljava/io/FileReader;
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    throw v6
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 178
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v6, "VivoWMPHook"

    const-string v7, "This kernel does not have usb station support"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "VivoWMPHook"

    const-string v7, "Can not read usb state!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static printf(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 635
    const-string v0, "VivoWMPHook"

    invoke-static {v0, p0}, Lcom/android/server/policy/VivoPolicyUtil;->printf(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method private registerOnekeySettingObserver()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 234
    iget-object v4, p0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 236
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smartkey_primary_switch"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/policy/VivoWMPHook;->mOneKeySwitchOn:Z

    .line 238
    const-string v2, "VivoWMPHook"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerSettingObserver oneKeySwitchOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/policy/VivoWMPHook;->mOneKeySwitchOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v2, "smartkey_primary_switch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/policy/VivoWMPHook$OnekeySettingsObserver;

    iget-object v5, p0, Lcom/android/server/policy/VivoWMPHook;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/policy/VivoWMPHook$OnekeySettingsObserver;-><init>(Lcom/android/server/policy/VivoWMPHook;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 236
    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_1
.end method

.method private registerProximityListener(Z)V
    .locals 6
    .param p1, "reg"    # Z

    .prologue
    const/4 v5, 0x1

    .line 249
    const-string v1, "ro.vivo.op.entry"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CMCC_RW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 250
    .local v0, "entry":Z
    iget-boolean v1, p0, Lcom/android/server/policy/VivoWMPHook;->mSmartKeyDisable:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    const-string v1, "VivoWMPHook"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The proximiteRegistered is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/policy/VivoWMPHook;->mProximiteRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "register is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/policy/VivoWMPHook;->mProximiteRegistered:Z

    if-nez v1, :cond_2

    .line 256
    iput-boolean v5, p0, Lcom/android/server/policy/VivoWMPHook;->mProximiteRegistered:Z

    .line 257
    iget-object v1, p0, Lcom/android/server/policy/VivoWMPHook;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/VivoWMPHook;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/policy/VivoWMPHook;->mProximitySensor:Landroid/hardware/Sensor;

    iget-object v4, p0, Lcom/android/server/policy/VivoWMPHook;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 259
    :cond_2
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/VivoWMPHook;->mProximiteRegistered:Z

    if-eqz v1, :cond_0

    .line 260
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/VivoWMPHook;->mProximiteRegistered:Z

    .line 261
    iget-object v1, p0, Lcom/android/server/policy/VivoWMPHook;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/VivoWMPHook;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private runShell()V
    .locals 15

    .prologue
    .line 413
    iget-object v12, p0, Lcom/android/server/policy/VivoWMPHook;->mDumpFolder:Ljava/io/File;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/server/policy/VivoWMPHook;->mDumpFolder:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 415
    :cond_0
    :try_start_0
    new-instance v12, Ljava/io/File;

    const-string v13, "/data/vivo_dumpsys"

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v12, p0, Lcom/android/server/policy/VivoWMPHook;->mDumpFolder:Ljava/io/File;

    .line 416
    iget-object v12, p0, Lcom/android/server/policy/VivoWMPHook;->mDumpFolder:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 417
    const-string v12, "VivoWMPHook"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "creat vivo_dumpsys dir path is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/policy/VivoWMPHook;->mDumpFolder:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :cond_1
    :goto_0
    iget-object v12, p0, Lcom/android/server/policy/VivoWMPHook;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/policy/VivoWMPHook$5;

    invoke-direct {v13, p0}, Lcom/android/server/policy/VivoWMPHook$5;-><init>(Lcom/android/server/policy/VivoWMPHook;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 430
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v12, "hh:mm:ss"

    invoke-direct {v5, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 431
    .local v5, "sDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "date":Ljava/lang/String;
    const-string v12, ":"

    const-string v13, "-"

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/vivo_dumpsys/dumpsys_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".txt"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 434
    .local v8, "sys_path":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/vivo_dumpsys/surface_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".txt"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 435
    .local v7, "surf_path":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/vivo_dumpsys/window_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".txt"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 436
    .local v10, "win_path":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/vivo_dumpsys/input_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".txt"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "input_path":Ljava/lang/String;
    const/4 v4, 0x0

    .line 439
    .local v4, "re":I
    const/4 v3, 0x0

    .line 440
    .local v3, "proc":Ljava/lang/Process;
    const/4 v6, 0x0

    .line 442
    .local v6, "shellCommand":Ljava/lang/String;
    const-string v12, "vivo_daemon.service"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Lcom/vivo/services/daemon/VivoDmServiceProxy;->asInterface(Landroid/os/IBinder;)Lcom/vivo/services/daemon/VivoDmServiceProxy;

    move-result-object v9

    .line 444
    .local v9, "vivoDmSrvProxy":Lcom/vivo/services/daemon/VivoDmServiceProxy;
    if-eqz v9, :cond_2

    .line 446
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dumpsys SurfaceFlinger > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 447
    const-string v12, "VivoWMPHook"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "run shell script : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {v9, v6}, Lcom/vivo/services/daemon/VivoDmServiceProxy;->runShell(Ljava/lang/String;)I

    move-result v4

    .line 449
    const-string v12, "VivoWMPHook"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "run shell script ret_code : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dumpsys window > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 452
    const-string v12, "VivoWMPHook"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "run shell script : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {v9, v6}, Lcom/vivo/services/daemon/VivoDmServiceProxy;->runShell(Ljava/lang/String;)I

    move-result v4

    .line 454
    const-string v12, "VivoWMPHook"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "run shell script ret_code : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dumpsys input > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 457
    const-string v12, "VivoWMPHook"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "run shell script : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {v9, v6}, Lcom/vivo/services/daemon/VivoDmServiceProxy;->runShell(Ljava/lang/String;)I

    move-result v4

    .line 459
    const-string v12, "VivoWMPHook"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "run shell script ret_code : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dumpsys > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 462
    const-string v12, "VivoWMPHook"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "run shell script : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {v9, v6}, Lcom/vivo/services/daemon/VivoDmServiceProxy;->runShell(Ljava/lang/String;)I

    move-result v4

    .line 464
    const-string v12, "VivoWMPHook"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "run shell script ret_code : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v6, "cp -rf /data/vivo_dumpsys /sdcard/bbklog/"

    .line 467
    const-string v12, "VivoWMPHook"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "run shell script : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v9, v6}, Lcom/vivo/services/daemon/VivoDmServiceProxy;->runShell(Ljava/lang/String;)I

    move-result v4

    .line 469
    const-string v12, "VivoWMPHook"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "run shell script ret_code : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    if-nez v4, :cond_3

    .line 472
    iget-object v12, p0, Lcom/android/server/policy/VivoWMPHook;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/policy/VivoWMPHook$6;

    invoke-direct {v13, p0}, Lcom/android/server/policy/VivoWMPHook$6;-><init>(Lcom/android/server/policy/VivoWMPHook;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 492
    :cond_2
    :goto_1
    return-void

    .line 419
    .end local v0    # "date":Ljava/lang/String;
    .end local v2    # "input_path":Ljava/lang/String;
    .end local v3    # "proc":Ljava/lang/Process;
    .end local v4    # "re":I
    .end local v5    # "sDateFormat":Ljava/text/SimpleDateFormat;
    .end local v6    # "shellCommand":Ljava/lang/String;
    .end local v7    # "surf_path":Ljava/lang/String;
    .end local v8    # "sys_path":Ljava/lang/String;
    .end local v9    # "vivoDmSrvProxy":Lcom/vivo/services/daemon/VivoDmServiceProxy;
    .end local v10    # "win_path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Ljava/lang/Exception;
    const-string v12, "VivoWMPHook"

    const-string v13, "Unable to prepare vivo_dumpsys file!"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 481
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "date":Ljava/lang/String;
    .restart local v2    # "input_path":Ljava/lang/String;
    .restart local v3    # "proc":Ljava/lang/Process;
    .restart local v4    # "re":I
    .restart local v5    # "sDateFormat":Ljava/text/SimpleDateFormat;
    .restart local v6    # "shellCommand":Ljava/lang/String;
    .restart local v7    # "surf_path":Ljava/lang/String;
    .restart local v8    # "sys_path":Ljava/lang/String;
    .restart local v9    # "vivoDmSrvProxy":Lcom/vivo/services/daemon/VivoDmServiceProxy;
    .restart local v10    # "win_path":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 482
    .local v11, "x":Landroid/os/RemoteException;
    const-string v12, "VivoWMPHook"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "VivoDmServiceProxy run shell script, Exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v11    # "x":Landroid/os/RemoteException;
    :cond_3
    iget-object v12, p0, Lcom/android/server/policy/VivoWMPHook;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/policy/VivoWMPHook$7;

    invoke-direct {v13, p0}, Lcom/android/server/policy/VivoWMPHook$7;-><init>(Lcom/android/server/policy/VivoWMPHook;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private showInputTestWindow()V
    .locals 3

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/VivoWMPHook;->mDialog:Landroid/app/AlertDialog;

    .line 644
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "MyInputTestWindow"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/VivoWMPHook$InputTestView;

    iget-object v2, p0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/policy/VivoWMPHook$InputTestView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Test0"

    new-instance v2, Lcom/android/server/policy/VivoWMPHook$10;

    invoke-direct {v2, p0}, Lcom/android/server/policy/VivoWMPHook$10;-><init>(Lcom/android/server/policy/VivoWMPHook;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Test1"

    new-instance v2, Lcom/android/server/policy/VivoWMPHook$9;

    invoke-direct {v2, p0}, Lcom/android/server/policy/VivoWMPHook$9;-><init>(Lcom/android/server/policy/VivoWMPHook;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/VivoWMPHook;->mDialog:Landroid/app/AlertDialog;

    .line 659
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 660
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 662
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 664
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 665
    return-void
.end method


# virtual methods
.method public checkDisableGlobalActionsDialog()Z
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lvivo/util/FtFindPhoneLockUtil;->isFindPhoneLocked(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public checkDropKeyBeforeQueueing(Landroid/view/KeyEvent;IZZ)Z
    .locals 16
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z
    .param p4, "keyguardActive"    # Z

    .prologue
    .line 496
    const/4 v7, 0x0

    .line 497
    .local v7, "isDrop":Z
    const-string v11, "sys.boot.reason"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 498
    .local v2, "alarmBoot":Z
    if-eqz v2, :cond_0

    .line 499
    const/4 v7, 0x1

    .line 503
    :cond_0
    if-eqz p3, :cond_1

    .line 504
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/VivoWMPHook;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/VivoWMPHook;->mVolumeLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 507
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v11

    const/16 v12, 0x18

    if-eq v11, v12, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v11

    const/16 v12, 0x19

    if-eq v11, v12, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v11

    const/16 v12, 0x1a

    if-ne v11, v12, :cond_3

    .line 511
    :cond_2
    const-string v11, "on"

    const-string v12, "persist.vivo.clock.alarm_status"

    const-string v13, "off"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 512
    .local v5, "isAlarm":Z
    if-eqz v5, :cond_3

    .line 513
    const-string v11, "VivoWMPHook"

    const-string v12, "checkDropKeyBeforeQueueing send alarmActive broadcast."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v4, Landroid/content/Intent;

    const-string v11, "vivo.intent.action.HW_KEY_ALARM_CHANGE"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 515
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 519
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "isAlarm":Z
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v11

    const/16 v12, 0x19

    if-ne v11, v12, :cond_8

    .line 520
    const-string v11, "sys.super_power_save"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 521
    .local v10, "spsave":Z
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/policy/VivoWMPHook;->mOneKeySwitchOn:Z

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/policy/VivoWMPHook;->mSmartKeyDisable:Z

    if-nez v11, :cond_a

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/policy/VivoWMPHook;->mProximitySwitchOn:Z

    if-nez v11, :cond_a

    if-nez v10, :cond_a

    if-nez p3, :cond_a

    const/4 v9, 0x1

    .line 523
    .local v9, "smartEnable":Z
    :goto_0
    const-string v11, "VivoWMPHook"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkDropKeyBeforeQueueing keyguardActive="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ,isScreenOn="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ,oneKeySwitchOn="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/VivoWMPHook;->mOneKeySwitchOn:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ,smartKeyDisable="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/VivoWMPHook;->mSmartKeyDisable:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ,proximityOn="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/VivoWMPHook;->mProximitySwitchOn:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ,volumeKeyDown="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/VivoWMPHook;->mVolumeKeyDown:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    if-nez v9, :cond_4

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/policy/VivoWMPHook;->mVolumeKeyDown:Z

    if-eqz v11, :cond_d

    .line 528
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/VivoWMPHook;->isMusicActive()Z

    move-result v8

    .line 529
    .local v8, "isMusicActive":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/VivoWMPHook;->isCallActive()Z

    move-result v6

    .line 530
    .local v6, "isCallActive":Z
    const-string v11, "VivoWMPHook"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkDropKeyBeforeQueueing isMusicActive="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ,isCallActive="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/policy/VivoWMPHook;->mVolumeKeyDown:Z

    if-eqz v11, :cond_5

    .line 533
    const/4 v7, 0x1

    .line 534
    const-string v11, "VivoWMPHook"

    const-string v12, "checkDropKeyBeforeQueueing volumekey last down,drop true."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_5
    if-nez v8, :cond_7

    if-nez v6, :cond_7

    .line 538
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v11

    if-nez v11, :cond_b

    .line 539
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v11

    if-nez v11, :cond_7

    .line 540
    const-string v11, "VivoWMPHook"

    const-string v12, "VolumeKey down post long press runnable."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/policy/VivoWMPHook;->mVolumeKeyDown:Z

    .line 543
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/VivoWMPHook;->mLongPressLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v11

    if-nez v11, :cond_6

    .line 544
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/VivoWMPHook;->mLongPressLock:Landroid/os/PowerManager$WakeLock;

    sget-wide v12, Lcom/android/server/policy/VivoWMPHook;->VOLUME_LONG_PRESS_DELAY:J

    const-wide/16 v14, 0x2

    mul-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 545
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/VivoWMPHook;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/VivoWMPHook;->mVolumeLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/VivoWMPHook;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/VivoWMPHook;->mVolumeLongPressRunnable:Ljava/lang/Runnable;

    sget-wide v14, Lcom/android/server/policy/VivoWMPHook;->VOLUME_LONG_PRESS_DELAY:J

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 562
    .end local v6    # "isCallActive":Z
    .end local v8    # "isMusicActive":Z
    :cond_7
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v11

    const/16 v12, 0x19

    if-ne v11, v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v11

    if-eqz v11, :cond_8

    .line 564
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/policy/VivoWMPHook;->mVolumeKeyDown:Z

    .line 568
    .end local v9    # "smartEnable":Z
    .end local v10    # "spsave":Z
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v11

    const/16 v12, 0x18

    if-ne v11, v12, :cond_9

    .line 570
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v11

    if-nez v11, :cond_f

    .line 571
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v11

    if-nez v11, :cond_e

    .line 572
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/VivoWMPHook;->mClickCount:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/policy/VivoWMPHook;->mClickCount:I

    .line 573
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/VivoWMPHook;->mClickCount:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    .line 574
    const-string v11, "VivoWMPHook"

    const-string v12, "VolumeKey start click debugMode."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/VivoWMPHook;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/VivoWMPHook;->mTimeClickResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/VivoWMPHook;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/VivoWMPHook;->mTimeClickResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v14, 0x3e8

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 618
    :cond_9
    :goto_2
    return v7

    .line 521
    .restart local v10    # "spsave":Z
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 549
    .restart local v6    # "isCallActive":Z
    .restart local v8    # "isMusicActive":Z
    .restart local v9    # "smartEnable":Z
    :cond_b
    const-string v11, "VivoWMPHook"

    const-string v12, "VolumeKey up remove callback."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/VivoWMPHook;->mLongPressLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 551
    const-string v11, "VivoWMPHook"

    const-string v12, "VolumeKey up release lock."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/VivoWMPHook;->mLongPressLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 554
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/VivoWMPHook;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/VivoWMPHook;->mVolumeLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 559
    .end local v6    # "isCallActive":Z
    .end local v8    # "isMusicActive":Z
    :cond_d
    const-string v11, "VivoWMPHook"

    const-string v12, "smartquick not open."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 579
    .end local v9    # "smartEnable":Z
    .end local v10    # "spsave":Z
    :cond_e
    const-string v11, "VivoWMPHook"

    const-string v12, "VolumeKey reset click times because long press."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/policy/VivoWMPHook;->mClickCount:I

    .line 581
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/VivoWMPHook;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/VivoWMPHook;->mTimeClickResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 584
    :cond_f
    const-string v11, "VivoWMPHook"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "VolumeKey upCheck clickTimes = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/policy/VivoWMPHook;->mClickCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/VivoWMPHook;->mClickCount:I

    const/4 v12, 0x7

    if-ne v11, v12, :cond_9

    .line 586
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/policy/VivoWMPHook;->mClickCount:I

    .line 587
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/VivoWMPHook;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/VivoWMPHook;->mTimeClickResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 588
    const-string v11, "VivoWMPHook"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "VolumeKey is tims click, do something here("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/VivoWMPHook;->isRun:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")!!!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-static {}, Lcom/android/server/policy/VivoWMPHook;->isUsbConnected()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 590
    const-string v11, "persist.vivo.abc.debug"

    const-string v12, "yes"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "adb_enabled"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :cond_10
    :goto_3
    const-string v11, "persist.sys.log.ctrl"

    const-string v12, "no"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "yes"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 600
    .local v3, "bbklog":Z
    if-eqz v3, :cond_9

    .line 603
    new-instance v11, Ljava/lang/Thread;

    new-instance v12, Lcom/android/server/policy/VivoWMPHook$8;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/server/policy/VivoWMPHook$8;-><init>(Lcom/android/server/policy/VivoWMPHook;)V

    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 594
    .end local v3    # "bbklog":Z
    :catch_0
    move-exception v11

    goto :goto_3
.end method

.method public finishScreenTurningOn(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 297
    iget-object v4, p0, Lcom/android/server/policy/VivoWMPHook;->mWindowListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 298
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 300
    iget-object v4, p0, Lcom/android/server/policy/VivoWMPHook;->mWindowListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/IVivoWindowListener;

    .line 301
    .local v1, "listener":Lcom/android/server/policy/IVivoWindowListener;
    invoke-interface {v1}, Lcom/android/server/policy/IVivoWindowListener;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 302
    .local v3, "token":Landroid/os/IBinder;
    if-ne p1, v3, :cond_1

    .line 304
    invoke-interface {v1}, Lcom/android/server/policy/IVivoWindowListener;->onFinishScreenTurningOn()V

    .line 308
    .end local v1    # "listener":Lcom/android/server/policy/IVivoWindowListener;
    .end local v3    # "token":Landroid/os/IBinder;
    :cond_0
    return-void

    .line 298
    .restart local v1    # "listener":Lcom/android/server/policy/IVivoWindowListener;
    .restart local v3    # "token":Landroid/os/IBinder;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getKeyBeforeDispatchingListener()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/policy/IVivoKeyBeforeDispatchingListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook;->mKeyBeforeDispatchingListeners:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getKeyBeforeQueueingListener()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/policy/IVivoKeyBeforeQueueingListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook;->mKeyBeforeQueueingListeners:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getVivoPowerKeyOLPListener()Lcom/android/server/policy/VivoPowerKeyOLPListener;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook;->mVivoPowerKeyOLPListener:Lcom/android/server/policy/VivoPowerKeyOLPListener;

    return-object v0
.end method

.method isAlarmActive()Z
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 400
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 402
    .local v0, "isAlarmActive":Z
    :cond_1
    return v0
.end method

.method isCallActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 381
    iget-object v2, p0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 382
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_1

    .line 383
    const-string v2, "VivoWMPHook"

    const-string v3, "isCallActive: couldn\'t get TelephonyManager reference"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method isMusicActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 391
    iget-object v2, p0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 392
    .local v0, "am":Landroid/media/AudioManager;
    if-nez v0, :cond_1

    .line 393
    const-string v2, "VivoWMPHook"

    const-string v3, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActiveRemotely()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/VivoWMPHook;->registerProximityListener(Z)V

    .line 312
    return-void
.end method

.method public onScreenTurnedOn(Lcom/android/server/policy/VivoWMPHook$ShowListener;)Z
    .locals 6
    .param p1, "showListener"    # Lcom/android/server/policy/VivoWMPHook$ShowListener;

    .prologue
    const/4 v4, 0x0

    .line 279
    invoke-direct {p0, v4}, Lcom/android/server/policy/VivoWMPHook;->registerProximityListener(Z)V

    .line 280
    iget-object v5, p0, Lcom/android/server/policy/VivoWMPHook;->mWindowListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 281
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 283
    iget-object v5, p0, Lcom/android/server/policy/VivoWMPHook;->mWindowListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/IVivoWindowListener;

    .line 284
    .local v1, "listener":Lcom/android/server/policy/IVivoWindowListener;
    invoke-interface {v1}, Lcom/android/server/policy/IVivoWindowListener;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 285
    .local v3, "windowToken":Landroid/os/IBinder;
    if-eqz v3, :cond_1

    .line 287
    invoke-interface {p1, v3}, Lcom/android/server/policy/VivoWMPHook$ShowListener;->onShown(Landroid/os/IBinder;)V

    .line 288
    const/4 v4, 0x1

    .line 292
    .end local v1    # "listener":Lcom/android/server/policy/IVivoWindowListener;
    .end local v3    # "windowToken":Landroid/os/IBinder;
    :cond_0
    return v4

    .line 281
    .restart local v1    # "listener":Lcom/android/server/policy/IVivoWindowListener;
    .restart local v3    # "windowToken":Landroid/os/IBinder;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public registerKeyBeforeDispatchingListener(ILcom/android/server/policy/IVivoKeyBeforeDispatchingListener;)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "listener"    # Lcom/android/server/policy/IVivoKeyBeforeDispatchingListener;

    .prologue
    .line 361
    if-gtz p1, :cond_0

    .line 363
    const-string v0, "VivoWMPHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook;->mKeyBeforeDispatchingListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 369
    const-string v0, "VivoWMPHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerKeyBeforeDispatchingListener: KeyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has already been registered, please contact the manager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook;->mKeyBeforeDispatchingListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerKeyBeforeQueueingListener(ILcom/android/server/policy/IVivoKeyBeforeQueueingListener;)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "listener"    # Lcom/android/server/policy/IVivoKeyBeforeQueueingListener;

    .prologue
    .line 335
    if-gtz p1, :cond_0

    .line 337
    const-string v0, "VivoWMPHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook;->mKeyBeforeQueueingListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 343
    const-string v0, "VivoWMPHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerKeyBeforeQueueingListener: KeyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has already been registered, please contact the manager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook;->mKeyBeforeQueueingListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerWaitingForDrawnWindowListener(Lcom/android/server/policy/IVivoWindowListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/policy/IVivoWindowListener;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook;->mWindowListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook;->mWindowListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unregisterKeyBeforeDispatchingListener(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook;->mKeyBeforeDispatchingListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 378
    return-void
.end method

.method public unregisterKeyBeforeQueueingListener(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook;->mKeyBeforeQueueingListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 352
    return-void
.end method

.method public unregisterWaitingForDrawnWindowListener(Lcom/android/server/policy/IVivoWindowListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/policy/IVivoWindowListener;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook;->mWindowListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 326
    return-void
.end method
