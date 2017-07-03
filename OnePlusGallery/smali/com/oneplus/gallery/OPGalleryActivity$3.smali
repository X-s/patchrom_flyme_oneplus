.class Lcom/oneplus/gallery/OPGalleryActivity$3;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/OPGalleryActivity;
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
        "Lcom/oneplus/gallery/ListItemEventArgs",
        "<",
        "Lcom/oneplus/gallery/media/Media;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/OPGalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGalleryActivity;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/oneplus/gallery/OPGalleryActivity$3;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

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
    .line 193
    check-cast p3, Lcom/oneplus/gallery/ListItemEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery/OPGalleryActivity$3;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery/ListItemEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery/ListItemEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery/ListItemEventArgs",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;>;",
            "Lcom/oneplus/gallery/ListItemEventArgs",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/gallery/ListItemEventArgs<Lcom/oneplus/gallery/media/Media;>;>;"
    .local p3, "e":Lcom/oneplus/gallery/ListItemEventArgs;, "Lcom/oneplus/gallery/ListItemEventArgs<Lcom/oneplus/gallery/media/Media;>;"
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity$3;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$3;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;
    invoke-static {v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$200(Lcom/oneplus/gallery/OPGalleryActivity;)Lcom/oneplus/gallery/GridViewFragment;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/oneplus/gallery/OPGalleryActivity;->onMediaClickedInGridView(Lcom/oneplus/gallery/ListItemEventArgs;Z)V
    invoke-static {v1, p3, v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$300(Lcom/oneplus/gallery/OPGalleryActivity;Lcom/oneplus/gallery/ListItemEventArgs;Z)V

    .line 198
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
