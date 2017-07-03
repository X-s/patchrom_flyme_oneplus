.class Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl$1;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;)V
    .locals 0

    .prologue
    .line 980
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl$1;->this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 984
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Long;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl$1;->this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;

    check-cast p1, Lcom/oneplus/gallery/media/MediaSet;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->onDateMediaAdded(Lcom/oneplus/gallery/media/MediaSet;)V
    invoke-static {v0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->access$2200(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;Lcom/oneplus/gallery/media/MediaSet;)V

    .line 985
    return-void
.end method
