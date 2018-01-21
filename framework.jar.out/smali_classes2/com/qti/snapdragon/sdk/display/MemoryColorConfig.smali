.class public Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;
.super Ljava/lang/Object;
.source "MemoryColorConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;,
        Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;
    }
.end annotation


# instance fields
.field private hue:I

.field private intensity:I

.field protected isEnabled:Z

.field private memColorType:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

.field private saturation:I


# direct methods
.method public constructor <init>(Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;III)V
    .locals 1
    .param p1, "type"    # Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;
    .param p2, "hue"    # I
    .param p3, "saturation"    # I
    .param p4, "intensity"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->isEnabled:Z

    .line 79
    iput-object p1, p0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->memColorType:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    .line 80
    iput p2, p0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->hue:I

    .line 81
    iput p3, p0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->saturation:I

    .line 82
    iput p4, p0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->intensity:I

    .line 83
    return-void
.end method


# virtual methods
.method public getHue()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->hue:I

    return v0
.end method

.method public getIntensity()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->intensity:I

    return v0
.end method

.method public getMemoryColorType()Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->memColorType:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    return-object v0
.end method

.method public getSaturation()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->saturation:I

    return v0
.end method

.method public isMemoryColorEnabled()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->isEnabled:Z

    return v0
.end method
