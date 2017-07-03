.class Lcom/oneplus/gallery/MediaSetPickerFragment$1;
.super Ljava/lang/Object;
.source "MediaSetPickerFragment.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/MediaSetPickerFragment;
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
.field final synthetic this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaSetPickerFragment;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$1;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

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
    .line 84
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Integer;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$1;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    check-cast p1, Lcom/oneplus/gallery/media/MediaSet;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    # invokes: Lcom/oneplus/gallery/MediaSetPickerFragment;->onMediaCountChanged(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    invoke-static {v0, p1, p3}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$000(Lcom/oneplus/gallery/MediaSetPickerFragment;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    .line 85
    return-void
.end method
