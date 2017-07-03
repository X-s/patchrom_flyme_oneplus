.class Lcom/oneplus/gallery2/FilmstripFragment$25;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/FilmstripFragment;->showPageDetails(I)V
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
    .line 3345
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment$25;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 3349
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$25;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaDetailsDialog:Lcom/oneplus/gallery2/MediaDetailsDialog;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->access$6402(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/MediaDetailsDialog;)Lcom/oneplus/gallery2/MediaDetailsDialog;

    .line 3350
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$25;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery2/FilmstripFragment;->access$6500(Lcom/oneplus/gallery2/FilmstripFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDismiss()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3351
    return-void
.end method
