.class public Landroid/hardware/FtAFDataAdapter;
.super Ljava/lang/Object;
.source "FtAFDataAdapter.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/FtAFDataAdapter$FtAFDataCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public setAFDataCallback(Landroid/hardware/Camera;Landroid/hardware/FtAFDataAdapter$FtAFDataCallback;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "cb"    # Landroid/hardware/FtAFDataAdapter$FtAFDataCallback;

    .prologue
    .line 32
    return-void
.end method
