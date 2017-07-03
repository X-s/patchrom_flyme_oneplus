.class Lcom/oneplus/gallery/editor/BaseEditorMode$3;
.super Ljava/lang/Object;
.source "BaseEditorMode.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/editor/BaseEditorMode;
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
        "Lcom/oneplus/gallery/media/PhotoMedia;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/editor/BaseEditorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/editor/BaseEditorMode;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/oneplus/gallery/editor/BaseEditorMode$3;->this$0:Lcom/oneplus/gallery/editor/BaseEditorMode;

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
            "Lcom/oneplus/gallery/media/PhotoMedia;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/gallery/media/PhotoMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/gallery/media/PhotoMedia;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/gallery/media/PhotoMedia;>;"
    iget-object v1, p0, Lcom/oneplus/gallery/editor/BaseEditorMode$3;->this$0:Lcom/oneplus/gallery/editor/BaseEditorMode;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/PhotoMedia;

    # invokes: Lcom/oneplus/gallery/editor/BaseEditorMode;->handleMediaChanged(Lcom/oneplus/gallery/media/PhotoMedia;)V
    invoke-static {v1, v0}, Lcom/oneplus/gallery/editor/BaseEditorMode;->access$000(Lcom/oneplus/gallery/editor/BaseEditorMode;Lcom/oneplus/gallery/media/PhotoMedia;)V

    .line 66
    return-void
.end method
