.class Lcom/vivo/alphaindex/HanziToPinyin$DialerSearchToken;
.super Lcom/vivo/alphaindex/HanziToPinyin$Token;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/alphaindex/HanziToPinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialerSearchToken"
.end annotation


# static fields
.field static final FIRSTCASE:I = 0x0

.field static final LOWERCASE:I = 0x2

.field static final UPPERCASE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/vivo/alphaindex/HanziToPinyin;


# direct methods
.method private constructor <init>(Lcom/vivo/alphaindex/HanziToPinyin;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lcom/vivo/alphaindex/HanziToPinyin$DialerSearchToken;->this$0:Lcom/vivo/alphaindex/HanziToPinyin;

    invoke-direct {p0}, Lcom/vivo/alphaindex/HanziToPinyin$Token;-><init>()V

    return-void
.end method
