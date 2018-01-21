.class public final Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;
.super Ljava/lang/Object;
.source "VivoCameraKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/key/VivoCameraKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MessageParam"
.end annotation


# instance fields
.field public mIsKeyguardActive:Z

.field public mIsScreenOn:Z

.field public mIsShowSplash:Z

.field public mKeyEvent:Landroid/view/KeyEvent;

.field public mNeedWakeUp:Z

.field public mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/server/policy/key/VivoCameraKeyHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/key/VivoCameraKeyHandler;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 275
    iput-object p1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;->this$0:Lcom/android/server/policy/key/VivoCameraKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;->mKeyEvent:Landroid/view/KeyEvent;

    .line 268
    iput-object v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;->mView:Landroid/view/View;

    .line 269
    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;->mIsKeyguardActive:Z

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;->mIsScreenOn:Z

    .line 271
    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;->mIsShowSplash:Z

    .line 272
    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageParam;->mNeedWakeUp:Z

    .line 277
    return-void
.end method
