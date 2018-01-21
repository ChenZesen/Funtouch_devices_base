.class final Lcom/vivo/common/autobrightness/BrightnessProviderMemory$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessProviderMemory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/BrightnessProviderMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/BrightnessProviderMemory;


# direct methods
.method public constructor <init>(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$SettingsObserver;->this$0:Lcom/vivo/common/autobrightness/BrightnessProviderMemory;

    .line 1126
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1127
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1131
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$SettingsObserver;->this$0:Lcom/vivo/common/autobrightness/BrightnessProviderMemory;

    # getter for: Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->access$100(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1132
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 1133
    .local v1, "param":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1134
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$SettingsObserver;->this$0:Lcom/vivo/common/autobrightness/BrightnessProviderMemory;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingsObserver onChange selfChange="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->access$200(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;Ljava/lang/String;)V

    .line 1137
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$SettingsObserver;->this$0:Lcom/vivo/common/autobrightness/BrightnessProviderMemory;

    # invokes: Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->handleSettingsChangedLocked(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->access$300(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;Ljava/lang/String;)V

    .line 1138
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$SettingsObserver;->this$0:Lcom/vivo/common/autobrightness/BrightnessProviderMemory;

    const-string v4, "SettingsObserver out call handleSettingsChangedLocked"

    # invokes: Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->log(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->access$200(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;Ljava/lang/String;)V

    .line 1139
    monitor-exit v3

    .line 1141
    return-void

    .line 1139
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "param":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
