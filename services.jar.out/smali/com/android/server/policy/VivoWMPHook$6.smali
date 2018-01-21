.class Lcom/android/server/policy/VivoWMPHook$6;
.super Ljava/lang/Object;
.source "VivoWMPHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/VivoWMPHook;->runShell()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/VivoWMPHook;


# direct methods
.method constructor <init>(Lcom/android/server/policy/VivoWMPHook;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/server/policy/VivoWMPHook$6;->this$0:Lcom/android/server/policy/VivoWMPHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook$6;->this$0:Lcom/android/server/policy/VivoWMPHook;

    iget-object v0, v0, Lcom/android/server/policy/VivoWMPHook;->mContext:Landroid/content/Context;

    const-string v1, "Already saved!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 476
    return-void
.end method
