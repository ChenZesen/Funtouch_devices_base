.class final Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;
.super Ljava/lang/Object;
.source "BrightnessProviderMemory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/BrightnessProviderMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LineInfo"
.end annotation


# instance fields
.field public b:D

.field public k:D

.field final synthetic this$0:Lcom/vivo/common/autobrightness/BrightnessProviderMemory;


# direct methods
.method public constructor <init>(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 111
    iput-object p1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;->this$0:Lcom/vivo/common/autobrightness/BrightnessProviderMemory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-wide v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;->k:D

    .line 113
    iput-wide v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;->b:D

    .line 114
    return-void
.end method


# virtual methods
.method public calculateKandB(Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;
    .locals 6
    .param p1, "a"    # Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;
    .param p2, "b"    # Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;

    .prologue
    .line 118
    const-wide/16 v0, 0x0

    iget v2, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    iget v2, p2, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    iget v2, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    iget v3, p2, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;->k:D

    .line 119
    iget v0, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;->k:D

    iget v4, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;->b:D

    .line 120
    return-object p0
.end method

.method public getYValue(I)I
    .locals 4
    .param p1, "x"    # I

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;->k:D

    int-to-double v2, p1

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;->b:D

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public setPassPoint(Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;)V
    .locals 6
    .param p1, "a"    # Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;
    .param p2, "b"    # Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;

    .prologue
    .line 123
    const-wide/16 v0, 0x0

    iget v2, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    iget v2, p2, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    iget v2, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    iget v3, p2, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;->k:D

    .line 124
    iget v0, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;->k:D

    iget v4, p1, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;->b:D

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;->k:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$LineInfo;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
