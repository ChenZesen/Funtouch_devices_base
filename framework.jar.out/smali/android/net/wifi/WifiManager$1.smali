.class Landroid/net/wifi/WifiManager$1;
.super Ljava/lang/Object;
.source "WifiManager.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiManager;->addNewNetwork(Ljava/util/List;Landroid/net/wifi/WifiManager$ActionListenerProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiManager;

.field final synthetic val$listener:Landroid/net/wifi/WifiManager$ActionListenerProxy;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiManager$ActionListenerProxy;)V
    .locals 0

    .prologue
    .line 2379
    iput-object p1, p0, Landroid/net/wifi/WifiManager$1;->this$0:Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$1;->val$listener:Landroid/net/wifi/WifiManager$ActionListenerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 2384
    iget-object v0, p0, Landroid/net/wifi/WifiManager$1;->val$listener:Landroid/net/wifi/WifiManager$ActionListenerProxy;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$ActionListenerProxy;->onFailure(I)V

    .line 2385
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 2381
    iget-object v0, p0, Landroid/net/wifi/WifiManager$1;->val$listener:Landroid/net/wifi/WifiManager$ActionListenerProxy;

    invoke-interface {v0}, Landroid/net/wifi/WifiManager$ActionListenerProxy;->onSuccess()V

    .line 2382
    return-void
.end method
