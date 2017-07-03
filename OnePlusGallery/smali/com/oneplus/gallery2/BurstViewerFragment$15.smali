.class Lcom/oneplus/gallery2/BurstViewerFragment$15;
.super Ljava/lang/Object;
.source "BurstViewerFragment.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/Media$SizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/BurstViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/BurstViewerFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$15;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$15;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # invokes: Lcom/oneplus/gallery2/BurstViewerFragment;->onMediaSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V
    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$2100(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/media/Media;II)V

    .line 382
    return-void
.end method
