.class Lcom/oneplus/gallery/BurstViewer$9;
.super Ljava/lang/Object;
.source "BurstViewer.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/BurstViewer;
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
.field final synthetic this$0:Lcom/oneplus/gallery/BurstViewer;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/BurstViewer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/BurstViewer;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/oneplus/gallery/BurstViewer$9;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p2, "key"    # Lcom/oneplus/base/EventKey;
    .param p3, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 232
    check-cast p3, Lcom/oneplus/gallery2/ListChangeEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery/BurstViewer$9;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery2/ListChangeEventArgs;)V

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
    .line 234
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/gallery2/ListChangeEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$9;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-static {v0, p3}, Lcom/oneplus/gallery/BurstViewer;->-wrap18(Lcom/oneplus/gallery/BurstViewer;Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    .line 232
    return-void
.end method
