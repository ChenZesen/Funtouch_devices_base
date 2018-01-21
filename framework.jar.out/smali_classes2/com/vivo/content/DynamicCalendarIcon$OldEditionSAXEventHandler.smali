.class Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DynamicCalendarIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/content/DynamicCalendarIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OldEditionSAXEventHandler"
.end annotation


# static fields
.field private static final CALENDAR_ICON_REPLACE:Ljava/lang/String; = "calendar"

.field private static final CALENDAR_MONTH_LEFT_OFFSET:Ljava/lang/String; = "monthleftoffset"

.field private static final CALENDAR_MONTH_SHADOW_COLOR:Ljava/lang/String; = "monthtextshadowcolor"

.field private static final CALENDAR_MONTH_SHOW:Ljava/lang/String; = "calendarmonth"

.field private static final CALENDAR_MONTH_TEXTCOLOR:Ljava/lang/String; = "monthtextcolor"

.field private static final CALENDAR_MONTH_TEXTSIZE:Ljava/lang/String; = "monthtextsize"

.field private static final CALENDAR_MONTH_TOP_OFFSET:Ljava/lang/String; = "monthtopoffset"

.field private static final CALENDAR_MONTH_TOP_SHADOW_Y:Ljava/lang/String; = "monthtextshadowy"

.field private static final CALENDAR_WEEK_LEFT_OFFSET:Ljava/lang/String; = "weekleftoffset"

.field private static final CALENDAR_WEEK_SHOW:Ljava/lang/String; = "calendartweek"

.field private static final CALENDAR_WEEK_TEXTCOLOR:Ljava/lang/String; = "weektextcolor"

.field private static final CALENDAR_WEEK_TEXTSIZE:Ljava/lang/String; = "weektextsize"

.field private static final CALENDAR_WEEK_TOP_OFFSET:Ljava/lang/String; = "weektopoffset"


# instance fields
.field private tempString:Ljava/lang/String;

.field final synthetic this$0:Lcom/vivo/content/DynamicCalendarIcon;


