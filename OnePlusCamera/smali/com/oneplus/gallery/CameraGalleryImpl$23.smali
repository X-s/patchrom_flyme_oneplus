.class Lcom/oneplus/gallery/CameraGalleryImpl$23;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 3545
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3548
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3550
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap17(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 3551
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get26(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3552
    return-void

    .line 3553
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get26(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get25(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/EventHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3554
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get26(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get28(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/EventHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3555
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get26(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get29(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/EventHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3556
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get26(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_MOVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get27(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/EventHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3557
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get41(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3558
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    new-instance v2, Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get26(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    instance-of v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get26(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;->getWrappedMediaList()Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    :goto_0
    invoke-direct {v2, v3, v0}, Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/MediaList;)V

    invoke-static {v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-set7(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/MediaList;)Lcom/oneplus/gallery2/media/MediaList;

    .line 3559
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get26(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get25(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/EventHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3560
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get26(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get28(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/EventHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3561
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get26(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get29(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/EventHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3562
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get26(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_MOVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get27(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/EventHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3563
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get3(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/widget/FilmstripView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 3547
    :cond_1
    return-void

    .line 3558
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$23;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get26(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    goto :goto_0
.end method
