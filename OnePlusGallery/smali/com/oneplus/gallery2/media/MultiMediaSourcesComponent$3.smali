.class Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent$3;
.super Ljava/lang/Object;
.source "MultiMediaSourcesComponent.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent$3;->this$0:Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;

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
    .line 126
    check-cast p3, Lcom/oneplus/base/component/ComponentEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent$3;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/component/ComponentEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/component/ComponentEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
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
    .line 130
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/base/component/ComponentEventArgs<Lcom/oneplus/base/component/Component;>;>;"
    .local p3, "e":Lcom/oneplus/base/component/ComponentEventArgs;, "Lcom/oneplus/base/component/ComponentEventArgs<Lcom/oneplus/base/component/Component;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/component/ComponentEventArgs;->getComponent()Lcom/oneplus/base/component/Component;

    move-result-object v0

    instance-of v0, v0, Lcom/oneplus/gallery2/media/MediaSource;

    if-eqz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent$3;->this$0:Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;

    invoke-virtual {p3}, Lcom/oneplus/base/component/ComponentEventArgs;->getComponent()Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSource;

    invoke-virtual {v1, v0}, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->onMediaSourceReady(Lcom/oneplus/gallery2/media/MediaSource;)V

    .line 132
    :cond_0
    return-void
.end method
