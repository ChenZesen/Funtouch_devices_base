.class Lcom/android/server/location/GpsLocationProvider$GpsData;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsData"
.end annotation


# instance fields
.field public averageSnr:F

.field public count:I

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 1

    .prologue
    .line 2738
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsData;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2739
    const/high16 v0, -0x3d3a0000    # -99.0f

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsData;->averageSnr:F

    .line 2740
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsData;->count:I

    .line 2741
    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;Lcom/android/server/location/GpsLocationProvider$GpsData;)V
    .locals 1
    .param p2, "data"    # Lcom/android/server/location/GpsLocationProvider$GpsData;

    .prologue
    .line 2748
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsData;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2749
    iget v0, p2, Lcom/android/server/location/GpsLocationProvider$GpsData;->averageSnr:F

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsData;->averageSnr:F

    .line 2750
    iget v0, p2, Lcom/android/server/location/GpsLocationProvider$GpsData;->count:I

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsData;->count:I

    .line 2751
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 2744
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsData;->averageSnr:F

    .line 2745
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsData;->count:I

    .line 2746
    return-void
.end method
