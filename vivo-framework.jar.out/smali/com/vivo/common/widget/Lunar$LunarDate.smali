.class public Lcom/vivo/common/widget/Lunar$LunarDate;
.super Ljava/lang/Object;
.source "Lunar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/Lunar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LunarDate"
.end annotation


# instance fields
.field public LeapMonth:I

.field public dayOfMonth:I

.field public mDate:Ljava/lang/String;

.field public monthOfYear:I

.field final synthetic this$0:Lcom/vivo/common/widget/Lunar;

.field public year:I


# direct methods
.method public constructor <init>(Lcom/vivo/common/widget/Lunar;)V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 104
    iput-object p1, p0, Lcom/vivo/common/widget/Lunar$LunarDate;->this$0:Lcom/vivo/common/widget/Lunar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/common/widget/Lunar$LunarDate;->mDate:Ljava/lang/String;

    .line 106
    iput v1, p0, Lcom/vivo/common/widget/Lunar$LunarDate;->year:I

    .line 107
    iput v1, p0, Lcom/vivo/common/widget/Lunar$LunarDate;->monthOfYear:I

    .line 108
    iput v1, p0, Lcom/vivo/common/widget/Lunar$LunarDate;->dayOfMonth:I

    .line 109
    iput v1, p0, Lcom/vivo/common/widget/Lunar$LunarDate;->LeapMonth:I

    return-void
.end method
