.class final Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;
.super Ljava/lang/Object;
.source "BrightnessProviderMemory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/BrightnessProviderMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BrightnessPair"
.end annotation


# instance fields
.field public brightness:I

.field public id:I

.field final synthetic this$0:Lcom/vivo/common/autobrightness/BrightnessProviderMemory;


# direct methods
.method public constructor <init>(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;II)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "brightness"    # I

    .prologue
    .line 138
    iput-object p1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->this$0:Lcom/vivo/common/autobrightness/BrightnessProviderMemory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->id:I

    .line 140
    iput p3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$BrightnessPair;->brightness:I

    .line 141
    return-void
.end method
