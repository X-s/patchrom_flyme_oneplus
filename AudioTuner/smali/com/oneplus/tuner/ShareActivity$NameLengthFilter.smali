.class Lcom/oneplus/tuner/ShareActivity$NameLengthFilter;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/ShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NameLengthFilter"
.end annotation


# instance fields
.field max_en:I

.field regEx:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/tuner/ShareActivity;


# direct methods
.method public constructor <init>(Lcom/oneplus/tuner/ShareActivity;I)V
    .locals 1
    .param p2, "mAX_EN"    # I

    .prologue
    .line 510
    iput-object p1, p0, Lcom/oneplus/tuner/ShareActivity$NameLengthFilter;->this$0:Lcom/oneplus/tuner/ShareActivity;

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    const-string v0, "[\\u4e00-\\u9fa5]"

    iput-object v0, p0, Lcom/oneplus/tuner/ShareActivity$NameLengthFilter;->regEx:Ljava/lang/String;

    .line 512
    iput p2, p0, Lcom/oneplus/tuner/ShareActivity$NameLengthFilter;->max_en:I

    .line 513
    return-void
.end method

.method private getChineseCount(Ljava/lang/String;)I
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "count":I
    iget-object v4, p0, Lcom/oneplus/tuner/ShareActivity$NameLengthFilter;->regEx:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 535
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 536
    .local v2, "m":Ljava/util/regex/Matcher;
    :cond_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 537
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    if-gt v1, v4, :cond_0

    .line 538
    add-int/lit8 v0, v0, 0x1

    .line 537
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 541
    .end local v1    # "i":I
    :cond_1
    return v0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 518
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/oneplus/tuner/ShareActivity$NameLengthFilter;->getChineseCount(Ljava/lang/String;)I

    move-result v3

    add-int v0, v2, v3

    .line 520
    .local v0, "destCount":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/oneplus/tuner/ShareActivity$NameLengthFilter;->getChineseCount(Ljava/lang/String;)I

    move-result v3

    add-int v1, v2, v3

    .line 522
    .local v1, "sourceCount":I
    add-int v2, v0, v1

    iget v3, p0, Lcom/oneplus/tuner/ShareActivity$NameLengthFilter;->max_en:I

    if-le v2, v3, :cond_0

    .line 525
    const-string p1, ""

    .line 528
    .end local p1    # "source":Ljava/lang/CharSequence;
    :cond_0
    return-object p1
.end method
