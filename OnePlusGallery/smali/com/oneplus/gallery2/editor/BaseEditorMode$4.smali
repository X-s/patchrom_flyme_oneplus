.class Lcom/oneplus/gallery2/editor/BaseEditorMode$4;
.super Ljava/lang/Object;
.source "BaseEditorMode.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/editor/BaseEditorMode;
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
        "Lcom/oneplus/gallery2/media/PhotoMedia;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/BaseEditorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/BaseEditorMode;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/BaseEditorMode$4;->this$0:Lcom/oneplus/gallery2/editor/BaseEditorMode;

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
            "Lcom/oneplus/gallery2/media/PhotoMedia;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/gallery2/media/PhotoMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/gallery2/media/PhotoMedia;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/gallery2/media/PhotoMedia;>;"
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/BaseEditorMode$4;->this$0:Lcom/oneplus/gallery2/editor/BaseEditorMode;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/PhotoMedia;

    # invokes: Lcom/oneplus/gallery2/editor/BaseEditorMode;->handleMediaChanged(Lcom/oneplus/gallery2/media/PhotoMedia;)V
    invoke-static {v1, v0}, Lcom/oneplus/gallery2/editor/BaseEditorMode;->access$100(Lcom/oneplus/gallery2/editor/BaseEditorMode;Lcom/oneplus/gallery2/media/PhotoMedia;)V

    .line 76
    return-void
.end method
