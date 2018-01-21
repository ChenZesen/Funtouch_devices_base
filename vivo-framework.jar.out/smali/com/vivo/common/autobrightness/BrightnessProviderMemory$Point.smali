.class final Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;
.super Ljava/lang/Object;
.source "BrightnessProviderMemory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/BrightnessProviderMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Point"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/BrightnessProviderMemory;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    iput-object p1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->this$0:Lcom/vivo/common/autobrightness/BrightnessProviderMemory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    .line 83
    iput v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;II)V
    .locals 0
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 85
    iput-object p1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->this$0:Lcom/vivo/common/autobrightness/BrightnessProviderMemory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    .line 87
    iput p3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    .line 88
    return-void
.end method


# virtual methods
.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    .line 95
    return-void
.end method

.method public setXY(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    .line 91
    iput p2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    .line 92
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
