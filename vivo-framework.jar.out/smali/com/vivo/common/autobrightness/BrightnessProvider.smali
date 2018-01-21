.class public abstract Lcom/vivo/common/autobrightness/BrightnessProvider;
.super Ljava/lang/Object;
.source "BrightnessProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBrightness(I)I
.end method

.method public abstract getBrightness(Lcom/vivo/common/autobrightness/AutobrightInfo;)I
.end method

.method public abstract notifyStateChanged(I)V
.end method

.method public abstract onBrihgtnessChangeObserved(I)I
.end method

.method public abstract setLightSensorEnable(Z)V
.end method
