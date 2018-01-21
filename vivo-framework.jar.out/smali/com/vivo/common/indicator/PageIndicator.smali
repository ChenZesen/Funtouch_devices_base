.class public interface abstract Lcom/vivo/common/indicator/PageIndicator;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# virtual methods
.method public abstract getMeasuredWidth()I
.end method

.method public abstract getTranslationY()F
.end method

.method public abstract isIndicatorScrolling()Z
.end method

.method public abstract setLevel(I)V
.end method

.method public abstract setLevel(II)Z
.end method

.method public abstract setTotalLevel(I)V
.end method

.method public abstract setTranslationY(F)V
.end method

.method public abstract setVisibility(I)V
.end method

.method public abstract setX(F)V
.end method

.method public abstract updateIndicator(II)V
.end method
