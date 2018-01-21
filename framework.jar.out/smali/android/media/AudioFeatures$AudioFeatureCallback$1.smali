.class Landroid/media/AudioFeatures$AudioFeatureCallback$1;
.super Landroid/media/IAudioFeatureCallback$Stub;
.source "AudioFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioFeatures$AudioFeatureCallback;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioFeatures$AudioFeatureCallback;


# direct methods
.method constructor <init>(Landroid/media/AudioFeatures$AudioFeatureCallback;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Landroid/media/AudioFeatures$AudioFeatureCallback$1;->this$0:Landroid/media/AudioFeatures$AudioFeatureCallback;

    invoke-direct {p0}, Landroid/media/IAudioFeatureCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 310
    new-instance v0, Landroid/media/AudioFeatures$TagParameters;

    invoke-direct {v0, p1}, Landroid/media/AudioFeatures$TagParameters;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, "tp":Landroid/media/AudioFeatures$TagParameters;
    iget-object v1, p0, Landroid/media/AudioFeatures$AudioFeatureCallback$1;->this$0:Landroid/media/AudioFeatures$AudioFeatureCallback;

    # getter for: Landroid/media/AudioFeatures$AudioFeatureCallback;->mTag:Ljava/lang/String;
    invoke-static {v1}, Landroid/media/AudioFeatures$AudioFeatureCallback;->access$100(Landroid/media/AudioFeatures$AudioFeatureCallback;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/AudioFeatures$TagParameters;->tag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Landroid/media/AudioFeatures$AudioFeatureCallback$1;->this$0:Landroid/media/AudioFeatures$AudioFeatureCallback;

    iget-object v2, p0, Landroid/media/AudioFeatures$AudioFeatureCallback$1;->this$0:Landroid/media/AudioFeatures$AudioFeatureCallback;

    # getter for: Landroid/media/AudioFeatures$AudioFeatureCallback;->mObj:Ljava/lang/Object;
    invoke-static {v2}, Landroid/media/AudioFeatures$AudioFeatureCallback;->access$200(Landroid/media/AudioFeatures$AudioFeatureCallback;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/media/AudioFeatures$AudioFeatureCallback;->onCallback(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 315
    :goto_0
    return-object v1

    .line 314
    :cond_0
    const-string/jumbo v1, "return"

    const-string v2, "ERROR"

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioFeatures$TagParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Landroid/media/AudioFeatures$TagParameters;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
