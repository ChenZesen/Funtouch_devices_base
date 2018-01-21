.class Lcom/android/internal/telephony/util/Alex$1;
.super Landroid/os/Handler;
.source "Alex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/util/Alex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/util/Alex;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/util/Alex;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/internal/telephony/util/Alex$1;->this$0:Lcom/android/internal/telephony/util/Alex;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/internal/telephony/util/Alex$1;->this$0:Lcom/android/internal/telephony/util/Alex;

    # invokes: Lcom/android/internal/telephony/util/Alex;->releaseLock()V
    invoke-static {v0}, Lcom/android/internal/telephony/util/Alex;->access$000(Lcom/android/internal/telephony/util/Alex;)V

    .line 24
    return-void
.end method
