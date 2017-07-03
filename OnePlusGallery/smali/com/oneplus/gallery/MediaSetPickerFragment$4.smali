.class Lcom/oneplus/gallery/MediaSetPickerFragment$4;
.super Ljava/lang/Object;
.source "MediaSetPickerFragment.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/MediaSetPickerFragment;
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
        "Lcom/oneplus/gallery/ListMoveEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaSetPickerFragment;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$4;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

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
    .line 104
    check-cast p3, Lcom/oneplus/gallery/ListMoveEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery/MediaSetPickerFragment$4;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery/ListMoveEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery/ListMoveEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/gallery/ListMoveEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery/ListMoveEventArgs;",
            ">;",
            "Lcom/oneplus/gallery/ListMoveEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/gallery/ListMoveEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$4;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    # invokes: Lcom/oneplus/gallery/MediaSetPickerFragment;->onMediaSetMoved()V
    invoke-static {v0}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$300(Lcom/oneplus/gallery/MediaSetPickerFragment;)V

    .line 109
    return-void
.end method
