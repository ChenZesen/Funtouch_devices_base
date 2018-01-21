.class public Lcom/vivo/services/motion/gesture/util/Angle;
.super Ljava/lang/Object;
.source "Angle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/motion/gesture/util/Angle$1;
    }
.end annotation


# static fields
.field public static final ZERO:Lcom/vivo/services/motion/gesture/util/Angle;


# instance fields
.field private final pitch:F

.field private final roll:F

.field private final yaw:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    new-instance v0, Lcom/vivo/services/motion/gesture/util/Angle;

    invoke-direct {v0, v1, v1, v1}, Lcom/vivo/services/motion/gesture/util/Angle;-><init>(FFF)V

    sput-object v0, Lcom/vivo/services/motion/gesture/util/Angle;->ZERO:Lcom/vivo/services/motion/gesture/util/Angle;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "paramFloat1"    # F
    .param p2, "paramFloat2"    # F
    .param p3, "paramFloat3"    # F

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/vivo/services/motion/gesture/util/Angle;->yaw:F

    .line 13
    iput p2, p0, Lcom/vivo/services/motion/gesture/util/Angle;->pitch:F

    .line 14
    iput p3, p0, Lcom/vivo/services/motion/gesture/util/Angle;->roll:F

    .line 15
    return-void
.end method


# virtual methods
.method public asArray()[F
    .locals 3

    .prologue
    .line 19
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 20
    .local v0, "arrayOfFloat":[F
    const/4 v1, 0x0

    iget v2, p0, Lcom/vivo/services/motion/gesture/util/Angle;->yaw:F

    aput v2, v0, v1

    .line 21
    const/4 v1, 0x1

    iget v2, p0, Lcom/vivo/services/motion/gesture/util/Angle;->pitch:F

    aput v2, v0, v1

    .line 22
    const/4 v1, 0x2

    iget v2, p0, Lcom/vivo/services/motion/gesture/util/Angle;->roll:F

    aput v2, v0, v1

    .line 23
    return-object v0
.end method

.method public getAngleByAxis(Lcom/vivo/services/motion/gesture/util/RotationAxis;)F
    .locals 2
    .param p1, "paramRotationAxis"    # Lcom/vivo/services/motion/gesture/util/RotationAxis;

    .prologue
    .line 28
    sget-object v0, Lcom/vivo/services/motion/gesture/util/Angle$1;->$SwitchMap$com$vivo$services$motion$gesture$util$RotationAxis:[I

    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/RotationAxis;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 37
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 31
    :pswitch_0
    iget v0, p0, Lcom/vivo/services/motion/gesture/util/Angle;->yaw:F

    goto :goto_0

    .line 33
    :pswitch_1
    iget v0, p0, Lcom/vivo/services/motion/gesture/util/Angle;->pitch:F

    goto :goto_0

    .line 35
    :pswitch_2
    iget v0, p0, Lcom/vivo/services/motion/gesture/util/Angle;->roll:F

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPitch()F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/vivo/services/motion/gesture/util/Angle;->pitch:F

    return v0
.end method

.method public getRoll()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/vivo/services/motion/gesture/util/Angle;->roll:F

    return v0
.end method

.method public getYaw()F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/vivo/services/motion/gesture/util/Angle;->yaw:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Angle [yaw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/services/motion/gesture/util/Angle;->yaw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/services/motion/gesture/util/Angle;->pitch:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roll: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/services/motion/gesture/util/Angle;->roll:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
