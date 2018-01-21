.class public Landroid/widget/BbkMoveBoolButton$Status;
.super Ljava/lang/Object;
.source "BbkMoveBoolButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BbkMoveBoolButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation


# static fields
.field public static final END_LOADING:I = 0x2

.field public static final LOADING:I = 0x1

.field public static final NORMAL:I = 0x3

.field public static final START_LOADING:I


# instance fields
.field angle:F

.field progress:F

.field status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
