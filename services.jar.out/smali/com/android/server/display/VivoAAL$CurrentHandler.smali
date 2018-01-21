.class Lcom/android/server/display/VivoAAL$CurrentHandler;
.super Landroid/os/Handler;
.source "VivoAAL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/VivoAAL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/VivoAAL;


# direct methods
.method public constructor <init>(Lcom/android/server/display/VivoAAL;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/server/display/VivoAAL$CurrentHandler;->this$0:Lcom/android/server/display/VivoAAL;

    .line 201
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 202
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 206
    const-string v0, "VivoAAL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/display/VivoAAL;->msgToString(I)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/display/VivoAAL;->access$400(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 210
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/VivoAAL$CurrentHandler;->this$0:Lcom/android/server/display/VivoAAL;

    iget-object v1, p0, Lcom/android/server/display/VivoAAL$CurrentHandler;->this$0:Lcom/android/server/display/VivoAAL;

    # getter for: Lcom/android/server/display/VivoAAL;->mNear:Z
    invoke-static {v1}, Lcom/android/server/display/VivoAAL;->access$200(Lcom/android/server/display/VivoAAL;)Z

    move-result v1

    # invokes: Lcom/android/server/display/VivoAAL;->updatePsensorStatus(Z)V
    invoke-static {v0, v1}, Lcom/android/server/display/VivoAAL;->access$500(Lcom/android/server/display/VivoAAL;Z)V

    goto :goto_0

    .line 213
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/VivoAAL$CurrentHandler;->this$0:Lcom/android/server/display/VivoAAL;

    # getter for: Lcom/android/server/display/VivoAAL;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/VivoAAL;->access$600(Lcom/android/server/display/VivoAAL;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/VivoAAL$CurrentHandler;->this$0:Lcom/android/server/display/VivoAAL;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/display/VivoAAL;->setPsensorStatus(Z)Z
    invoke-static {v0, v2}, Lcom/android/server/display/VivoAAL;->access$700(Lcom/android/server/display/VivoAAL;Z)Z

    .line 215
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 218
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/VivoAAL$CurrentHandler;->this$0:Lcom/android/server/display/VivoAAL;

    # getter for: Lcom/android/server/display/VivoAAL;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/VivoAAL;->access$600(Lcom/android/server/display/VivoAAL;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 219
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/VivoAAL$CurrentHandler;->this$0:Lcom/android/server/display/VivoAAL;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/display/VivoAAL;->setPsensorStatus(Z)Z
    invoke-static {v0, v2}, Lcom/android/server/display/VivoAAL;->access$700(Lcom/android/server/display/VivoAAL;Z)Z

    .line 220
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
