.class Lcom/oneplus/gallery2/media/MultiSourcesMediaSet$5;
.super Ljava/lang/Object;
.source "MultiSourcesMediaSet.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;-><init>(Ljava/util/Collection;Lcom/oneplus/gallery2/media/MediaType;)V
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
        "Lcom/oneplus/base/component/ComponentEventArgs",
        "<",
        "Lcom/oneplus/base/component/Component;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet$5;->this$0:Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lcom/oneplus/base/EventKey;

    check-cast p3, Lcom/oneplus/base/component/ComponentEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet$5;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/component/ComponentEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/component/ComponentEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/component/ComponentEventArgs",
            "<",
            "Lcom/oneplus/base/component/Component;",
            ">;>;",
            "Lcom/oneplus/base/component/ComponentEventArgs",
            "<",
            "Lcom/oneplus/base/component/Component;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p3}, Lcom/oneplus/base/component/ComponentEventArgs;->getComponent()Lcom/oneplus/base/component/Component;

    move-result-object v0

    instance-of v0, v0, Lcom/oneplus/gallery2/media/MediaSource;

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet$5;->this$0:Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;

    invoke-virtual {p3}, Lcom/oneplus/base/component/ComponentEventArgs;->getComponent()Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSource;

    invoke-virtual {v1, v0}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->onMediaSourceRemoved(Lcom/oneplus/gallery2/media/MediaSource;)V

    goto :goto_0
.end method
