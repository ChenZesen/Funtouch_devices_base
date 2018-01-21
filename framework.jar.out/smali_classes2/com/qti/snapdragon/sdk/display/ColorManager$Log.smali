.class public Lcom/qti/snapdragon/sdk/display/ColorManager$Log;
.super Ljava/lang/Object;
.source "ColorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/ColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Log"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 2657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2671
    # getter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->VERBOSE_ENABLED:Z
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2672
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    :cond_0
    return-void
.end method

.method protected static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2678
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    return-void
.end method

.method protected static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2664
    # getter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->VERBOSE_ENABLED:Z
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2665
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    :cond_0
    return-void
.end method

.method protected static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2683
    # getter for: Lcom/qti/snapdragon/sdk/display/ColorManager;->VERBOSE_ENABLED:Z
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2684
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    :cond_0
    return-void
.end method
