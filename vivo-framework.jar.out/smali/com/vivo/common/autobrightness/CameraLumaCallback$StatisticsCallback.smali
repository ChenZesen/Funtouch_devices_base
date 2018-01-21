.class public interface abstract Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;
.super Ljava/lang/Object;
.source "CameraLumaCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/CameraLumaCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatisticsCallback"
.end annotation


# virtual methods
.method public abstract onGetAutobrightInfo(Lcom/vivo/common/autobrightness/AutobrightInfo;)Z
.end method

.method public abstract onGetLightDegree()I
.end method

.method public abstract onGetLumaInfo(Lcom/vivo/common/autobrightness/LumaInfo;)V
.end method

.method public abstract onUpdateSceneState(I)I
.end method
