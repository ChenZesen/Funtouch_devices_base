.class public final Lcom/android/server/policy/VivoKeyActionObserver$MessageParam;
.super Ljava/lang/Object;
.source "VivoKeyActionObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/VivoKeyActionObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MessageParam"
.end annotation


# instance fields
.field public mKeyEvent:Landroid/view/KeyEvent;

.field public mListener:Lcom/android/server/policy/IVivoKeyCallback;

.field final synthetic this$0:Lcom/android/server/policy/VivoKeyActionObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/VivoKeyActionObserver;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/server/policy/VivoKeyActionObserver$MessageParam;->this$0:Lcom/android/server/policy/VivoKeyActionObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    return-void
.end method
