.class public final Lcom/android/server/policy/VivoWMPHookCreator;
.super Ljava/lang/Object;
.source "VivoWMPHookCreator.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static mInstance:Lcom/android/server/policy/VivoWMPHook;

.field private static mKeyFallbackListener:Lcom/android/server/policy/IVivoKeyFallbackListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/android/server/policy/VivoWMPHookCreator;->mInstance:Lcom/android/server/policy/VivoWMPHook;

    .line 33
    sput-object v0, Lcom/android/server/policy/VivoWMPHookCreator;->mKeyFallbackListener:Lcom/android/server/policy/IVivoKeyFallbackListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/server/policy/IVivoAdjustmentPolicy;)Lcom/android/server/policy/VivoWMPHook;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowManager"    # Landroid/view/IWindowManager;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .param p3, "vivoPolicy"    # Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .prologue
    .line 38
    sget-object v0, Lcom/android/server/policy/VivoWMPHookCreator;->mInstance:Lcom/android/server/policy/VivoWMPHook;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/android/server/policy/VivoWMPHookCreator;->mInstance:Lcom/android/server/policy/VivoWMPHook;

    .line 45
    :goto_0
    return-object v0

    .line 43
    :cond_0
    new-instance v0, Lcom/android/server/policy/VivoWMPHook;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/policy/VivoWMPHook;-><init>(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/server/policy/IVivoAdjustmentPolicy;)V

    sput-object v0, Lcom/android/server/policy/VivoWMPHookCreator;->mInstance:Lcom/android/server/policy/VivoWMPHook;

    .line 45
    sget-object v0, Lcom/android/server/policy/VivoWMPHookCreator;->mInstance:Lcom/android/server/policy/VivoWMPHook;

    goto :goto_0
.end method

