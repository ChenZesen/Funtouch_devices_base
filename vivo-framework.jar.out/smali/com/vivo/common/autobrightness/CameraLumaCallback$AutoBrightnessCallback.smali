.class public interface abstract Lcom/vivo/common/autobrightness/CameraLumaCallback$AutoBrightnessCallback;
.super Ljava/lang/Object;
.source "CameraLumaCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/CameraLumaCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AutoBrightnessCallback"
.end annotation


# virtual methods
.method public abstract getCurrentAutoBrightness()I
.end method

.method public abstract onNeedCancelBrightness(I)V
.end method

.method public abstract onNewScreenValue(Lcom/vivo/common/autobrightness/AutobrightInfo;)V
.end method
