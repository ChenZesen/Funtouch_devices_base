.class Lcom/android/server/policy/VivoGlobalActionsDialog$3;
.super Ljava/lang/Object;
.source "VivoGlobalActionsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/VivoGlobalActionsDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/server/policy/VivoGlobalActionsDialog;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$3;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$3;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->dismiss()V

    .line 458
    return-void
.end method
