.class Lcom/oneplus/gallery/Gallery$2;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/Gallery;
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
.field final synthetic this$0:Lcom/oneplus/gallery/Gallery;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/Gallery;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/oneplus/gallery/Gallery$2;->this$0:Lcom/oneplus/gallery/Gallery;

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
    .line 212
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery$2;->this$0:Lcom/oneplus/gallery/Gallery;

    iget-object v1, p0, Lcom/oneplus/gallery/Gallery$2;->this$0:Lcom/oneplus/gallery/Gallery;

    # getter for: Lcom/oneplus/gallery/Gallery;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;
    invoke-static {v1}, Lcom/oneplus/gallery/Gallery;->access$000(Lcom/oneplus/gallery/Gallery;)Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v1

    # invokes: Lcom/oneplus/gallery/Gallery;->checkSystemNavigationBarState(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery/Gallery;->access$200(Lcom/oneplus/gallery/Gallery;Landroid/app/Activity;)V

    .line 215
    iget-object v0, p0, Lcom/oneplus/gallery/Gallery$2;->this$0:Lcom/oneplus/gallery/Gallery;

    # invokes: Lcom/oneplus/gallery/Gallery;->setSystemUiVisibility()V
    invoke-static {v0}, Lcom/oneplus/gallery/Gallery;->access$300(Lcom/oneplus/gallery/Gallery;)V

    .line 217
    :cond_0
    return-void
.end method
