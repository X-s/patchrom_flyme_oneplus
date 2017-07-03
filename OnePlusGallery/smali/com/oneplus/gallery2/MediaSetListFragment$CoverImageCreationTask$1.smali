.class Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$1;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;
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
        "Lcom/oneplus/gallery2/ListChangeEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$1;->this$1:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

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
    .line 360
    check-cast p3, Lcom/oneplus/gallery2/ListChangeEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$1;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 364
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/gallery2/ListChangeEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$1;->this$1:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->onMediaListChanged()Z
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->access$1200(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;)Z

    .line 365
    return-void
.end method
