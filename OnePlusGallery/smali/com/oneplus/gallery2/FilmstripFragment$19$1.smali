.class Lcom/oneplus/gallery2/FilmstripFragment$19$1;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"

# interfaces
.implements Lcom/oneplus/base/OperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/FilmstripFragment$19;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/FilmstripFragment$19;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/FilmstripFragment$19;)V
    .locals 0

    .prologue
    .line 1980
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment$19$1;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1983
    return-void
.end method

.method public onCompleted(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$19$1;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$19;

    iget-object v0, v0, Lcom/oneplus/gallery2/FilmstripFragment$19;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->updateCollectButtonSelection()V
    invoke-static {v0}, Lcom/oneplus/gallery2/FilmstripFragment;->access$2000(Lcom/oneplus/gallery2/FilmstripFragment;)V

    .line 1990
    return-void
.end method

.method public onStarted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1993
    return-void
.end method
