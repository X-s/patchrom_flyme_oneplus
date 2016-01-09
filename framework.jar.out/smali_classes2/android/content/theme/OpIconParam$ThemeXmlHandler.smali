.class Landroid/content/theme/OpIconParam$ThemeXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "OpIconParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/theme/OpIconParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThemeXmlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/theme/OpIconParam;


# direct methods
.method constructor <init>(Landroid/content/theme/OpIconParam;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Landroid/content/theme/OpIconParam$ThemeXmlHandler;->this$0:Landroid/content/theme/OpIconParam;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 71
    .local v0, "value":Ljava/lang/String;
    const-string v1, "Scale"

    iget-object v2, p0, Landroid/content/theme/OpIconParam$ThemeXmlHandler;->this$0:Landroid/content/theme/OpIconParam;

    iget-object v2, v2, Landroid/content/theme/OpIconParam;->mCurrentTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Landroid/content/theme/OpIconParam$ThemeXmlHandler;->this$0:Landroid/content/theme/OpIconParam;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/theme/OpIconParam;->mScale:F

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string v1, "XOffsetPCT"

    iget-object v2, p0, Landroid/content/theme/OpIconParam$ThemeXmlHandler;->this$0:Landroid/content/theme/OpIconParam;

    iget-object v2, v2, Landroid/content/theme/OpIconParam;->mCurrentTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    iget-object v1, p0, Landroid/content/theme/OpIconParam$ThemeXmlHandler;->this$0:Landroid/content/theme/OpIconParam;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/theme/OpIconParam;->mXOffsetPCT:F

    goto :goto_0

    .line 75
    :cond_2
    const-string v1, "YOffsetPCT"

    iget-object v2, p0, Landroid/content/theme/OpIconParam$ThemeXmlHandler;->this$0:Landroid/content/theme/OpIconParam;

    iget-object v2, v2, Landroid/content/theme/OpIconParam;->mCurrentTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Landroid/content/theme/OpIconParam$ThemeXmlHandler;->this$0:Landroid/content/theme/OpIconParam;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/theme/OpIconParam;->mYOffsetPCT:F

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Landroid/content/theme/OpIconParam$ThemeXmlHandler;->this$0:Landroid/content/theme/OpIconParam;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/content/theme/OpIconParam;->mCurrentTag:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
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
    .line 66
    iget-object v0, p0, Landroid/content/theme/OpIconParam$ThemeXmlHandler;->this$0:Landroid/content/theme/OpIconParam;

    iput-object p2, v0, Landroid/content/theme/OpIconParam;->mCurrentTag:Ljava/lang/String;

    .line 67
    return-void
.end method
