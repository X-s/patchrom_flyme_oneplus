.class Lcom/oneplus/gallery/OPGalleryActivity$13;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


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
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/OPGalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGalleryActivity;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/oneplus/gallery/OPGalleryActivity$13;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
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
    .line 280
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$13;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;
    invoke-static {v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$200(Lcom/oneplus/gallery/OPGalleryActivity;)Lcom/oneplus/gallery/GridViewFragment;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 281
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity$13;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/oneplus/gallery/OPGalleryActivity;->onDefaultGridViewSelectionStateChanged(Z)V
    invoke-static {v1, v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$1300(Lcom/oneplus/gallery/OPGalleryActivity;Z)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$13;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;
    invoke-static {v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$1400(Lcom/oneplus/gallery/OPGalleryActivity;)Lcom/oneplus/gallery/MediaSetListFragment;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 283
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity$13;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/oneplus/gallery/OPGalleryActivity;->onMediaSetListSelectionStateChanged(Z)V
    invoke-static {v1, v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$1500(Lcom/oneplus/gallery/OPGalleryActivity;Z)V

    goto :goto_0
.end method
