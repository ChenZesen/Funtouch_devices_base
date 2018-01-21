.class Lcom/android/server/policy/key/VivoSmartwakeCharContainer$1;
.super Landroid/os/Handler;
.source "VivoSmartwakeCharContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/key/VivoSmartwakeCharContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/key/VivoSmartwakeCharContainer;


# direct methods
.method constructor <init>(Lcom/android/server/policy/key/VivoSmartwakeCharContainer;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeCharContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeCharContainer$1;->this$0:Lcom/android/server/policy/key/VivoSmartwakeCharContainer;

    # invokes: Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->disappearAnimation()V
    invoke-static {v0}, Lcom/android/server/policy/key/VivoSmartwakeCharContainer;->access$000(Lcom/android/server/policy/key/VivoSmartwakeCharContainer;)V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
