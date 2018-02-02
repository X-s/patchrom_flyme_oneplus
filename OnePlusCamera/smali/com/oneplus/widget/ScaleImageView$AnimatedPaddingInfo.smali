.class Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;
.super Ljava/lang/Object;
.source "ScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/ScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedPaddingInfo"
.end annotation


# instance fields
.field public paddingBottom:I

.field public paddingLeft:I

.field public paddingRight:I

.field public paddingTop:I

.field final synthetic this$0:Lcom/oneplus/widget/ScaleImageView;


# direct methods
.method public constructor <init>(Lcom/oneplus/widget/ScaleImageView;IIII)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "paddingLeft"    # I
    .param p3, "paddingTop"    # I
    .param p4, "paddingRight"    # I
    .param p5, "paddingBottom"    # I

    .prologue
    .line 437
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput p5, p0, Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;->paddingBottom:I

    .line 440
    iput p2, p0, Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;->paddingLeft:I

    .line 441
    iput p4, p0, Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;->paddingRight:I

    .line 442
    iput p3, p0, Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;->paddingTop:I

    .line 437
    return-void
.end method
