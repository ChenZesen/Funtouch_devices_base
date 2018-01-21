.class Lcom/vivo/services/motion/ProximityAcrossService$SensorData;
.super Ljava/lang/Object;
.source "ProximityAcrossService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/ProximityAcrossService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorData"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/ProximityAcrossService;

.field public timestamp:J

.field public final values:[F


# direct methods
.method constructor <init>(Lcom/vivo/services/motion/ProximityAcrossService;I)V
    .locals 1
    .param p2, "size"    # I

    .prologue
    .line 87
    iput-object p1, p0, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->this$0:Lcom/vivo/services/motion/ProximityAcrossService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-array v0, p2, [F

    iput-object v0, p0, Lcom/vivo/services/motion/ProximityAcrossService$SensorData;->values:[F

    .line 89
    return-void
.end method
