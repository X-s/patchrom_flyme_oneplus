.class Landroid/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/BidiFormatter;
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

    .line 518
    new-array v1, v3, [B

    sput-object v1, Landroid/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    .line 519
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 520
    sget-object v1, Landroid/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    aput-byte v2, v1, v0

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isHtml"    # Z

    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    iput-object p1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    .line 564
    iput-boolean p2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    .line 565
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    .line 566
    return-void
.end method

.method private static getCachedDirectionality(C)B
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 737
    const/16 v0, 0x700

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    aget-byte v0, v0, p0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    goto :goto_0
.end method

.method private skipEntityBackward()B
    .locals 4

    .prologue
    const/16 v3, 0x3b

    .line 878
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 879
    .local v0, "initialCharIndex":I
    :cond_0
    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v1, :cond_2

    .line 880
    iget-object v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 881
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_1

    .line 882
    const/16 v1, 0xc

    .line 890
    :goto_0
    return v1

    .line 884
    :cond_1
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v1, v3, :cond_0

    .line 888
    :cond_2
    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 889
    iput-char v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 890
    const/16 v1, 0xd

    goto :goto_0
.end method

.method private skipEntityForward()B
    .locals 3

    .prologue
    .line 863
    :cond_0
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 864
    :cond_1
    const/16 v0, 0xc

    return v0
.end method

.method private skipTagBackward()B
    .locals 5

    .prologue
    const/16 v4, 0x3e

    .line 835
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 836
    .local v0, "initialCharIndex":I
    :cond_0
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_2

    .line 837
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 838
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1

    .line 840
    const/16 v2, 0xc

    .line 854
    :goto_0
    return v2

    .line 842
    :cond_1
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v2, v4, :cond_3

    .line 852
    :cond_2
    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 853
    iput-char v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 854
    const/16 v2, 0xd

    goto :goto_0

    .line 845
    :cond_3
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x22

    if-eq v2, v3, :cond_4

    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x27

    if-ne v2, v3, :cond_0

    .line 847
    :cond_4
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 848
    .local v1, "quote":C
    :goto_1
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_0

    goto :goto_1
.end method

.method private skipTagForward()B
    .locals 5

    .prologue
    .line 806
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 807
    .local v0, "initialCharIndex":I
    :cond_0
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_3

    .line 808
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 809
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_1

    .line 811
    const/16 v2, 0xc

    .line 822
    :goto_0
    return v2

    .line 813
    :cond_1
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x22

    if-eq v2, v3, :cond_2

    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x27

    if-ne v2, v3, :cond_0

    .line 815
    :cond_2
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 816
    .local v1, "quote":C
    :goto_1
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_0

    goto :goto_1

    .line 820
    .end local v1    # "quote":C
    :cond_3
    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 821
    const/16 v2, 0x3c

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 822
    const/16 v2, 0xd

    goto :goto_0
.end method


# virtual methods
.method dirTypeBackward()B
    .locals 4

    .prologue
    .line 780
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 781
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 782
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 783
    .local v0, "codePoint":I
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 784
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    .line 796
    .end local v0    # "codePoint":I
    :cond_0
    :goto_0
    return v1

    .line 786
    :cond_1
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 787
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v1

    .line 788
    .local v1, "dirType":B
    iget-boolean v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v2, :cond_0

    .line 790
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_2

    .line 791
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    move-result v1

    goto :goto_0

    .line 792
    :cond_2
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    .line 793
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    move-result v1

    goto :goto_0
.end method

.method dirTypeForward()B
    .locals 4

    .prologue
    .line 750
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 751
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 752
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 753
    .local v0, "codePoint":I
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 754
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    .line 766
    .end local v0    # "codePoint":I
    :cond_0
    :goto_0
    return v1

    .line 756
    :cond_1
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 757
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v1

    .line 758
    .local v1, "dirType":B
    iget-boolean v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v2, :cond_0

    .line 760
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_2

    .line 761
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    move-result v1

    goto :goto_0

    .line 762
    :cond_2
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x26

    if-ne v2, v3, :cond_0

    .line 763
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    move-result v1

    goto :goto_0
.end method

.method getEntryDir()I
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 580
    iput v5, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, "embeddingLevel":I
    const/4 v1, 0x0

    .line 583
    .local v1, "embeddingLevelDir":I
    const/4 v2, 0x0

    .line 584
    .local v2, "firstNonEmptyEmbeddingLevel":I
    :goto_0
    :pswitch_0
    iget v6, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v7, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v6, v7, :cond_3

    if-nez v2, :cond_3

    .line 585
    invoke-virtual {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 619
    :pswitch_1
    move v2, v0

    .line 620
    goto :goto_0

    .line 588
    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    .line 589
    const/4 v1, -0x1

    .line 590
    goto :goto_0

    .line 593
    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 594
    const/4 v1, 0x1

    .line 595
    goto :goto_0

    .line 597
    :pswitch_4
    add-int/lit8 v0, v0, -0x1

    .line 601
    const/4 v1, 0x0

    .line 602
    goto :goto_0

    .line 606
    :pswitch_5
    if-nez v0, :cond_1

    move v1, v3

    .line 662
    .end local v1    # "embeddingLevelDir":I
    :cond_0
    :goto_1
    return v1

    .line 609
    .restart local v1    # "embeddingLevelDir":I
    :cond_1
    move v2, v0

    .line 610
    goto :goto_0

    .line 613
    :pswitch_6
    if-nez v0, :cond_2

    move v1, v4

    .line 614
    goto :goto_1

    .line 616
    :cond_2
    move v2, v0

    .line 617
    goto :goto_0

    .line 626
    :cond_3
    if-nez v2, :cond_4

    move v1, v5

    .line 629
    goto :goto_1

    .line 633
    :cond_4
    if-nez v1, :cond_0

    .line 640
    :goto_2
    iget v6, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v6, :cond_7

    .line 641
    invoke-virtual {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v6

    packed-switch v6, :pswitch_data_1

    goto :goto_2

    .line 644
    :pswitch_7
    if-ne v2, v0, :cond_5

    move v1, v3

    .line 645
    goto :goto_1

    .line 647
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 648
    goto :goto_2

    .line 651
    :pswitch_8
    if-ne v2, v0, :cond_6

    move v1, v4

    .line 652
    goto :goto_1

    .line 654
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 655
    goto :goto_2

    .line 657
    :pswitch_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v1, v5

    .line 662
    goto :goto_1

    .line 585
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

    .line 641
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
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 678
    iget v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 679
    const/4 v0, 0x0

    .line 680
    .local v0, "embeddingLevel":I
    const/4 v1, 0x0

    .line 681
    .local v1, "lastNonEmptyEmbeddingLevel":I
    :cond_0
    :goto_0
    :pswitch_0
    iget v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v4, :cond_5

    .line 682
    invoke-virtual {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 720
    :pswitch_1
    if-nez v1, :cond_0

    .line 721
    move v1, v0

    goto :goto_0

    .line 684
    :pswitch_2
    if-nez v0, :cond_2

    .line 726
    :cond_1
    :goto_1
    return v2

    .line 687
    :cond_2
    if-nez v1, :cond_0

    .line 688
    move v1, v0

    goto :goto_0

    .line 693
    :pswitch_3
    if-eq v1, v0, :cond_1

    .line 696
    add-int/lit8 v0, v0, -0x1

    .line 697
    goto :goto_0

    .line 700
    :pswitch_4
    if-nez v0, :cond_3

    move v2, v3

    .line 701
    goto :goto_1

    .line 703
    :cond_3
    if-nez v1, :cond_0

    .line 704
    move v1, v0

    goto :goto_0

    .line 709
    :pswitch_5
    if-ne v1, v0, :cond_4

    move v2, v3

    .line 710
    goto :goto_1

    .line 712
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 713
    goto :goto_0

    .line 715
    :pswitch_6
    add-int/lit8 v0, v0, 0x1

    .line 716
    goto :goto_0

    .line 726
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 682
    nop

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
