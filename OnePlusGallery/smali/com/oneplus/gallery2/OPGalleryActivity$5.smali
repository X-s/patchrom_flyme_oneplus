.class Lcom/oneplus/gallery2/OPGalleryActivity$5;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/OPGalleryActivity;
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
        "Lcom/oneplus/gallery2/ListItemEventArgs",
        "<",
        "Lcom/oneplus/gallery2/media/Media;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/OPGalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity$5;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

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
    .line 228
    check-cast p3, Lcom/oneplus/gallery2/ListItemEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery2/OPGalleryActivity$5;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery2/ListItemEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery2/ListItemEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/ListItemEventArgs",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;>;",
            "Lcom/oneplus/gallery2/ListItemEventArgs",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/gallery2/ListItemEventArgs<Lcom/oneplus/gallery2/media/Media;>;>;"
    .local p3, "e":Lcom/oneplus/gallery2/ListItemEventArgs;, "Lcom/oneplus/gallery2/ListItemEventArgs<Lcom/oneplus/gallery2/media/Media;>;"
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity$5;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$5;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;
    invoke-static {v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$400(Lcom/oneplus/gallery2/OPGalleryActivity;)Lcom/oneplus/gallery2/GridViewFragment;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/oneplus/gallery2/OPGalleryActivity;->onMediaClickedInGridView(Lcom/oneplus/gallery2/ListItemEventArgs;Z)V
    invoke-static {v1, p3, v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$500(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/ListItemEventArgs;Z)V

    .line 233
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