.method public static createInterceptKeyHandler(Lcom/android/server/policy/VivoWMPHook;)V
    .locals 15
    .param p0, "vivoWMPHook"    # Lcom/android/server/policy/VivoWMPHook;

    .prologue
    const/16 v14, 0x52

    .line 69
    new-instance v3, Lcom/android/server/policy/VivoInterceptKeyRegister;

    iget-object v11, p0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    invoke-direct {v3, v11}, Lcom/android/server/policy/VivoInterceptKeyRegister;-><init>(Landroid/content/Context;)V

    .line 71
    .local v3, "interceptKeyHandler":Lcom/android/server/policy/VivoInterceptKeyRegister;
    const-string v11, "rom_2.5"

    const-string v12, "ro.vivo.rom.version"

    const-string v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "rom_2.6"

    const-string v12, "ro.vivo.rom.version"

    const-string v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 73
    :cond_0
    new-instance v5, Lcom/android/server/policy/key/VivoMenuKeyHandler;

    iget-object v11, p0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/server/policy/VivoWMPHook;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    invoke-direct {v5, v11, v12}, Lcom/android/server/policy/key/VivoMenuKeyHandler;-><init>(Landroid/content/Context;Lcom/android/server/policy/IVivoAdjustmentPolicy;)V

    .line 74
    .local v5, "menuKeyHandler":Lcom/android/server/policy/key/VivoMenuKeyHandler;
    invoke-virtual {v3, v14, v5}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 81
    .end local v5    # "menuKeyHandler":Lcom/android/server/policy/key/VivoMenuKeyHandler;
    :goto_0
    new-instance v0, Lcom/android/server/policy/key/VivoBackKeyHandler;

    iget-object v11, p0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/server/policy/VivoWMPHook;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    invoke-direct {v0, v11, v12}, Lcom/android/server/policy/key/VivoBackKeyHandler;-><init>(Landroid/content/Context;Lcom/android/server/policy/IVivoAdjustmentPolicy;)V

    .line 82
    .local v0, "backKeyHandler":Lcom/android/server/policy/key/VivoBackKeyHandler;
    const/4 v11, 0x4

    invoke-virtual {v3, v11, v0}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 84
    new-instance v8, Lcom/android/server/policy/key/VivoPowerKeyHandler;

    iget-object v11, p0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/server/policy/VivoWMPHook;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    invoke-direct {v8, v11, v12}, Lcom/android/server/policy/key/VivoPowerKeyHandler;-><init>(Landroid/content/Context;Lcom/android/server/policy/IVivoAdjustmentPolicy;)V

    .line 85
    .local v8, "powerKeyHandler":Lcom/android/server/policy/key/VivoPowerKeyHandler;
    const/16 v11, 0x1a

    invoke-virtual {v3, v11, v8}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 87
    new-instance v1, Lcom/android/server/policy/key/VivoCameraKeyHandler;

    iget-object v11, p0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    invoke-direct {v1, v11}, Lcom/android/server/policy/key/VivoCameraKeyHandler;-><init>(Landroid/content/Context;)V

    .line 88
    .local v1, "cameraKeyHandler":Lcom/android/server/policy/key/VivoCameraKeyHandler;
    const/16 v11, 0x1b

    invoke-virtual {v3, v11, v1}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 95
    new-instance v6, Lcom/android/server/policy/key/VivoVolumeKeyHandler;

    iget-object v11, p0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/server/policy/VivoWMPHook;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    invoke-direct {v6, v11, v12}, Lcom/android/server/policy/key/VivoVolumeKeyHandler;-><init>(Landroid/content/Context;Lcom/android/server/policy/IVivoAdjustmentPolicy;)V

    .line 96
    .local v6, "multiMediaKeyHandler":Lcom/android/server/policy/key/VivoVolumeKeyHandler;
    const/16 v11, 0x19

    invoke-virtual {v3, v11, v6}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 97
    const/16 v11, 0x18

    invoke-virtual {v3, v11, v6}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 99
    new-instance v7, Lcom/android/server/policy/key/VivoOTGKeyHandler;

    iget-object v11, p0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/server/policy/VivoWMPHook;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    invoke-direct {v7, v11, v12}, Lcom/android/server/policy/key/VivoOTGKeyHandler;-><init>(Landroid/content/Context;Lcom/android/server/policy/IVivoAdjustmentPolicy;)V

    .line 100
    .local v7, "otgKeyHandler":Lcom/android/server/policy/key/VivoOTGKeyHandler;
    const/16 v11, 0x83

    invoke-virtual {v3, v11, v7}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 101
    const/16 v11, 0x75

    invoke-virtual {v3, v11, v7}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 102
    const/16 v11, 0x76

    invoke-virtual {v3, v11, v7}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 104
    new-instance v2, Lcom/android/server/policy/key/VivoCustomKeyHandler;

    iget-object v11, p0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/server/policy/VivoWMPHook;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    invoke-direct {v2, v11, v12}, Lcom/android/server/policy/key/VivoCustomKeyHandler;-><init>(Landroid/content/Context;Lcom/android/server/policy/IVivoAdjustmentPolicy;)V

    .line 105
    .local v2, "customKeyHandler":Lcom/android/server/policy/key/VivoCustomKeyHandler;
    sget v11, Lcom/android/server/policy/VivoPolicyConstant;->KEYCODE_TS_LARGE_SUPPRESSION:I

    invoke-virtual {v3, v11, v2}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 108
    new-instance v9, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    iget-object v11, p0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/server/policy/VivoWMPHook;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    invoke-direct {v9, v11, v12}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;-><init>(Landroid/content/Context;Lcom/android/server/policy/IVivoAdjustmentPolicy;)V

    .line 109
    .local v9, "smartwakeKeyHandler":Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;
    sget v11, Lcom/android/server/policy/VivoPolicyConstant;->KEYCODE_WAKEUP:I

    invoke-virtual {v3, v11, v9}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 110
    sget v11, Lcom/android/server/policy/VivoPolicyConstant;->KEYCODE_WAKEUP_SWIPE:I

    invoke-virtual {v3, v11, v9}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 111
    const/16 v11, 0x15

    invoke-virtual {v3, v11, v9}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 112
    const/16 v11, 0x16

    invoke-virtual {v3, v11, v9}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 113
    const/16 v11, 0x29

    invoke-virtual {v3, v11, v9}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 114
    const/16 v11, 0x13

    invoke-virtual {v3, v11, v9}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 115
    const/16 v11, 0x1f

    invoke-virtual {v3, v11, v9}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 116
    const/16 v11, 0x21

    invoke-virtual {v3, v11, v9}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 117
    const/16 v11, 0x2b

    invoke-virtual {v3, v11, v9}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 118
    const/16 v11, 0x33

    invoke-virtual {v3, v11, v9}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 119
    const/16 v11, 0x22

    invoke-virtual {v3, v11, v9}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 120
    const/16 v11, 0x1d

    invoke-virtual {v3, v11, v9}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 121
    const/16 v11, 0x12f

    invoke-virtual {v3, v11, v9}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 122
    invoke-virtual {p0, v9}, Lcom/android/server/policy/VivoWMPHook;->registerWaitingForDrawnWindowListener(Lcom/android/server/policy/IVivoWindowListener;)V

    .line 126
    new-instance v4, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    iget-object v11, p0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/server/policy/VivoWMPHook;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    invoke-direct {v4, v11, v12}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;-><init>(Landroid/content/Context;Lcom/android/server/policy/IVivoAdjustmentPolicy;)V

    .line 128
    .local v4, "mFrontFingerprintHandler":Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;
    const/4 v11, 0x3

    invoke-virtual {v3, v11, v4}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    .line 133
    invoke-virtual {v3, p0}, Lcom/android/server/policy/VivoInterceptKeyRegister;->hookupListeners(Lcom/android/server/policy/VivoWMPHook;)V

    .line 134
    return-void

    .line 76
    .end local v0    # "backKeyHandler":Lcom/android/server/policy/key/VivoBackKeyHandler;
    .end local v1    # "cameraKeyHandler":Lcom/android/server/policy/key/VivoCameraKeyHandler;
    .end local v2    # "customKeyHandler":Lcom/android/server/policy/key/VivoCustomKeyHandler;
    .end local v4    # "mFrontFingerprintHandler":Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;
    .end local v6    # "multiMediaKeyHandler":Lcom/android/server/policy/key/VivoVolumeKeyHandler;
    .end local v7    # "otgKeyHandler":Lcom/android/server/policy/key/VivoOTGKeyHandler;
    .end local v8    # "powerKeyHandler":Lcom/android/server/policy/key/VivoPowerKeyHandler;
    .end local v9    # "smartwakeKeyHandler":Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;
    :cond_1
    const-string v11, "VivoWMPHookCreator"

    const-string v12, "register taskkey."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v10, Lcom/android/server/policy/key/VivoTaskKeyHandler;

    iget-object v11, p0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/server/policy/VivoWMPHook;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    invoke-direct {v10, v11, v12}, Lcom/android/server/policy/key/VivoTaskKeyHandler;-><init>(Landroid/content/Context;Lcom/android/server/policy/IVivoAdjustmentPolicy;)V

    .line 78
    .local v10, "taskKeyHandler":Lcom/android/server/policy/key/VivoTaskKeyHandler;
    invoke-virtual {v3, v14, v10}, Lcom/android/server/policy/VivoInterceptKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V

    goto/16 :goto_0
