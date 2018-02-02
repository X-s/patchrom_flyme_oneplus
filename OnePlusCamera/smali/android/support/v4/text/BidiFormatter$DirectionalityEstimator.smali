.class Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectionalityEstimator"
.end annotation


# static fields
.field private static final DIR_TYPE_CACHE:[B

.field private static final DIR_TYPE_CACHE_SIZE:I = 0x700


# instance fields
.field private charIndex:I

.field private final isHtml:Z

.field private lastChar:C

.field private final length:I

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x700

    .line 505
    new-array v0, v3, [B

    sput-object v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    const/4 v0, 0x0

    .line 506
    :goto_0
    if-lt v0, v3, :cond_0

    .line 509
    return-void

    .line 507
    :cond_0
    sget-object v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    .line 551
    iput-boolean p2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    .line 552
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    .line 553
    return-void
.end method

.method private static getCachedDirectionality(C)B
    .locals 1

    .prologue
    const/16 v0, 0x700

    .line 724
    if-lt p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    aget-byte v0, v0, p0

    goto :goto_0
.end method

.method private skipEntityBackward()B
    .locals 4

    .prologue
    const/16 v3, 0x3b

    .line 865
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 866
    :goto_0
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-gtz v1, :cond_1

    .line 875
    :cond_0
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 876
    iput-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 877
    const/16 v0, 0xd

    return v0

    .line 867
    :cond_1
    iget-object v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 868
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x26

    if-eq v1, v2, :cond_2

    .line 871
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 869
    :cond_2
    const/16 v0, 0xc

    return v0
.end method

.method private skipEntityForward()B
    .locals 3

    .prologue
    .line 850
    :cond_0
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-lt v0, v1, :cond_1

    .line 851
    :goto_0
    const/16 v0, 0xc

    return v0

    .line 850
    :cond_1
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-char v1, v0

    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method private skipTagBackward()B
    .locals 5

    .prologue
    const/16 v4, 0x3e

    .line 822
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 823
    :cond_0
    :goto_0
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-gtz v1, :cond_2

    .line 839
    :cond_1
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 840
    iput-char v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 841
    const/16 v0, 0xd

    return v0

    .line 824
    :cond_2
    iget-object v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 825
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_5

    .line 829
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v1, v4, :cond_1

    .line 832
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x22

    if-ne v1, v2, :cond_6

    .line 834
    :cond_3
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 835
    :cond_4
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-char v3, v2

    iput-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v2, v1, :cond_4

    goto :goto_0

    .line 827
    :cond_5
    const/16 v0, 0xc

    return v0

    .line 832
    :cond_6
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x27

    if-eq v1, v2, :cond_3

    goto :goto_0
.end method

.method private skipTagForward()B
    .locals 5

    .prologue
    .line 793
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 794
    :cond_0
    :goto_0
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-lt v1, v2, :cond_1

    .line 807
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 808
    const/16 v0, 0x3c

    iput-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 809
    const/16 v0, 0xd

    return v0

    .line 795
    :cond_1
    iget-object v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 796
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_4

    .line 800
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x22

    if-ne v1, v2, :cond_5

    .line 802
    :cond_2
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 803
    :cond_3
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-char v3, v2

    iput-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v2, v1, :cond_3

    goto :goto_0

    .line 798
    :cond_4
    const/16 v0, 0xc

    return v0

    .line 800
    :cond_5
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x27

    if-eq v1, v2, :cond_2

    goto :goto_0
.end method


# virtual methods
.method dirTypeBackward()B
    .locals 3

    .prologue
    .line 767
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 768
    iget-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 773
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 774
    iget-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v0

    .line 775
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-nez v1, :cond_2

    .line 783
    :cond_0
    :goto_0
    return v0

    .line 769
    :cond_1
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 770
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 771
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    return v0

    .line 777
    :cond_2
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_3

    .line 779
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_0

    .line 780
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    move-result v0

    goto :goto_0

    .line 778
    :cond_3
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    move-result v0

    goto :goto_0
.end method

.method dirTypeForward()B
    .locals 3

    .prologue
    .line 737
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 738
    iget-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 743
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 744
    iget-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v0

    .line 745
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-nez v1, :cond_2

    .line 753
    :cond_0
    :goto_0
    return v0

    .line 739
    :cond_1
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 740
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 741
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    return v0

    .line 747
    :cond_2
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_3

    .line 749
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_0

    .line 750
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    move-result v0

    goto :goto_0

    .line 748
    :cond_3
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    move-result v0

    goto :goto_0
.end method

.method getEntryDir()I
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 567
    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v0, v1

    move v3, v1

    move v2, v1

    .line 571
    :goto_0
    :pswitch_0
    iget v6, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v7, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-lt v6, v7, :cond_1

    .line 613
    :cond_0
    if-eqz v0, :cond_4

    .line 620
    if-nez v3, :cond_5

    .line 627
    :goto_1
    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-gtz v3, :cond_6

    .line 649
    return v1

    .line 571
    :cond_1
    if-nez v0, :cond_0

    .line 572
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_1
    move v0, v2

    .line 607
    goto :goto_0

    .line 575
    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    .line 577
    goto :goto_0

    .line 580
    :pswitch_3
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    .line 582
    goto :goto_0

    .line 584
    :pswitch_4
    add-int/lit8 v2, v2, -0x1

    move v3, v1

    .line 589
    goto :goto_0

    .line 593
    :pswitch_5
    if-eqz v2, :cond_2

    move v0, v2

    .line 597
    goto :goto_0

    .line 594
    :cond_2
    return v4

    .line 600
    :pswitch_6
    if-eqz v2, :cond_3

    move v0, v2

    .line 604
    goto :goto_0

    .line 601
    :cond_3
    return v5

    .line 616
    :cond_4
    return v1

    .line 622
    :cond_5
    return v3

    .line 628
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto :goto_1

    .line 631
    :pswitch_7
    if-eq v0, v2, :cond_7

    .line 634
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 632
    :cond_7
    return v4

    .line 638
    :pswitch_8
    if-eq v0, v2, :cond_8

    .line 641
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 639
    :cond_8
    return v5

    .line 644
    :pswitch_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 628
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method getExitDir()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 665
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v0, v1

    move v2, v1

    .line 668
    :cond_0
    :goto_0
    :pswitch_0
    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-gtz v3, :cond_1

    .line 713
    return v1

    .line 669
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 707
    :pswitch_1
    if-nez v0, :cond_0

    move v0, v2

    .line 708
    goto :goto_0

    .line 671
    :pswitch_2
    if-eqz v2, :cond_2

    .line 674
    if-nez v0, :cond_0

    move v0, v2

    .line 675
    goto :goto_0

    .line 672
    :cond_2
    return v4

    .line 680
    :pswitch_3
    if-eq v0, v2, :cond_3

    .line 683
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 681
    :cond_3
    return v4

    .line 687
    :pswitch_4
    if-eqz v2, :cond_4

    .line 690
    if-nez v0, :cond_0

    move v0, v2

    .line 691
    goto :goto_0

    .line 688
    :cond_4
    return v5

    .line 696
    :pswitch_5
    if-eq v0, v2, :cond_5

    .line 699
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 697
    :cond_5
    return v5

    .line 702
    :pswitch_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 669
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
