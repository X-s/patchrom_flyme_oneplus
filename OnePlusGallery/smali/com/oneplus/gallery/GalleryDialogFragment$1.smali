.class Lcom/oneplus/gallery/GalleryDialogFragment$1;
.super Ljava/lang/Object;
.source "GalleryDialogFragment.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/GalleryDialogFragment;
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
.field final synthetic this$0:Lcom/oneplus/gallery/GalleryDialogFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/GalleryDialogFragment;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/oneplus/gallery/GalleryDialogFragment$1;->this$0:Lcom/oneplus/gallery/GalleryDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
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
    .line 44
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryDialogFragment$1;->this$0:Lcom/oneplus/gallery/GalleryDialogFragment;

    # getter for: Lcom/oneplus/gallery/GalleryDialogFragment;->m_DialogShowLater:Z
    invoke-static {v0}, Lcom/oneplus/gallery/GalleryDialogFragment;->access$000(Lcom/oneplus/gallery/GalleryDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryDialogFragment$1;->this$0:Lcom/oneplus/gallery/GalleryDialogFragment;

    iget-object v1, p0, Lcom/oneplus/gallery/GalleryDialogFragment$1;->this$0:Lcom/oneplus/gallery/GalleryDialogFragment;

    # getter for: Lcom/oneplus/gallery/GalleryDialogFragment;->m_BaseActivity:Lcom/oneplus/base/BaseActivity;
    invoke-static {v1}, Lcom/oneplus/gallery/GalleryDialogFragment;->access$100(Lcom/oneplus/gallery/GalleryDialogFragment;)Lcom/oneplus/base/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/GalleryDialogFragment$1;->this$0:Lcom/oneplus/gallery/GalleryDialogFragment;

    # getter for: Lcom/oneplus/gallery/GalleryDialogFragment;->m_FragmentTag:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/GalleryDialogFragment;->access$200(Lcom/oneplus/gallery/GalleryDialogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GalleryDialogFragment;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryDialogFragment$1;->this$0:Lcom/oneplus/gallery/GalleryDialogFragment;

    # getter for: Lcom/oneplus/gallery/GalleryDialogFragment;->m_BaseActivity:Lcom/oneplus/base/BaseActivity;
    invoke-static {v0}, Lcom/oneplus/gallery/GalleryDialogFragment;->access$100(Lcom/oneplus/gallery/GalleryDialogFragment;)Lcom/oneplus/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/oneplus/base/BaseActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 49
    return-void
.end method
