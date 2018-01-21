.class Lcom/android/internal/telephony/RIL$5;
.super Ljava/lang/Thread;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/RIL;->responseMiscString(Landroid/os/Parcel;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0

    .prologue
    .line 4730
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$5;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4732
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$5;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x1

    # invokes: Lcom/android/internal/telephony/RIL;->checkSPAndSendBrocast(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$1900(Lcom/android/internal/telephony/RIL;I)V

    .line 4733
    return-void
.end method
