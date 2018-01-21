.class public Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;
.super Ljava/lang/Object;
.source "BootBrightnessConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/BootBrightnessConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BootBrightnessList"
.end annotation


# instance fields
.field public Brightness:I

.field public model:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;
    .param p2, "Brightness"    # I

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;->model:Ljava/lang/String;

    .line 87
    iput p2, p0, Lcom/vivo/common/autobrightness/BootBrightnessConfig$BootBrightnessList;->Brightness:I

    .line 88
    return-void
.end method
