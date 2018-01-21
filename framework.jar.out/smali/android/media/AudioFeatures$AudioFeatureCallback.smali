.class public Landroid/media/AudioFeatures$AudioFeatureCallback;
.super Ljava/lang/Object;
.source "AudioFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioFeatureCallback"
.end annotation


# instance fields
.field private mCb:Landroid/media/IAudioFeatureCallback;

.field private mComponent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mObj:Ljava/lang/Object;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg0"    # Ljava/lang/String;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p1, p0, Landroid/media/AudioFeatures$AudioFeatureCallback;->mContext:Landroid/content/Context;

    .line 293
    new-instance v0, Landroid/media/AudioFeatures$TagParameters;

    invoke-direct {v0, p2}, Landroid/media/AudioFeatures$TagParameters;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "tp":Landroid/media/AudioFeatures$TagParameters;
    invoke-virtual {v0}, Landroid/media/AudioFeatures$TagParameters;->tag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioFeatures$AudioFeatureCallback;->mTag:Ljava/lang/String;

    .line 295
    iget-object v1, p0, Landroid/media/AudioFeatures$AudioFeatureCallback;->mTag:Ljava/lang/String;

    if-nez v1, :cond_0

    # getter for: Landroid/media/AudioFeatures;->TAG_NONE:Ljava/lang/String;
    invoke-static {}, Landroid/media/AudioFeatures;->access$000()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioFeatures$AudioFeatureCallback;->mTag:Ljava/lang/String;

    .line 296
    :cond_0
    iput-object p3, p0, Landroid/media/AudioFeatures$AudioFeatureCallback;->mObj:Ljava/lang/Object;

    .line 298
    const-string v1, "component"

    invoke-virtual {v0, v1}, Landroid/media/AudioFeatures$TagParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioFeatures$AudioFeatureCallback;->mComponent:Ljava/lang/String;

    .line 299
    iget-object v1, p0, Landroid/media/AudioFeatures$AudioFeatureCallback;->mComponent:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 300
    iget-object v1, p0, Landroid/media/AudioFeatures$AudioFeatureCallback;->mObj:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 301
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioFeatures$AudioFeatureCallback;->mComponent:Ljava/lang/String;

    .line 302
    const-string v1, "AudioFeatures"

    const-string/jumbo v2, "set component without obj is useless"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_1
    iget-object v1, p0, Landroid/media/AudioFeatures$AudioFeatureCallback;->mComponent:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 307
    new-instance v1, Landroid/media/AudioFeatures$AudioFeatureCallback$1;

    invoke-direct {v1, p0}, Landroid/media/AudioFeatures$AudioFeatureCallback$1;-><init>(Landroid/media/AudioFeatures$AudioFeatureCallback;)V

    iput-object v1, p0, Landroid/media/AudioFeatures$AudioFeatureCallback;->mCb:Landroid/media/IAudioFeatureCallback;

    .line 320
    :cond_2
    return-void
.end method

.method static synthetic access$100(Landroid/media/AudioFeatures$AudioFeatureCallback;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioFeatures$AudioFeatureCallback;

    .prologue
    .line 276
    iget-object v0, p0, Landroid/media/AudioFeatures$AudioFeatureCallback;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/AudioFeatures$AudioFeatureCallback;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioFeatures$AudioFeatureCallback;

    .prologue
    .line 276
    iget-object v0, p0, Landroid/media/AudioFeatures$AudioFeatureCallback;->mObj:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected getCallback()Landroid/media/IAudioFeatureCallback;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Landroid/media/AudioFeatures$AudioFeatureCallback;->mCb:Landroid/media/IAudioFeatureCallback;

    return-object v0
.end method

.method public onCallback(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 333
    const/4 v0, 0x0

    return-object v0
.end method
