.class public Landroid/media/MediaScanner$BlackWhiteParseHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BlackWhiteParseHandler"
.end annotation


# instance fields
.field private content:Ljava/lang/StringBuilder;

.field private mBlackWhiteList:Landroid/media/MediaScanner$BlackWhiteList;

.field private mPathList:Landroid/media/MediaScanner$PathList;

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method public constructor <init>(Landroid/media/MediaScanner;)V
    .locals 0

    .prologue
    .line 2888
    iput-object p1, p0, Landroid/media/MediaScanner$BlackWhiteParseHandler;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2929
    iget-object v0, p0, Landroid/media/MediaScanner$BlackWhiteParseHandler;->content:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 2930
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2915
    const-string/jumbo v0, "version"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2916
    iget-object v0, p0, Landroid/media/MediaScanner$BlackWhiteParseHandler;->mBlackWhiteList:Landroid/media/MediaScanner$BlackWhiteList;

    iget-object v1, p0, Landroid/media/MediaScanner$BlackWhiteParseHandler;->content:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaScanner$BlackWhiteList;->setVersion(I)V

    .line 2925
    :cond_0
    :goto_0
    return-void

    .line 2917
    :cond_1
    const-string v0, "array"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2918
    iget-object v0, p0, Landroid/media/MediaScanner$BlackWhiteParseHandler;->mBlackWhiteList:Landroid/media/MediaScanner$BlackWhiteList;

    iget-object v1, p0, Landroid/media/MediaScanner$BlackWhiteParseHandler;->mPathList:Landroid/media/MediaScanner$PathList;

    invoke-virtual {v0, v1}, Landroid/media/MediaScanner$BlackWhiteList;->addPathList(Landroid/media/MediaScanner$PathList;)V

    .line 2920
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner$BlackWhiteParseHandler;->mPathList:Landroid/media/MediaScanner$PathList;

    goto :goto_0

    .line 2921
    :cond_2
    const-string/jumbo v0, "value"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2922
    iget-object v0, p0, Landroid/media/MediaScanner$BlackWhiteParseHandler;->mPathList:Landroid/media/MediaScanner$PathList;

    iget-object v1, p0, Landroid/media/MediaScanner$BlackWhiteParseHandler;->content:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaScanner$PathList;->addPaths(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBlackWhiteLists()Landroid/media/MediaScanner$BlackWhiteList;
    .locals 1

    .prologue
    .line 2896
    iget-object v0, p0, Landroid/media/MediaScanner$BlackWhiteParseHandler;->mBlackWhiteList:Landroid/media/MediaScanner$BlackWhiteList;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "sName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner$BlackWhiteParseHandler;->content:Ljava/lang/StringBuilder;

    .line 2903
    const-string/jumbo v0, "paths"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2904
    new-instance v0, Landroid/media/MediaScanner$BlackWhiteList;

    iget-object v1, p0, Landroid/media/MediaScanner$BlackWhiteParseHandler;->this$0:Landroid/media/MediaScanner;

    invoke-direct {v0, v1}, Landroid/media/MediaScanner$BlackWhiteList;-><init>(Landroid/media/MediaScanner;)V

    iput-object v0, p0, Landroid/media/MediaScanner$BlackWhiteParseHandler;->mBlackWhiteList:Landroid/media/MediaScanner$BlackWhiteList;

    .line 2911
    :cond_0
    :goto_0
    return-void

    .line 2906
    :cond_1
    const-string v0, "array"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2907
    new-instance v0, Landroid/media/MediaScanner$PathList;

    iget-object v1, p0, Landroid/media/MediaScanner$BlackWhiteParseHandler;->this$0:Landroid/media/MediaScanner;

    invoke-direct {v0, v1}, Landroid/media/MediaScanner$PathList;-><init>(Landroid/media/MediaScanner;)V

    iput-object v0, p0, Landroid/media/MediaScanner$BlackWhiteParseHandler;->mPathList:Landroid/media/MediaScanner$PathList;

    .line 2908
    iget-object v0, p0, Landroid/media/MediaScanner$BlackWhiteParseHandler;->mPathList:Landroid/media/MediaScanner$PathList;

    const-string/jumbo v1, "name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaScanner$PathList;->setPathListName(Ljava/lang/String;)V

    goto :goto_0
.end method
