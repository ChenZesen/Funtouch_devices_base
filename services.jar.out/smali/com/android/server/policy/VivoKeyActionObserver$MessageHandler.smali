.class Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;
.super Landroid/os/Handler;
.source "VivoKeyActionObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/VivoKeyActionObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# static fields
.field public static final MSG_LONG_PRESS:I = 0x2

.field public static final MSG_RESET_CLICK_COUNT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/VivoKeyActionObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/VivoKeyActionObserver;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;->this$0:Lcom/android/server/policy/VivoKeyActionObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/VivoKeyActionObserver;Lcom/android/server/policy/VivoKeyActionObserver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/VivoKeyActionObserver;
    .param p2, "x1"    # Lcom/android/server/policy/VivoKeyActionObserver$1;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;-><init>(Lcom/android/server/policy/VivoKeyActionObserver;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 153
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 175
    :goto_0
    return-void

    .line 157
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;->this$0:Lcom/android/server/policy/VivoKeyActionObserver;

    const-string v4, "Double-click-counting timeout"

    # invokes: Lcom/android/server/policy/VivoKeyActionObserver;->printf(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/policy/VivoKeyActionObserver;->access$100(Lcom/android/server/policy/VivoKeyActionObserver;Ljava/lang/String;)V

    .line 158
    iget-object v3, p0, Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;->this$0:Lcom/android/server/policy/VivoKeyActionObserver;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/policy/VivoKeyActionObserver;->resetKeyClickCount(I)V
    invoke-static {v3, v4}, Lcom/android/server/policy/VivoKeyActionObserver;->access$200(Lcom/android/server/policy/VivoKeyActionObserver;I)V

    goto :goto_0

    .line 163
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/policy/VivoKeyActionObserver$MessageHandler;->this$0:Lcom/android/server/policy/VivoKeyActionObserver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyLongPress will be invoked: KeyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/policy/VivoKeyActionObserver;->printf(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/policy/VivoKeyActionObserver;->access$100(Lcom/android/server/policy/VivoKeyActionObserver;Ljava/lang/String;)V

    .line 164
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/policy/VivoKeyActionObserver$MessageParam;

    .line 165
    .local v1, "param":Lcom/android/server/policy/VivoKeyActionObserver$MessageParam;
    iget-object v0, v1, Lcom/android/server/policy/VivoKeyActionObserver$MessageParam;->mKeyEvent:Landroid/view/KeyEvent;

    .line 166
    .local v0, "event":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    or-int/lit16 v6, v6, 0x80

    invoke-static {v0, v4, v5, v3, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v2

    .line 169
    .local v2, "repeatEvent":Landroid/view/KeyEvent;
    iget-object v3, v1, Lcom/android/server/policy/VivoKeyActionObserver$MessageParam;->mListener:Lcom/android/server/policy/IVivoKeyCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4, v2}, Lcom/android/server/policy/IVivoKeyCallback;->onKeyLongPress(ILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
