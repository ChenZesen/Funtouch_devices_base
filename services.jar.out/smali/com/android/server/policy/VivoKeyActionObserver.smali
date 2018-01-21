.class public Lcom/android/server/policy/VivoKeyActionObserver;
.super Ljava/lang/Object;
.source "VivoKeyActionObserver.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/VivoKeyActionObserver$1;,
        Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;,
        Lcom/android/server/policy/VivoKeyActionObserver$MessageParam;
    }
.end annotation


# static fields
.field private static final DOUBLE_CLICK_TIMEOUT:J

.field private static final HARD_KEY_LONG_MENU_DELAY:J

.field private static final HARD_KEY_LONG_PRESS_DELAY:J

.field private static final TAG:Ljava/lang/String; = "VivoKeyActionObserver"

.field private static final VIRTUAL_KEY_LONG_PRESS_DELAY:J


# instance fields
.field private mClickCountArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field private mMessageHandler:Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/policy/VivoKeyActionObserver;->DOUBLE_CLICK_TIMEOUT:J

    .line 23
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/policy/VivoKeyActionObserver;->HARD_KEY_LONG_PRESS_DELAY:J

    .line 24
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/policy/VivoKeyActionObserver;->VIRTUAL_KEY_LONG_PRESS_DELAY:J

    .line 25
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/policy/VivoKeyActionObserver;->HARD_KEY_LONG_MENU_DELAY:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/android/server/policy/VivoKeyActionObserver;->mMessageHandler:Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/VivoKeyActionObserver;->mClickCountArray:Landroid/util/SparseArray;

    .line 32
    iput-object p1, p0, Lcom/android/server/policy/VivoKeyActionObserver;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;-><init>(Lcom/android/server/policy/VivoKeyActionObserver;Lcom/android/server/policy/VivoKeyActionObserver$1;)V

    iput-object v0, p0, Lcom/android/server/policy/VivoKeyActionObserver;->mMessageHandler:Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/VivoKeyActionObserver;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoKeyActionObserver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/server/policy/VivoKeyActionObserver;->printf(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/VivoKeyActionObserver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoKeyActionObserver;
    .param p1, "x1"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/server/policy/VivoKeyActionObserver;->resetKeyClickCount(I)V

    return-void
.end method

.method private cancelResetKeyClickCountAction()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/policy/VivoKeyActionObserver;->mMessageHandler:Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;->removeMessages(I)V

    .line 81
    return-void
.end method

.method private getKeyClickCount(I)I
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/server/policy/VivoKeyActionObserver;->mClickCountArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 86
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 88
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/android/server/policy/VivoKeyActionObserver;->mClickCountArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private increaseKeyClickCount(I)I
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/policy/VivoKeyActionObserver;->getKeyClickCount(I)I

    move-result v0

    .line 97
    .local v0, "count":I
    add-int/lit8 v0, v0, 0x1

    .line 98
    iget-object v1, p0, Lcom/android/server/policy/VivoKeyActionObserver;->mClickCountArray:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    return v0
.end method

.method private postResetKeyClickCountAction(Lcom/android/server/policy/IVivoKeyCallback;Landroid/view/KeyEvent;)V
    .locals 6
    .param p1, "listener"    # Lcom/android/server/policy/IVivoKeyCallback;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 70
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 71
    .local v0, "keyCode":I
    new-instance v2, Lcom/android/server/policy/VivoKeyActionObserver$MessageParam;

    invoke-direct {v2, p0}, Lcom/android/server/policy/VivoKeyActionObserver$MessageParam;-><init>(Lcom/android/server/policy/VivoKeyActionObserver;)V

    .line 72
    .local v2, "param":Lcom/android/server/policy/VivoKeyActionObserver$MessageParam;
    iput-object p2, v2, Lcom/android/server/policy/VivoKeyActionObserver$MessageParam;->mKeyEvent:Landroid/view/KeyEvent;

    .line 73
    iput-object p1, v2, Lcom/android/server/policy/VivoKeyActionObserver$MessageParam;->mListener:Lcom/android/server/policy/IVivoKeyCallback;

    .line 74
    iget-object v3, p0, Lcom/android/server/policy/VivoKeyActionObserver;->mMessageHandler:Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, v2}, Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 75
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/policy/VivoKeyActionObserver;->mMessageHandler:Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;

    sget-wide v4, Lcom/android/server/policy/VivoKeyActionObserver;->DOUBLE_CLICK_TIMEOUT:J

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 76
    return-void
.end method

