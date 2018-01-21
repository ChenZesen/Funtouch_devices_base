.class Landroid/net/arp/VivoArpPeer$1;
.super Ljava/lang/Thread;
.source "VivoArpPeer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/arp/VivoArpPeer;->writeArpConfigurations(Landroid/util/SparseArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/arp/VivoArpPeer;

.field final synthetic val$networks:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Landroid/net/arp/VivoArpPeer;Landroid/util/SparseArray;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/arp/VivoArpPeer$1;->this$0:Landroid/net/arp/VivoArpPeer;

    iput-object p2, p0, Landroid/net/arp/VivoArpPeer$1;->val$networks:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Landroid/net/arp/VivoArpPeer$1;->this$0:Landroid/net/arp/VivoArpPeer;

    # getter for: Landroid/net/arp/VivoArpPeer;->mVivoArpConfigStore:Lcom/android/server/net/VivoArpConfigStore;
    invoke-static {v0}, Landroid/net/arp/VivoArpPeer;->access$100(Landroid/net/arp/VivoArpPeer;)Lcom/android/server/net/VivoArpConfigStore;

    move-result-object v0

    # getter for: Landroid/net/arp/VivoArpPeer;->arpConfigFile:Ljava/lang/String;
    invoke-static {}, Landroid/net/arp/VivoArpPeer;->access$000()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/arp/VivoArpPeer$1;->val$networks:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/VivoArpConfigStore;->writeArpConfigurations(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 146
    return-void
.end method