# direct methods
.method private constructor <init>(Lcom/vivo/content/DynamicCalendarIcon;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/content/DynamicCalendarIcon;Lcom/vivo/content/DynamicCalendarIcon$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/content/DynamicCalendarIcon;
    .param p2, "x1"    # Lcom/vivo/content/DynamicCalendarIcon$1;

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;-><init>(Lcom/vivo/content/DynamicCalendarIcon;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 410
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 411
    .local v0, "valueString":Ljava/lang/String;
    const-string v1, "calendar"

    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mCalendar:Z
    invoke-static {v1, v2}, Lcom/vivo/content/DynamicCalendarIcon;->access$202(Lcom/vivo/content/DynamicCalendarIcon;Z)Z

    .line 442
    :goto_0
    return-void

    .line 413
    :cond_0
    const-string v1, "calendartweek"

    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mCalendartweek:Z
    invoke-static {v1, v2}, Lcom/vivo/content/DynamicCalendarIcon;->access$402(Lcom/vivo/content/DynamicCalendarIcon;Z)Z

    goto :goto_0

    .line 415
    :cond_1
    const-string v1, "weektextsize"

    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 416
    iget-object v1, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mWeektextsize:I
    invoke-static {v1, v2}, Lcom/vivo/content/DynamicCalendarIcon;->access$502(Lcom/vivo/content/DynamicCalendarIcon;I)I

    goto :goto_0

    .line 417
    :cond_2
    const-string v1, "weektextcolor"

    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 418
    iget-object v1, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mWeektextcolor:I
    invoke-static {v1, v2}, Lcom/vivo/content/DynamicCalendarIcon;->access$602(Lcom/vivo/content/DynamicCalendarIcon;I)I

    goto :goto_0

    .line 419
    :cond_3
    const-string v1, "weekleftoffset"

    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 420
    iget-object v1, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mWeekleftoffset:I
    invoke-static {v1, v2}, Lcom/vivo/content/DynamicCalendarIcon;->access$702(Lcom/vivo/content/DynamicCalendarIcon;I)I

    goto :goto_0

    .line 421
    :cond_4
    const-string v1, "weektopoffset"

    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 422
    iget-object v1, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mWeektopoffset:I
    invoke-static {v1, v2}, Lcom/vivo/content/DynamicCalendarIcon;->access$802(Lcom/vivo/content/DynamicCalendarIcon;I)I

    goto :goto_0

    .line 423
    :cond_5
    const-string v1, "calendarmonth"

    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 424
    iget-object v1, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mCalendardate:Z
    invoke-static {v1, v2}, Lcom/vivo/content/DynamicCalendarIcon;->access$902(Lcom/vivo/content/DynamicCalendarIcon;Z)Z

    goto :goto_0

    .line 425
    :cond_6
    const-string v1, "monthtextsize"

    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 426
    iget-object v1, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mDatetextsize:I
    invoke-static {v1, v2}, Lcom/vivo/content/DynamicCalendarIcon;->access$1002(Lcom/vivo/content/DynamicCalendarIcon;I)I

    goto/16 :goto_0

    .line 427
    :cond_7
    const-string v1, "monthtextcolor"

    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 428
    iget-object v1, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mDatetextcolor:I
    invoke-static {v1, v2}, Lcom/vivo/content/DynamicCalendarIcon;->access$1102(Lcom/vivo/content/DynamicCalendarIcon;I)I

    .line 429
    iget-object v1, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    # getter for: Lcom/vivo/content/DynamicCalendarIcon;->mDatetextcolor:I
    invoke-static {v1}, Lcom/vivo/content/DynamicCalendarIcon;->access$1100(Lcom/vivo/content/DynamicCalendarIcon;)I

    move-result v1

    if-nez v1, :cond_8

    .line 430
    iget-object v1, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    const v2, -0xc1c1c2

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mDatetextcolor:I
    invoke-static {v1, v2}, Lcom/vivo/content/DynamicCalendarIcon;->access$1102(Lcom/vivo/content/DynamicCalendarIcon;I)I

    goto/16 :goto_0

    .line 432
    :cond_8
    iget-object v1, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    const/high16 v2, -0x1000000

    iget-object v3, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    # getter for: Lcom/vivo/content/DynamicCalendarIcon;->mDatetextcolor:I
    invoke-static {v3}, Lcom/vivo/content/DynamicCalendarIcon;->access$1100(Lcom/vivo/content/DynamicCalendarIcon;)I

    move-result v3

    or-int/2addr v2, v3

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mDatetextcolor:I
    invoke-static {v1, v2}, Lcom/vivo/content/DynamicCalendarIcon;->access$1102(Lcom/vivo/content/DynamicCalendarIcon;I)I

    goto/16 :goto_0

    .line 434
    :cond_9
    const-string v1, "monthleftoffset"

    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 435
    iget-object v1, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mDateleftoffset:I
    invoke-static {v1, v2}, Lcom/vivo/content/DynamicCalendarIcon;->access$1202(Lcom/vivo/content/DynamicCalendarIcon;I)I

    goto/16 :goto_0

    .line 436
    :cond_a
    const-string v1, "monthtopoffset"

    iget-object v2, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 437
    iget-object v1, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->this$0:Lcom/vivo/content/DynamicCalendarIcon;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/vivo/content/DynamicCalendarIcon;->mDatetopoffset:I
    invoke-static {v1, v2}, Lcom/vivo/content/DynamicCalendarIcon;->access$1302(Lcom/vivo/content/DynamicCalendarIcon;I)I

    goto/16 :goto_0

    .line 439
    :cond_b
    const-string v1, "Launcher.DynamicCalendarIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknow tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->tempString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is found when read theme"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->tempString:Ljava/lang/String;

    .line 405
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 398
    iput-object p2, p0, Lcom/vivo/content/DynamicCalendarIcon$OldEditionSAXEventHandler;->tempString:Ljava/lang/String;

    .line 399
    return-void
.end method
