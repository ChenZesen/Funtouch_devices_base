.class public interface abstract Lcom/vivo/common/widget/BBKAnimWidgetBase;
.super Ljava/lang/Object;
.source "BBKAnimWidgetBase.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field public static final DIRECTION_FROM_LEFT:I = 0x0

.field public static final DIRECTION_FROM_RIGHT:I = 0x1

.field public static final DIRECTION_FROM_SELF:I = 0x2

.field public static final MOTION_INIT:I = 0x0

.field public static final MOTION_SCREEN_LOCK:I = 0x9

.field public static final MOTION_SCREEN_UNLOCK:I = 0x1

.field public static final MOTION_SCROLL_START:I = 0x6

.field public static final MOTION_SCROLL_STOP:I = 0x2

.field public static final MOTION_SORT_START:I = 0x7

.field public static final MOTION_SORT_STOP:I = 0x3

.field public static final MOTION_WINDOW_PAUSE:I = 0x8

.field public static final MOTION_WINDOW_RESUME:I = 0x4


# virtual methods
.method public abstract onActive(II)V
.end method

.method public abstract onInactive(I)V
.end method
