.class Lcom/oneplus/gallery/OPGalleryActivity$10;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/OPGalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGalleryActivity;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/oneplus/gallery/OPGalleryActivity$10;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

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
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Integer;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity$10;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    # invokes: Lcom/oneplus/gallery/OPGalleryActivity;->onDefaultMediaSetMediaCountChanged(Ljava/lang/Integer;)V
    invoke-static {v1, v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$1000(Lcom/oneplus/gallery/OPGalleryActivity;Ljava/lang/Integer;)V

    .line 257
    return-void
.end method
