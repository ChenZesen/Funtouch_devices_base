.class Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;
.super Landroid/widget/FrameLayout;
.source "VivoCameraKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/key/VivoCameraKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraSplashView"
.end annotation


# instance fields
.field public mMsgParam:Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;

.field final synthetic this$0:Lcom/android/server/policy/key/VivoCameraKeyHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/key/VivoCameraKeyHandler;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;-><init>(Lcom/android/server/policy/key/VivoCameraKeyHandler;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 298
    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/key/VivoCameraKeyHandler;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;-><init>(Lcom/android/server/policy/key/VivoCameraKeyHandler;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 303
    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/key/VivoCameraKeyHandler;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;->this$0:Lcom/android/server/policy/key/VivoCameraKeyHandler;

    .line 307
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;->mMsgParam:Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;

    .line 309
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;->setBackgroundColor(I)V

    .line 310
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 320
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 323
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 328
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 331
    return-void
.end method

.method public setMessageParam(Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;)V
    .locals 0
    .param p1, "msgParam"    # Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$CameraSplashView;->mMsgParam:Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;

    .line 315
    return-void
.end method
