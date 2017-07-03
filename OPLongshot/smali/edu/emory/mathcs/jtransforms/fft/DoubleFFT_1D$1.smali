.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;
.super Ljava/lang/Object;
.source "DoubleFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForwardFull([DI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

.field final synthetic val$a:[D

.field final synthetic val$firstIdx:I

.field final synthetic val$lastIdx:I

.field final synthetic val$offa:I

.field final synthetic val$twon:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$firstIdx:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$lastIdx:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$offa:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$twon:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$a:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 380
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$firstIdx:I

    .local v2, "k":I
    :goto_0
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$lastIdx:I

    if-ge v2, v3, :cond_0

    .line 381
    mul-int/lit8 v0, v2, 0x2

    .line 382
    .local v0, "idx1":I
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$offa:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$twon:I

    sub-int/2addr v4, v0

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$twon:I

    rem-int/2addr v4, v5

    add-int v1, v3, v4

    .line 383
    .local v1, "idx2":I
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$a:[D

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$a:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$offa:I

    add-int/2addr v5, v0

    aget-wide v4, v4, v5

    aput-wide v4, v3, v1

    .line 384
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$a:[D

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$a:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;->val$offa:I

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v5, v6

    neg-double v6, v6

    aput-wide v6, v3, v4

    .line 380
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    .end local v0    # "idx1":I
    .end local v1    # "idx2":I
    :cond_0
    return-void
.end method
