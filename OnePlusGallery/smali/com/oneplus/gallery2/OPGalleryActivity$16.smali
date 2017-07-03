.class Lcom/oneplus/gallery2/OPGalleryActivity$16;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


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
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/OPGalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity$16;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

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
    .line 323
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$16;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;
    invoke-static {v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$400(Lcom/oneplus/gallery2/OPGalleryActivity;)Lcom/oneplus/gallery2/GridViewFragment;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 324
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity$16;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/oneplus/gallery2/OPGalleryActivity;->onDefaultGridViewSelectionStateChanged(Z)V
    invoke-static {v1, v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$1600(Lcom/oneplus/gallery2/OPGalleryActivity;Z)V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$16;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;
    invoke-static {v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$1700(Lcom/oneplus/gallery2/OPGalleryActivity;)Lcom/oneplus/gallery2/MediaSetListFragment;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 326
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity$16;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/oneplus/gallery2/OPGalleryActivity;->onMediaSetListSelectionStateChanged(Z)V
    invoke-static {v1, v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$1800(Lcom/oneplus/gallery2/OPGalleryActivity;Z)V

    goto :goto_0
.end method
