.class public Lcom/android/server/policy/VivoInterceptKeyRegister;
.super Ljava/lang/Object;
.source "VivoInterceptKeyRegister.java"

# interfaces
.implements Lcom/android/server/policy/IVivoKeyBeforeQueueingListener;
.implements Lcom/android/server/policy/IVivoKeyBeforeDispatchingListener;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoInterceptKeyHandler"

.field private static final WAKE_LOCK_TIMEOUT:J = 0x1388L


# instance fields
.field public mContext:Landroid/content/Context;

.field private mKeyActionObserver:Lcom/android/server/policy/VivoKeyActionObserver;

.field private mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/policy/AVivoInterceptKeyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mPowerManager:Landroid/os/PowerManager;

    .line 24
    iput-object v1, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mListeners:Landroid/util/SparseArray;

    .line 26
    iput-object v1, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mKeyActionObserver:Lcom/android/server/policy/VivoKeyActionObserver;

    .line 30
    iput-object p1, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mContext:Landroid/content/Context;

    .line 31
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mPowerManager:Landroid/os/PowerManager;

    .line 32
    new-instance v0, Lcom/android/server/policy/VivoKeyActionObserver;

    iget-object v1, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/policy/VivoKeyActionObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mKeyActionObserver:Lcom/android/server/policy/VivoKeyActionObserver;

    .line 33
    return-void
.end method

