.class public Lcom/android/server/policy/VivoFallbackKeyRegister;
.super Ljava/lang/Object;
.source "VivoFallbackKeyRegister.java"

# interfaces
.implements Lcom/android/server/policy/IVivoKeyFallbackListener;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoFallbackKeyHandler"


# instance fields
.field public mContext:Landroid/content/Context;

.field private mKeyActionObserver:Lcom/android/server/policy/VivoKeyActionObserver;

.field private mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/policy/IVivoKeyCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/VivoFallbackKeyRegister;->mListeners:Landroid/util/SparseArray;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/VivoFallbackKeyRegister;->mKeyActionObserver:Lcom/android/server/policy/VivoKeyActionObserver;

    .line 26
    iput-object p1, p0, Lcom/android/server/policy/VivoFallbackKeyRegister;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Lcom/android/server/policy/VivoKeyActionObserver;

    iget-object v1, p0, Lcom/android/server/policy/VivoFallbackKeyRegister;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/policy/VivoKeyActionObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/VivoFallbackKeyRegister;->mKeyActionObserver:Lcom/android/server/policy/VivoKeyActionObserver;

    .line 28
    return-void
.end method

.method private printf(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p1}, Lcom/android/server/policy/VivoWMPHook;->printf(Ljava/lang/String;)V

    .line 125
    return-void
.end method


# virtual methods
.method public getInterceptKeyListener(I)Lcom/android/server/policy/IVivoKeyCallback;
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/policy/VivoFallbackKeyRegister;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/IVivoKeyCallback;

    return-object v0
.end method

.method public onInterceptKeyFallback(Landroid/view/KeyEvent;Landroid/view/View;)I
    .locals 9
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/16 v6, -0x64

    .line 59
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 60
    .local v2, "keyCode":I
    iget-object v7, p0, Lcom/android/server/policy/VivoFallbackKeyRegister;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/IVivoKeyCallback;

    .line 61
    .local v3, "listener":Lcom/android/server/policy/IVivoKeyCallback;
    if-nez v3, :cond_1

    .line 63
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onInterceptKeyFallback will drop keyCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", and then forward, because of listener is null."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/policy/VivoFallbackKeyRegister;->printf(Ljava/lang/String;)V

    move v5, v6

    .line 119
    :cond_0
    :goto_0
    return v5

    .line 67
    :cond_1
    invoke-interface {v3, v2, p1}, Lcom/android/server/policy/IVivoKeyCallback;->onCheckForward(ILandroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 69
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onInterceptKeyFallback will drop keyCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", and then forward, because of onCheckForward."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/policy/VivoFallbackKeyRegister;->printf(Ljava/lang/String;)V

    move v5, v6

    .line 70
    goto :goto_0

    .line 73
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onInterceptKeyFallback will be invoked: keyCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/policy/VivoFallbackKeyRegister;->printf(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 75
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_4

    const/4 v1, 0x1

    .line 76
    .local v1, "down":Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    .line 77
    .local v4, "repeatCount":I
    const/16 v5, -0x64

    .line 79
    .local v5, "result":I
    if-eqz v1, :cond_6

    .line 81
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onKeyDown falback will be invoked: KeyCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/policy/VivoFallbackKeyRegister;->printf(Ljava/lang/String;)V

    .line 82
    invoke-interface {v3, v2, p1}, Lcom/android/server/policy/IVivoKeyCallback;->onKeyDown(ILandroid/view/KeyEvent;)I

    move-result v5

    .line 83
    if-ne v5, v6, :cond_0

    .line 88
    if-nez v4, :cond_5

    .line 90
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 119
    :cond_3
    :goto_2
    const/16 v5, -0x65

    goto :goto_0

    .line 75
    .end local v1    # "down":Z
    .end local v4    # "repeatCount":I
    .end local v5    # "result":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 92
    .restart local v1    # "down":Z
    .restart local v4    # "repeatCount":I
    .restart local v5    # "result":I
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onKeyLongPress will be invoked: KeyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/policy/VivoFallbackKeyRegister;->printf(Ljava/lang/String;)V

    .line 95
    invoke-interface {v3, v2, p1}, Lcom/android/server/policy/IVivoKeyCallback;->onKeyLongPress(ILandroid/view/KeyEvent;)V

    goto :goto_2

    .line 100
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onKeyUp falback will be invoked: KeyCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/policy/VivoFallbackKeyRegister;->printf(Ljava/lang/String;)V

    .line 101
    invoke-interface {v3, v2, p1}, Lcom/android/server/policy/IVivoKeyCallback;->onKeyUp(ILandroid/view/KeyEvent;)I

    move-result v5

    .line 102
    if-ne v5, v6, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 109
    if-nez v4, :cond_7

    .line 111
    iget-object v6, p0, Lcom/android/server/policy/VivoFallbackKeyRegister;->mKeyActionObserver:Lcom/android/server/policy/VivoKeyActionObserver;

    invoke-virtual {v6, v3, p1}, Lcom/android/server/policy/VivoKeyActionObserver;->startKeyDoubleClickDetection(Lcom/android/server/policy/IVivoKeyCallback;Landroid/view/KeyEvent;)V

    goto :goto_2

    .line 115
    :cond_7
    iget-object v6, p0, Lcom/android/server/policy/VivoFallbackKeyRegister;->mKeyActionObserver:Lcom/android/server/policy/VivoKeyActionObserver;

    invoke-virtual {v6, v3, p1}, Lcom/android/server/policy/VivoKeyActionObserver;->stopKeyDoubleClickDetection(Lcom/android/server/policy/IVivoKeyCallback;Landroid/view/KeyEvent;)V

    goto :goto_2
.end method

.method public registerInterceptKeyListener(ILcom/android/server/policy/IVivoKeyCallback;)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "listener"    # Lcom/android/server/policy/IVivoKeyCallback;

    .prologue
    .line 37
    if-gtz p1, :cond_0

    .line 39
    const-string v0, "VivoFallbackKeyHandler"

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

    .line 49
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/VivoFallbackKeyRegister;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    const-string v0, "VivoFallbackKeyHandler"

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

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/VivoFallbackKeyRegister;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public unregisterInterceptKeyListener(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/policy/VivoFallbackKeyRegister;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 54
    return-void
.end method
