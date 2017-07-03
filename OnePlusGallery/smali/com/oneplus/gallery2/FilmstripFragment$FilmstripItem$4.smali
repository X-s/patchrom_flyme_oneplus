.class Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$4;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/media/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

.field final synthetic val$this$0:Lcom/oneplus/gallery2/FilmstripFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Lcom/oneplus/gallery2/FilmstripFragment;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$4;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    iput-object p2, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$4;->val$this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$4;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    iget-object v0, v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->showHideToolbar()Z
    invoke-static {v0}, Lcom/oneplus/gallery2/FilmstripFragment;->access$3300(Lcom/oneplus/gallery2/FilmstripFragment;)Z

    .line 526
    return-void
.end method
