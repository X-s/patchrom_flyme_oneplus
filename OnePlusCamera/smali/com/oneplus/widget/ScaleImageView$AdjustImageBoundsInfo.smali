.class Lcom/oneplus/widget/ScaleImageView$AdjustImageBoundsInfo;
.super Ljava/lang/Object;
.source "ScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/ScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdjustImageBoundsInfo"
.end annotation


# instance fields
.field public animation:Z

.field final synthetic this$0:Lcom/oneplus/widget/ScaleImageView;


# direct methods
.method public constructor <init>(Lcom/oneplus/widget/ScaleImageView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "animation"    # Z

    .prologue
    .line 420
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageView$AdjustImageBoundsInfo;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-boolean p2, p0, Lcom/oneplus/widget/ScaleImageView$AdjustImageBoundsInfo;->animation:Z

    .line 420
    return-void
.end method
