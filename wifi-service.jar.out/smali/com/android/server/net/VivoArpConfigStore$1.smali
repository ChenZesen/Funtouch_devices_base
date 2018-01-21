.class Lcom/android/server/net/VivoArpConfigStore$1;
.super Ljava/lang/Object;
.source "VivoArpConfigStore.java"

# interfaces
.implements Lcom/android/server/net/DelayedDiskWrite$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/VivoArpConfigStore;->writeArpConfigurations(Ljava/lang/String;Landroid/util/SparseArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/VivoArpConfigStore;

.field final synthetic val$networks:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/android/server/net/VivoArpConfigStore;Landroid/util/SparseArray;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/server/net/VivoArpConfigStore$1;->this$0:Lcom/android/server/net/VivoArpConfigStore;

    iput-object p2, p0, Lcom/android/server/net/VivoArpConfigStore$1;->val$networks:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteCalled(Ljava/io/DataOutputStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/net/VivoArpConfigStore$1;->val$networks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/server/net/VivoArpConfigStore$1;->this$0:Lcom/android/server/net/VivoArpConfigStore;

    iget-object v2, p0, Lcom/android/server/net/VivoArpConfigStore$1;->val$networks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/VivoArpConfiguration;

    invoke-virtual {v2}, Landroid/net/VivoArpConfiguration;->getCurrentSSID()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/net/VivoArpConfigStore$1;->val$networks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/VivoArpConfiguration;

    invoke-virtual {v2}, Landroid/net/VivoArpConfiguration;->getDefaultGwMacAddress()[B

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/net/VivoArpConfigStore$1;->val$networks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/VivoArpConfiguration;

    invoke-virtual {v2}, Landroid/net/VivoArpConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v5

    iget-object v2, p0, Lcom/android/server/net/VivoArpConfigStore$1;->val$networks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/VivoArpConfiguration;

    invoke-virtual {v2}, Landroid/net/VivoArpConfiguration;->getVivoDhcpHistoryLeaseTime()J

    move-result-wide v6

    move-object v2, p1

    # invokes: Lcom/android/server/net/VivoArpConfigStore;->writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;[BLandroid/net/IpConfiguration;J)Z
    invoke-static/range {v1 .. v7}, Lcom/android/server/net/VivoArpConfigStore;->access$000(Lcom/android/server/net/VivoArpConfigStore;Ljava/io/DataOutputStream;Ljava/lang/String;[BLandroid/net/IpConfiguration;J)Z

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method