.method private printf(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-static {p1}, Lcom/android/server/policy/VivoWMPHook;->printf(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method private resetKeyClickCount(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/policy/VivoKeyActionObserver;->mClickCountArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    return-void
.end method


# virtual methods
.method public cancelKeyLongPressAction()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/policy/VivoKeyActionObserver;->mMessageHandler:Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;->removeMessages(I)V

    .line 127
    return-void
.end method

.method public checkKeyLongPressAction()Z
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/policy/VivoKeyActionObserver;->mMessageHandler:Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public postKeyLongPressAction(Lcom/android/server/policy/IVivoKeyCallback;Landroid/view/KeyEvent;)V
    .locals 8
    .param p1, "listener"    # Lcom/android/server/policy/IVivoKeyCallback;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 109
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 110
    .local v2, "keyCode":I
    sget-wide v0, Lcom/android/server/policy/VivoKeyActionObserver;->HARD_KEY_LONG_PRESS_DELAY:J

    .line 111
    .local v0, "delayMillis":J
    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    .line 112
    sget-wide v0, Lcom/android/server/policy/VivoKeyActionObserver;->VIRTUAL_KEY_LONG_PRESS_DELAY:J

    .line 117
    :cond_0
    :goto_0
    new-instance v4, Lcom/android/server/policy/VivoKeyActionObserver$MessageParam;

    invoke-direct {v4, p0}, Lcom/android/server/policy/VivoKeyActionObserver$MessageParam;-><init>(Lcom/android/server/policy/VivoKeyActionObserver;)V

    .line 118
    .local v4, "param":Lcom/android/server/policy/VivoKeyActionObserver$MessageParam;
    iput-object p2, v4, Lcom/android/server/policy/VivoKeyActionObserver$MessageParam;->mKeyEvent:Landroid/view/KeyEvent;

    .line 119
    iput-object p1, v4, Lcom/android/server/policy/VivoKeyActionObserver$MessageParam;->mListener:Lcom/android/server/policy/IVivoKeyCallback;

    .line 120
    iget-object v5, p0, Lcom/android/server/policy/VivoKeyActionObserver;->mMessageHandler:Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7, v4}, Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 121
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/policy/VivoKeyActionObserver;->mMessageHandler:Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;

    invoke-virtual {v5, v3, v0, v1}, Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 122
    return-void

    .line 113
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "param":Lcom/android/server/policy/VivoKeyActionObserver$MessageParam;
    :cond_1
    const/16 v5, 0x52

    if-ne v2, v5, :cond_0

    .line 114
    sget-wide v0, Lcom/android/server/policy/VivoKeyActionObserver;->HARD_KEY_LONG_MENU_DELAY:J

    goto :goto_0
.end method

.method public startKeyDoubleClickDetection(Lcom/android/server/policy/IVivoKeyCallback;Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "listener"    # Lcom/android/server/policy/IVivoKeyCallback;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 38
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 39
    .local v1, "keyCode":I
    invoke-direct {p0, v1}, Lcom/android/server/policy/VivoKeyActionObserver;->increaseKeyClickCount(I)I

    move-result v0

    .line 41
    .local v0, "clickCount":I
    invoke-direct {p0}, Lcom/android/server/policy/VivoKeyActionObserver;->cancelResetKeyClickCountAction()V

    .line 43
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/VivoKeyActionObserver;->postResetKeyClickCountAction(Lcom/android/server/policy/IVivoKeyCallback;Landroid/view/KeyEvent;)V

    .line 59
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 49
    invoke-direct {p0, v1}, Lcom/android/server/policy/VivoKeyActionObserver;->resetKeyClickCount(I)V

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDoubleClick will be invoked: KeyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/policy/VivoKeyActionObserver;->printf(Ljava/lang/String;)V

    .line 52
    invoke-interface {p1, v1, p2}, Lcom/android/server/policy/IVivoKeyCallback;->onKeyDoubleClick(ILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 56
    :cond_1
    const-string v2, "VivoKeyActionObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: This should not happen, clickCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-direct {p0, v1}, Lcom/android/server/policy/VivoKeyActionObserver;->resetKeyClickCount(I)V

    goto :goto_0
.end method

.method public stopKeyDoubleClickDetection(Lcom/android/server/policy/IVivoKeyCallback;Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/policy/IVivoKeyCallback;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 63
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 64
    .local v0, "keyCode":I
    invoke-direct {p0, v0}, Lcom/android/server/policy/VivoKeyActionObserver;->resetKeyClickCount(I)V

    .line 65
    invoke-direct {p0}, Lcom/android/server/policy/VivoKeyActionObserver;->cancelResetKeyClickCountAction()V

    .line 66
    return-void
.end method
