.class Lcom/oneplus/gallery/BurstViewer$SubMediaItem$1;
.super Lcom/oneplus/widget/ScaleImageView$StateCallback;
.source "BurstViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/BurstViewer$SubMediaItem;-><init>(Lcom/oneplus/gallery/BurstViewer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/BurstViewer$SubMediaItem;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/BurstViewer$SubMediaItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/gallery/BurstViewer$SubMediaItem;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem$1;->this$1:Lcom/oneplus/gallery/BurstViewer$SubMediaItem;

    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBoundsTypeChanged(Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V
    .locals 2
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "oldType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;
    .param p3, "newType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem$1;->this$1:Lcom/oneplus/gallery/BurstViewer$SubMediaItem;

    iget-object v0, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->this$0:Lcom/oneplus/gallery/BurstViewer;

    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem$1;->this$1:Lcom/oneplus/gallery/BurstViewer$SubMediaItem;

    invoke-static {v0, v1, p2, p3}, Lcom/oneplus/gallery/BurstViewer;->-wrap8(Lcom/oneplus/gallery/BurstViewer;Lcom/oneplus/gallery/BurstViewer$SubMediaItem;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 337
    return-void
.end method
