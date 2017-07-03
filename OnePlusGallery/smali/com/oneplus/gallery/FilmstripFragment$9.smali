.class Lcom/oneplus/gallery/FilmstripFragment$9;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/FilmstripFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/gallery/ListChangeEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/FilmstripFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/FilmstripFragment;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment$9;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/EventSource;
    .param p2, "x1"    # Lcom/oneplus/base/EventKey;
    .param p3, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 284
    check-cast p3, Lcom/oneplus/gallery/ListChangeEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery/FilmstripFragment$9;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery/ListChangeEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/gallery/ListChangeEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ">;",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 288
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/gallery/ListChangeEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$9;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-virtual {p3}, Lcom/oneplus/gallery/ListChangeEventArgs;->getStartIndex()I

    move-result v1

    invoke-virtual {p3}, Lcom/oneplus/gallery/ListChangeEventArgs;->getEndIndex()I

    move-result v2

    const/4 v3, 0x2

    # invokes: Lcom/oneplus/gallery/FilmstripFragment;->onMediaListUpdated(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/gallery/FilmstripFragment;->access$1100(Lcom/oneplus/gallery/FilmstripFragment;III)V

    .line 289
    return-void
.end method
