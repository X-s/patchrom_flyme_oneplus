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
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/FilteredMediaList$2;->this$0:Lcom/oneplus/gallery2/media/FilteredMediaList;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lcom/oneplus/base/EventKey;

    check-cast p3, Lcom/oneplus/gallery2/ListMoveEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/FilteredMediaList$2;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery2/ListMoveEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery2/ListMoveEventArgs;)V
    .locals 1
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
    iget-object v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList$2;->this$0:Lcom/oneplus/gallery2/media/FilteredMediaList;

    invoke-static {v0, p3}, Lcom/oneplus/gallery2/media/FilteredMediaList;->access$1(Lcom/oneplus/gallery2/media/FilteredMediaList;Lcom/oneplus/gallery2/ListMoveEventArgs;)V

    .line 34
    return-void
.end method
