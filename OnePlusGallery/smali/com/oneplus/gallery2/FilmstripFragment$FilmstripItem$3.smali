.class Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$3;
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
    .line 509
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$3;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    iput-object p2, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$3;->val$this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$3;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->onPlayButtonClick()V
    invoke-static {v0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->access$3200(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V

    .line 514
    return-void
.end method
