.class Lcom/oneplus/gallery2/media/FilteredMediaList$2;
.super Ljava/lang/Object;
.source "FilteredMediaList.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/FilteredMediaList;
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
        "Lcom/oneplus/gallery2/ListMoveEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/FilteredMediaList;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/FilteredMediaList;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/oneplus/gallery2/media/FilteredMediaList$2;->this$0:Lcom/oneplus/gallery2/media/FilteredMediaList;

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
    .line 29
    check-cast p3, Lcom/oneplus/gallery2/ListMoveEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/FilteredMediaList$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery2/ListMoveEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery2/ListMoveEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/gallery2/ListMoveEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/ListMoveEventArgs;",
            ">;",
            "Lcom/oneplus/gallery2/ListMoveEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/gallery2/ListMoveEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList$2;->this$0:Lcom/oneplus/gallery2/media/FilteredMediaList;

    # invokes: Lcom/oneplus/gallery2/media/FilteredMediaList;->onMediaMoved(Lcom/oneplus/gallery2/ListMoveEventArgs;)V
    invoke-static {v0, p3}, Lcom/oneplus/gallery2/media/FilteredMediaList;->access$100(Lcom/oneplus/gallery2/media/FilteredMediaList;Lcom/oneplus/gallery2/ListMoveEventArgs;)V

    .line 34
    return-void
.end method
