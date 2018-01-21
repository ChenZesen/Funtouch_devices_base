.class Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageHandler;
.super Landroid/os/Handler;
.source "VivoCameraKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/key/VivoCameraKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/key/VivoCameraKeyHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/key/VivoCameraKeyHandler;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageHandler;->this$0:Lcom/android/server/policy/key/VivoCameraKeyHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/key/VivoCameraKeyHandler;Lcom/android/server/policy/key/VivoCameraKeyHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/key/VivoCameraKeyHandler;
    .param p2, "x1"    # Lcom/android/server/policy/key/VivoCameraKeyHandler$1;

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoCameraKeyHandler$MessageHandler;-><init>(Lcom/android/server/policy/key/VivoCameraKeyHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 257
    return-void
.end method
