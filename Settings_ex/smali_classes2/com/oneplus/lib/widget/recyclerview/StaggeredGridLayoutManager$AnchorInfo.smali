.class Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnchorInfo"
.end annotation


# instance fields
.field mInvalidateOffsets:Z

.field mLayoutFromEnd:Z

.field mOffset:I

.field mPosition:I

.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    .prologue
    .line 2786
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)V

    return-void
.end method


# virtual methods
.method assignCoordinateFromPadding()V
    .locals 1

    .prologue
    .line 2801
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 2800
    return-void

    .line 2802
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    goto :goto_0
.end method

.method assignCoordinateFromPadding(I)V
    .locals 1
    .param p1, "addedDistance"    # I

    .prologue
    .line 2806
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    .line 2807
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 2805
    :goto_0
    return-void

    .line 2809
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_0
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2794
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 2795
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 2796
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 2797
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 2793
    return-void
.end method