.end method

.method public static createPointerEventListener(Lcom/android/server/policy/VivoWMPHook;)V
    .locals 2
    .param p0, "vivoWMPHook"    # Lcom/android/server/policy/VivoWMPHook;

    .prologue
    .line 55
    new-instance v0, Lcom/android/server/policy/motion/VivoMSPointerEventListener;

    iget-object v1, p0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/policy/motion/VivoMSPointerEventListener;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "msListener":Lcom/android/server/policy/motion/VivoMSPointerEventListener;
    iget-object v1, p0, Lcom/android/server/policy/VivoWMPHook;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1, v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 59
    return-void
.end method

.method public static getKeyFallbackListener(Landroid/content/Context;)Lcom/android/server/policy/IVivoKeyFallbackListener;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    sget-object v2, Lcom/android/server/policy/VivoWMPHookCreator;->mKeyFallbackListener:Lcom/android/server/policy/IVivoKeyFallbackListener;

    if-eqz v2, :cond_0

    .line 142
    sget-object v2, Lcom/android/server/policy/VivoWMPHookCreator;->mKeyFallbackListener:Lcom/android/server/policy/IVivoKeyFallbackListener;

    .line 156
    :goto_0
    return-object v2

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 150
    :cond_1
    new-instance v1, Lcom/android/server/policy/VivoFallbackKeyRegister;

    invoke-direct {v1, p0}, Lcom/android/server/policy/VivoFallbackKeyRegister;-><init>(Landroid/content/Context;)V

    .line 151
    .local v1, "fallbackKeyHandler":Lcom/android/server/policy/VivoFallbackKeyRegister;
    sput-object v1, Lcom/android/server/policy/VivoWMPHookCreator;->mKeyFallbackListener:Lcom/android/server/policy/IVivoKeyFallbackListener;

    .line 153
    new-instance v0, Lcom/android/server/policy/key/VivoCameraKeyHandler;

    invoke-direct {v0, p0}, Lcom/android/server/policy/key/VivoCameraKeyHandler;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, "cameraKeyHandler":Lcom/android/server/policy/key/VivoCameraKeyHandler;
    const/16 v2, 0x1b

    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/VivoFallbackKeyRegister;->registerInterceptKeyListener(ILcom/android/server/policy/IVivoKeyCallback;)V

    .line 156
    sget-object v2, Lcom/android/server/policy/VivoWMPHookCreator;->mKeyFallbackListener:Lcom/android/server/policy/IVivoKeyFallbackListener;

    goto :goto_0
.end method

.method public static peekInstance()Lcom/android/server/policy/VivoWMPHook;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/server/policy/VivoWMPHookCreator;->mInstance:Lcom/android/server/policy/VivoWMPHook;

    return-object v0
.end method
