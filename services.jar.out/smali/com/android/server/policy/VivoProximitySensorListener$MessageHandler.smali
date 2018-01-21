.class final Lcom/android/server/policy/VivoProximitySensorListener$MessageHandler;
.super Landroid/os/Handler;
.source "VivoProximitySensorListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/VivoProximitySensorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/VivoProximitySensorListener;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/VivoProximitySensorListener;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/server/policy/VivoProximitySensorListener$MessageHandler;->this$0:Lcom/android/server/policy/VivoProximitySensorListener;

    .line 205
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 206
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 211
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 214
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/VivoProximitySensorListener$MessageHandler;->this$0:Lcom/android/server/policy/VivoProximitySensorListener;

    # invokes: Lcom/android/server/policy/VivoProximitySensorListener;->debounceProximitySensor()V
    invoke-static {v0}, Lcom/android/server/policy/VivoProximitySensorListener;->access$400(Lcom/android/server/policy/VivoProximitySensorListener;)V

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
