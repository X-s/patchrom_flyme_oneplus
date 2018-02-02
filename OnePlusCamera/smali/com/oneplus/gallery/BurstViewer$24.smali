.class Lcom/oneplus/gallery/BurstViewer$24;
.super Lcom/oneplus/widget/FilmstripView$ScrollListener;
.source "BurstViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/BurstViewer;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/BurstViewer;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/BurstViewer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/BurstViewer;

    .prologue
    .line 1729
    iput-object p1, p0, Lcom/oneplus/gallery/BurstViewer$24;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView$ScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStopped()V
    .locals 2

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$24;->this$0:Lcom/oneplus/gallery/BurstViewer;

    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer$24;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-static {v1}, Lcom/oneplus/gallery/BurstViewer;->-get4(Lcom/oneplus/gallery/BurstViewer;)Lcom/oneplus/widget/FilmstripView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/gallery/BurstViewer;->-wrap19(Lcom/oneplus/gallery/BurstViewer;I)V

    .line 1732
    return-void
.end method
