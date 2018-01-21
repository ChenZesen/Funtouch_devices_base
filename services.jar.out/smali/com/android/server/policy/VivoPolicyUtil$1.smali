.class Lcom/android/server/policy/VivoPolicyUtil$1;
.super Landroid/content/BroadcastReceiver;
.source "VivoPolicyUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/VivoPolicyUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/VivoPolicyUtil;


# direct methods
.method constructor <init>(Lcom/android/server/policy/VivoPolicyUtil;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/policy/VivoPolicyUtil$1;->this$0:Lcom/android/server/policy/VivoPolicyUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.vivo.bbklog.action.CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const-string v1, "persist.sys.log.ctrl"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/policy/VivoPolicyUtil;->IS_LOG_OPEN:Z

    .line 108
    iget-object v1, p0, Lcom/android/server/policy/VivoPolicyUtil$1;->this$0:Lcom/android/server/policy/VivoPolicyUtil;

    # invokes: Lcom/android/server/policy/VivoPolicyUtil;->verifyVivoLogState(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/policy/VivoPolicyUtil;->access$000(Lcom/android/server/policy/VivoPolicyUtil;Landroid/content/Intent;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const-string v1, "com.mediatek.mtklogger.intent.action.LOG_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const-string v1, "persist.sys.log.ctrl"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/policy/VivoPolicyUtil;->IS_LOG_OPEN:Z

    .line 113
    iget-object v1, p0, Lcom/android/server/policy/VivoPolicyUtil$1;->this$0:Lcom/android/server/policy/VivoPolicyUtil;

    # invokes: Lcom/android/server/policy/VivoPolicyUtil;->verifyMtkLogState(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/policy/VivoPolicyUtil;->access$100(Lcom/android/server/policy/VivoPolicyUtil;Landroid/content/Intent;)V

    goto :goto_0
.end method
