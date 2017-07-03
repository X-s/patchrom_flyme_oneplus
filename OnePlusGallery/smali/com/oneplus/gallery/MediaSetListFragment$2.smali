.class Lcom/oneplus/gallery/MediaSetListFragment$2;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/MediaSetListFragment;
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
.field final synthetic this$0:Lcom/oneplus/gallery/MediaSetListFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaSetListFragment;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetListFragment$2;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

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
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Integer;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$2;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    check-cast p1, Lcom/oneplus/gallery/media/MediaSet;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->onMediaCountChanged(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    invoke-static {v0, p1, p3}, Lcom/oneplus/gallery/MediaSetListFragment;->access$200(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    .line 159
    return-void
.end method
