.class Lcom/android/server/wifi/WifiAutoJoinController$3;
.super Ljava/lang/Object;
.source "WifiAutoJoinController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiAutoJoinController;->showSwitchNetworkDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiAutoJoinController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiAutoJoinController;)V
    .locals 0

    .prologue
    .line 2983
    iput-object p1, p0, Lcom/android/server/wifi/WifiAutoJoinController$3;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2986
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController$3;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    const-string v1, "showSwitchNetworkDialog user cancel"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 2987
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController$3;->this$0:Lcom/android/server/wifi/WifiAutoJoinController;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/wifi/WifiAutoJoinController;->dialogNotShowAgain:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->access$902(Lcom/android/server/wifi/WifiAutoJoinController;Z)Z

    .line 2988
    return-void
.end method