.method private acquireWakeLock()V
    .locals 4

    .prologue
    .line 198
    const-string v0, "acquire mPartialWakeLock"

    invoke-direct {p0, v0}, Lcom/android/server/policy/VivoInterceptKeyRegister;->printf(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lcom/android/server/policy/VivoInterceptKeyRegister;->initWakeLock()V

    .line 200
    iget-object v0, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 201
    return-void
.end method

.method private initWakeLock()V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "VivoInterceptKeyHandler"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 192
    iget-object v0, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 194
    :cond_0
    return-void
.end method

.method private printf(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-static {p1}, Lcom/android/server/policy/VivoWMPHook;->printf(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "release mPartialWakeLock"

    invoke-direct {p0, v0}, Lcom/android/server/policy/VivoInterceptKeyRegister;->printf(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 210
    :cond_0
    return-void
.end method


# virtual methods
.method public getInterceptKeyListener(I)Lcom/android/server/policy/AVivoInterceptKeyCallback;
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/AVivoInterceptKeyCallback;

    return-object v0
.end method

.method public hookupListeners(Lcom/android/server/policy/VivoWMPHook;)V
    .locals 4
    .param p1, "vivoWMPHook"    # Lcom/android/server/policy/VivoWMPHook;

    .prologue
    .line 37
    iget-object v3, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 38
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 40
    iget-object v3, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 41
    .local v1, "keyCode":I
    invoke-virtual {p1, v1, p0}, Lcom/android/server/policy/VivoWMPHook;->registerKeyBeforeQueueingListener(ILcom/android/server/policy/IVivoKeyBeforeQueueingListener;)V

    .line 42
    invoke-virtual {p1, v1, p0}, Lcom/android/server/policy/VivoWMPHook;->registerKeyBeforeDispatchingListener(ILcom/android/server/policy/IVivoKeyBeforeDispatchingListener;)V

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "keyCode":I
    :cond_0
    return-void
.end method

.method public onInterceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;IZ)I
    .locals 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I
    .param p4, "keyguardOn"    # Z

    .prologue
    const/4 v0, 0x1

    const/16 v4, -0x64

    .line 145
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 146
    .local v1, "keyCode":I
    iget-object v5, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/AVivoInterceptKeyCallback;

    .line 147
    .local v2, "listener":Lcom/android/server/policy/AVivoInterceptKeyCallback;
    if-nez v2, :cond_1

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInterceptKeyBeforeDispatching will drop keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", because of listener is null."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/policy/VivoInterceptKeyRegister;->printf(Ljava/lang/String;)V

    move v3, v4

    .line 184
    :cond_0
    :goto_0
    return v3

    .line 153
    :cond_1
    iput v0, v2, Lcom/android/server/policy/AVivoInterceptKeyCallback;->mState:I

    .line 154
    iput-object p2, v2, Lcom/android/server/policy/AVivoInterceptKeyCallback;->mKeyEvent:Landroid/view/KeyEvent;

    .line 155
    iput p3, v2, Lcom/android/server/policy/AVivoInterceptKeyCallback;->mPolicyFlags:I

    .line 156
    invoke-virtual {v2, v1, p2}, Lcom/android/server/policy/AVivoInterceptKeyCallback;->onCheckForward(ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInterceptKeyBeforeDispatching will drop keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/policy/VivoInterceptKeyRegister;->printf(Ljava/lang/String;)V

    move v3, v4

    .line 159
    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_4

    .line 163
    .local v0, "down":Z
    :goto_1
    const/16 v3, -0x64

    .line 165
    .local v3, "result":I
    if-eqz v0, :cond_5

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onKeyDown before dispatching will be invoked: KeyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/policy/VivoInterceptKeyRegister;->printf(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v2, v1, p2}, Lcom/android/server/policy/AVivoInterceptKeyCallback;->onKeyDown(ILandroid/view/KeyEvent;)I

    move-result v3

    .line 169
    if-ne v3, v4, :cond_0

    :cond_3
    move v3, v4

    .line 184
    goto :goto_0

    .line 162
    .end local v0    # "down":Z
    .end local v3    # "result":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 176
    .restart local v0    # "down":Z
    .restart local v3    # "result":I
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onKeyUp before dispatching will be invoked: KeyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/policy/VivoInterceptKeyRegister;->printf(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v2, v1, p2}, Lcom/android/server/policy/AVivoInterceptKeyCallback;->onKeyUp(ILandroid/view/KeyEvent;)I

    move-result v3

    .line 178
    if-eq v3, v4, :cond_3

    goto :goto_0
.end method

.method public onInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZZ)I
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z
    .param p4, "keyguardActive"    # Z

    .prologue
    const/4 v0, 0x0

    const/16 v5, -0x64

    .line 75
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 76
    .local v2, "keyCode":I
    iget-object v6, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/AVivoInterceptKeyCallback;

    .line 77
    .local v3, "listener":Lcom/android/server/policy/AVivoInterceptKeyCallback;
    if-nez v3, :cond_1

    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onInterceptKeyBeforeQueueing will drop keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", because of listener is null."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/policy/VivoInterceptKeyRegister;->printf(Ljava/lang/String;)V

    move v4, v5

    .line 139
    :cond_0
    :goto_0
    return v4

    .line 83
    :cond_1
    iput v0, v3, Lcom/android/server/policy/AVivoInterceptKeyCallback;->mState:I

    .line 84
    iput-object p1, v3, Lcom/android/server/policy/AVivoInterceptKeyCallback;->mKeyEvent:Landroid/view/KeyEvent;

    .line 85
    iput-boolean p4, v3, Lcom/android/server/policy/AVivoInterceptKeyCallback;->mIsKeyguardActive:Z

    .line 86
    iput-boolean p3, v3, Lcom/android/server/policy/AVivoInterceptKeyCallback;->mIsScreenOn:Z

    .line 87
    iput p2, v3, Lcom/android/server/policy/AVivoInterceptKeyCallback;->mPolicyFlags:I

    .line 88
    invoke-virtual {v3, v2, p1}, Lcom/android/server/policy/AVivoInterceptKeyCallback;->onCheckForward(ILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onInterceptKeyBeforeQueueing will drop keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/policy/VivoInterceptKeyRegister;->printf(Ljava/lang/String;)V

    move v4, v5

    .line 91
    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_3

    const/4 v0, 0x1

    .line 95
    .local v0, "down":Z
    :cond_3
    invoke-virtual {v3, v2, p1}, Lcom/android/server/policy/AVivoInterceptKeyCallback;->onCheckDoubleClickEnabled(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 96
    .local v1, "isDoubleClickEnabled":Z
    const/16 v4, -0x64

    .line 98
    .local v4, "result":I
    if-eqz v0, :cond_5

    .line 100
    if-nez p3, :cond_4

    invoke-virtual {v3, v2, p1}, Lcom/android/server/policy/AVivoInterceptKeyCallback;->onCheckNeedWakeLockWhenScreenOff(ILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 102
    invoke-direct {p0}, Lcom/android/server/policy/VivoInterceptKeyRegister;->acquireWakeLock()V

    .line 105
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onKeyDown before queueing will be invoked: KeyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/policy/VivoInterceptKeyRegister;->printf(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v3, v2, p1}, Lcom/android/server/policy/AVivoInterceptKeyCallback;->onKeyDown(ILandroid/view/KeyEvent;)I

    move-result v4

    .line 107
    if-ne v4, v5, :cond_0

    .line 112
    iget-object v5, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mKeyActionObserver:Lcom/android/server/policy/VivoKeyActionObserver;

    invoke-virtual {v5}, Lcom/android/server/policy/VivoKeyActionObserver;->cancelKeyLongPressAction()V

    .line 113
    iget-object v5, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mKeyActionObserver:Lcom/android/server/policy/VivoKeyActionObserver;

    new-instance v6, Landroid/view/KeyEvent;

    invoke-direct {v6, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {v5, v3, v6}, Lcom/android/server/policy/VivoKeyActionObserver;->postKeyLongPressAction(Lcom/android/server/policy/IVivoKeyCallback;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 117
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onKeyUp before queueing will be invoked: KeyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/policy/VivoInterceptKeyRegister;->printf(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v3, v2, p1}, Lcom/android/server/policy/AVivoInterceptKeyCallback;->onKeyUp(ILandroid/view/KeyEvent;)I

    move-result v4

    .line 119
    if-ne v4, v5, :cond_0

    .line 124
    iget-object v5, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mKeyActionObserver:Lcom/android/server/policy/VivoKeyActionObserver;

    invoke-virtual {v5}, Lcom/android/server/policy/VivoKeyActionObserver;->checkKeyLongPressAction()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    iget-object v5, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mKeyActionObserver:Lcom/android/server/policy/VivoKeyActionObserver;

    invoke-virtual {v5}, Lcom/android/server/policy/VivoKeyActionObserver;->cancelKeyLongPressAction()V

    .line 128
    if-eqz v1, :cond_6

    .line 130
    iget-object v5, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mKeyActionObserver:Lcom/android/server/policy/VivoKeyActionObserver;

    new-instance v6, Landroid/view/KeyEvent;

    invoke-direct {v6, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {v5, v3, v6}, Lcom/android/server/policy/VivoKeyActionObserver;->startKeyDoubleClickDetection(Lcom/android/server/policy/IVivoKeyCallback;Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 134
    :cond_6
    iget-object v5, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mKeyActionObserver:Lcom/android/server/policy/VivoKeyActionObserver;

    new-instance v6, Landroid/view/KeyEvent;

    invoke-direct {v6, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {v5, v3, v6}, Lcom/android/server/policy/VivoKeyActionObserver;->stopKeyDoubleClickDetection(Lcom/android/server/policy/IVivoKeyCallback;Landroid/view/KeyEvent;)V

    goto/16 :goto_0
.end method

.method public registerInterceptKeyListener(ILcom/android/server/policy/AVivoInterceptKeyCallback;)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "listener"    # Lcom/android/server/policy/AVivoInterceptKeyCallback;

    .prologue
    .line 53
    if-gtz p1, :cond_0

    .line 55
    const-string v0, "VivoInterceptKeyHandler"

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

    .line 65
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "VivoInterceptKeyHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerInterceptKeyListener: KeyCode="

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

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public unregisterInterceptKeyListener(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/policy/VivoInterceptKeyRegister;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 70
    return-void
.end method
