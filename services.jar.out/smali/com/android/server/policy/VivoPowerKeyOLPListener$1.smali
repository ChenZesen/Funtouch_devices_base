.class Lcom/android/server/policy/VivoPowerKeyOLPListener$1;
.super Ljava/lang/Object;
.source "VivoPowerKeyOLPListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/VivoPowerKeyOLPListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/VivoPowerKeyOLPListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/VivoPowerKeyOLPListener;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/server/policy/VivoPowerKeyOLPListener$1;->this$0:Lcom/android/server/policy/VivoPowerKeyOLPListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/policy/VivoPowerKeyOLPListener$1;->this$0:Lcom/android/server/policy/VivoPowerKeyOLPListener;

    # invokes: Lcom/android/server/policy/VivoPowerKeyOLPListener;->sendBroadcast()V
    invoke-static {v0}, Lcom/android/server/policy/VivoPowerKeyOLPListener;->access$000(Lcom/android/server/policy/VivoPowerKeyOLPListener;)V

    .line 46
    return-void
.end method
