.class Lcom/android/server/policy/GlobalActions$16$1;
.super Ljava/util/TimerTask;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$16;->reboot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$16;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$16;)V
    .locals 0

    .prologue
    .line 1471
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$16$1;->this$1:Lcom/android/server/policy/GlobalActions$16;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1474
    const-string v1, "GlobalActions"

    const-string v2, "REBOOT was handled."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$16$1;->this$1:Lcom/android/server/policy/GlobalActions$16;

    iget-object v1, v1, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$200(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1476
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "user choose"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 1477
    return-void
.end method
