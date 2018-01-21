.class final Lcom/android/internal/os/VivoStats$NoteHandler;
.super Landroid/os/Handler;
.source "VivoStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/VivoStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NoteHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/VivoStats;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/VivoStats;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/internal/os/VivoStats$NoteHandler;->this$0:Lcom/android/internal/os/VivoStats;

    .line 229
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 230
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x674

    const/4 v1, 0x1

    .line 234
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 273
    iget-object v0, p0, Lcom/android/internal/os/VivoStats$NoteHandler;->this$0:Lcom/android/internal/os/VivoStats;

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/internal/os/VivoStats;->notePEM(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/VivoStats;->access$800(Lcom/android/internal/os/VivoStats;III)V

    .line 274
    # getter for: Lcom/android/internal/os/VivoStats;->mTState:Z
    invoke-static {}, Lcom/android/internal/os/VivoStats;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/VivoStats$NoteHandler;->this$0:Lcom/android/internal/os/VivoStats;

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/internal/os/VivoStats;->toTState(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/VivoStats;->access$1200(Lcom/android/internal/os/VivoStats;III)V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 236
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/os/VivoStats$NoteHandler;->this$0:Lcom/android/internal/os/VivoStats;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/android/internal/os/VivoStats;->notePEM(ILjava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/android/internal/os/VivoStats;->access$000(Lcom/android/internal/os/VivoStats;ILjava/lang/String;)V

    goto :goto_0

    .line 239
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/os/VivoStats$NoteHandler;->this$0:Lcom/android/internal/os/VivoStats;

    # invokes: Lcom/android/internal/os/VivoStats;->connectPEM()V
    invoke-static {v0}, Lcom/android/internal/os/VivoStats;->access$100(Lcom/android/internal/os/VivoStats;)V

    goto :goto_0

    .line 242
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    # setter for: Lcom/android/internal/os/VivoStats;->mRemote:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/os/VivoStats;->access$202(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 243
    # getter for: Lcom/android/internal/os/VivoStats;->mTState:Z
    invoke-static {}, Lcom/android/internal/os/VivoStats;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/VivoStats$NoteHandler;->this$0:Lcom/android/internal/os/VivoStats;

    # invokes: Lcom/android/internal/os/VivoStats;->noteTState()V
    invoke-static {v0}, Lcom/android/internal/os/VivoStats;->access$400(Lcom/android/internal/os/VivoStats;)V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/VivoStats$NoteHandler;->this$0:Lcom/android/internal/os/VivoStats;

    # invokes: Lcom/android/internal/os/VivoStats;->noteAllState()V
    invoke-static {v0}, Lcom/android/internal/os/VivoStats;->access$500(Lcom/android/internal/os/VivoStats;)V

    .line 245
    const/4 v0, 0x0

    # setter for: Lcom/android/internal/os/VivoStats;->mTState:Z
    invoke-static {v0}, Lcom/android/internal/os/VivoStats;->access$302(Z)Z

    goto :goto_0

    .line 248
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_3

    .line 249
    # getter for: Lcom/android/internal/os/VivoStats;->mRemote:Landroid/os/IBinder;
    invoke-static {}, Lcom/android/internal/os/VivoStats;->access$200()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    .line 250
    # getter for: Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;
    invoke-static {}, Lcom/android/internal/os/VivoStats;->access$600()Lcom/android/internal/os/VivoStats$NoteHandler;

    move-result-object v0

    const/16 v1, 0x2711

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/VivoStats$NoteHandler;->this$0:Lcom/android/internal/os/VivoStats;

    # invokes: Lcom/android/internal/os/VivoStats;->getAllState()V
    invoke-static {v0}, Lcom/android/internal/os/VivoStats;->access$700(Lcom/android/internal/os/VivoStats;)V

    .line 254
    # setter for: Lcom/android/internal/os/VivoStats;->mTState:Z
    invoke-static {v1}, Lcom/android/internal/os/VivoStats;->access$302(Z)Z

    .line 255
    iget-object v0, p0, Lcom/android/internal/os/VivoStats$NoteHandler;->this$0:Lcom/android/internal/os/VivoStats;

    const/16 v1, 0x2713

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/internal/os/VivoStats;->notePEM(III)V
    invoke-static {v0, v1, v3, v2}, Lcom/android/internal/os/VivoStats;->access$800(Lcom/android/internal/os/VivoStats;III)V

    .line 256
    iget-object v0, p0, Lcom/android/internal/os/VivoStats$NoteHandler;->this$0:Lcom/android/internal/os/VivoStats;

    # invokes: Lcom/android/internal/os/VivoStats;->disconnectPEM()V
    invoke-static {v0}, Lcom/android/internal/os/VivoStats;->access$900(Lcom/android/internal/os/VivoStats;)V

    goto :goto_0

    .line 257
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x676

    if-ne v0, v1, :cond_4

    .line 258
    iget-object v0, p0, Lcom/android/internal/os/VivoStats$NoteHandler;->this$0:Lcom/android/internal/os/VivoStats;

    # getter for: Lcom/android/internal/os/VivoStats;->mRemote:Landroid/os/IBinder;
    invoke-static {}, Lcom/android/internal/os/VivoStats;->access$200()Landroid/os/IBinder;

    move-result-object v1

    # invokes: Lcom/android/internal/os/VivoStats;->getConfig(Landroid/os/IBinder;)Z
    invoke-static {v0, v1}, Lcom/android/internal/os/VivoStats;->access$1000(Lcom/android/internal/os/VivoStats;Landroid/os/IBinder;)Z

    goto :goto_0

    .line 259
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x677

    if-ne v0, v1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/internal/os/VivoStats$NoteHandler;->this$0:Lcom/android/internal/os/VivoStats;

    # invokes: Lcom/android/internal/os/VivoStats;->noteAllState()V
    invoke-static {v0}, Lcom/android/internal/os/VivoStats;->access$500(Lcom/android/internal/os/VivoStats;)V

    goto :goto_0

    .line 264
    :sswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_6

    .line 265
    # getter for: Lcom/android/internal/os/VivoStats;->mResList:Landroid/util/SparseArray;
    invoke-static {}, Lcom/android/internal/os/VivoStats;->access$1100()Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_5

    # getter for: Lcom/android/internal/os/VivoStats;->mResList:Landroid/util/SparseArray;
    invoke-static {}, Lcom/android/internal/os/VivoStats;->access$1100()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 266
    :cond_5
    sget v0, Lcom/android/internal/os/VivoStats;->densityVer:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/os/VivoStats;->densityVer:I

    .line 267
    const-string v0, "VivoStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop update densityVer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/os/VivoStats;->densityVer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 269
    :cond_6
    iget-object v0, p0, Lcom/android/internal/os/VivoStats$NoteHandler;->this$0:Lcom/android/internal/os/VivoStats;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/VivoStats;->getListRemote(I)V

    goto/16 :goto_0

    .line 234
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x13 -> :sswitch_4
        0x2710 -> :sswitch_2
        0x2711 -> :sswitch_1
        0x2713 -> :sswitch_3
    .end sparse-switch
.end method
