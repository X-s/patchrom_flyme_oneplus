.class Lcom/oneplus/gallery2/FilmstripFragment$2;
.super Lcom/oneplus/widget/FilmstripView$Adapter;
.source "FilmstripFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/FilmstripFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/FilmstripFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/FilmstripFragment;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment$2;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$2;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->onGetCount()I
    invoke-static {v0}, Lcom/oneplus/gallery2/FilmstripFragment;->access$300(Lcom/oneplus/gallery2/FilmstripFragment;)I

    move-result v0

    return v0
.end method

.method public prepareItemView(ILandroid/view/ViewGroup;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$2;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->onPrepareItemView(ILandroid/view/ViewGroup;)V
    invoke-static {v0, p1, p2}, Lcom/oneplus/gallery2/FilmstripFragment;->access$400(Lcom/oneplus/gallery2/FilmstripFragment;ILandroid/view/ViewGroup;)V

    .line 229
    return-void
.end method

.method public releaseItemView(ILandroid/view/ViewGroup;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$2;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->onReleaseItemView(ILandroid/view/ViewGroup;)V
    invoke-static {v0, p1, p2}, Lcom/oneplus/gallery2/FilmstripFragment;->access$500(Lcom/oneplus/gallery2/FilmstripFragment;ILandroid/view/ViewGroup;)V

    .line 235
    return-void
.end method
