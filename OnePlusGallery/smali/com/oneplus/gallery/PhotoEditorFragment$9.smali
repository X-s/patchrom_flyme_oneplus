.class Lcom/oneplus/gallery/PhotoEditorFragment$9;
.super Ljava/lang/Object;
.source "PhotoEditorFragment.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/PhotoEditorFragment;-><init>()V
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
        "Lcom/oneplus/gallery/editor/MediaEditor$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/PhotoEditorFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/oneplus/gallery/PhotoEditorFragment$9;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

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
            "Lcom/oneplus/gallery/editor/MediaEditor$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/gallery/editor/MediaEditor$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/gallery/editor/MediaEditor$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/gallery/editor/MediaEditor$State;>;"
    iget-object v2, p0, Lcom/oneplus/gallery/PhotoEditorFragment$9;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/editor/MediaEditor$State;

    # invokes: Lcom/oneplus/gallery/PhotoEditorFragment;->onEditorStateChanged(Lcom/oneplus/gallery/editor/MediaEditor$State;Lcom/oneplus/gallery/editor/MediaEditor$State;)V
    invoke-static {v2, v0, v1}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$900(Lcom/oneplus/gallery/PhotoEditorFragment;Lcom/oneplus/gallery/editor/MediaEditor$State;Lcom/oneplus/gallery/editor/MediaEditor$State;)V

    .line 376
    return-void
.end method
