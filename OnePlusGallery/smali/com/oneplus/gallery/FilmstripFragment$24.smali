.class Lcom/oneplus/gallery/FilmstripFragment$24;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/FilmstripFragment;->showPageDetails(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/FilmstripFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/FilmstripFragment;)V
    .locals 0

    .prologue
    .line 3144
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment$24;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 3148
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$24;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/gallery/FilmstripFragment;->m_MediaDetailsDialog:Lcom/oneplus/gallery/MediaDetailsDialog;
    invoke-static {v0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->access$5402(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/gallery/MediaDetailsDialog;)Lcom/oneplus/gallery/MediaDetailsDialog;

    .line 3149
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$24;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/FilmstripFragment;->access$5500(Lcom/oneplus/gallery/FilmstripFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDismiss()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3150
    return-void
.end method
