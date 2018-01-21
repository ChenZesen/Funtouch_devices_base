.class Lcom/android/server/wifi/VivoHotSpotEnhancer$DisableNat;
.super Ljava/lang/Object;
.source "VivoHotSpotEnhancer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoHotSpotEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisableNat"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/VivoHotSpotEnhancer;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$DisableNat;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$DisableNat;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    # invokes: Lcom/android/server/wifi/VivoHotSpotEnhancer;->disableNat()V
    invoke-static {v0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->access$4400(Lcom/android/server/wifi/VivoHotSpotEnhancer;)V

    .line 817
    return-void
.end method
