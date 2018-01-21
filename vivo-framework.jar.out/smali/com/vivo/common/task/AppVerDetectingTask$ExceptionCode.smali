.class final Lcom/vivo/common/task/AppVerDetectingTask$ExceptionCode;
.super Ljava/lang/Object;
.source "AppVerDetectingTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/task/AppVerDetectingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExceptionCode"
.end annotation


# static fields
.field public static final FORCE_UPDATE:I = 0xc9

.field public static final INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final MSG_LATEAST_VERSION:I = 0xc8

.field public static final NET_UNCONNECTED:I = 0x3e9

.field public static final PARAM_ERROR:I = 0x190

.field public static final SELF_UPDATE:I = 0xd2

.field public static final SUGGEST_UPDATE:I = 0xca


# instance fields
.field final synthetic this$0:Lcom/vivo/common/task/AppVerDetectingTask;


# direct methods
.method constructor <init>(Lcom/vivo/common/task/AppVerDetectingTask;)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Lcom/vivo/common/task/AppVerDetectingTask$ExceptionCode;->this$0:Lcom/vivo/common/task/AppVerDetectingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
