.class Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem$4;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;-><init>(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/gallery/media/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

.field final synthetic val$this$0:Lcom/oneplus/gallery/FilmstripFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;Lcom/oneplus/gallery/FilmstripFragment;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem$4;->this$1:Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    iput-object p2, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem$4;->val$this$0:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem$4;->this$1:Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    iget-object v0, v0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery/FilmstripFragment;->showHideToolbar()Z
    invoke-static {v0}, Lcom/oneplus/gallery/FilmstripFragment;->access$2800(Lcom/oneplus/gallery/FilmstripFragment;)Z

    .line 482
    return-void
.end method
