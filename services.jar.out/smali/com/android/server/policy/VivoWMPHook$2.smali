.class Lcom/android/server/policy/VivoWMPHook$2;
.super Ljava/lang/Object;
.source "VivoWMPHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/VivoWMPHook;
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
    .line 122
    iput-object p1, p0, Lcom/android/server/policy/VivoWMPHook$2;->this$0:Lcom/android/server/policy/VivoWMPHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "VivoWMPHook"

    const-string v1, "VolumeKey reset click times because overtime."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/android/server/policy/VivoWMPHook$2;->this$0:Lcom/android/server/policy/VivoWMPHook;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/VivoWMPHook;->mClickCount:I
    invoke-static {v0, v1}, Lcom/android/server/policy/VivoWMPHook;->access$202(Lcom/android/server/policy/VivoWMPHook;I)I

    .line 128
    return-void
.end method
