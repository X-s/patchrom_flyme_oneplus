.class Lcom/oneplus/gallery/FilmstripFragment$18$1;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"

# interfaces
.implements Lcom/oneplus/base/OperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/FilmstripFragment$18;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/FilmstripFragment$18;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/FilmstripFragment$18;)V
    .locals 0

    .prologue
    .line 1830
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment$18$1;->this$1:Lcom/oneplus/gallery/FilmstripFragment$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1833
    return-void
.end method

.method public onCompleted(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$18$1;->this$1:Lcom/oneplus/gallery/FilmstripFragment$18;

    iget-object v0, v0, Lcom/oneplus/gallery/FilmstripFragment$18;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery/FilmstripFragment;->updateCollectButtonSelection()V
    invoke-static {v0}, Lcom/oneplus/gallery/FilmstripFragment;->access$4300(Lcom/oneplus/gallery/FilmstripFragment;)V

    .line 1840
    return-void
.end method

.method public onStarted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1843
    return-void
.end method
