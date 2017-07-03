.class Lcom/oneplus/gallery/editor/CropEditorMode$4;
.super Ljava/lang/Object;
.source "CropEditorMode.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/editor/CropEditorMode;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V
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
.field final synthetic this$0:Lcom/oneplus/gallery/editor/CropEditorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/editor/CropEditorMode;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oneplus/gallery/editor/CropEditorMode$4;->this$0:Lcom/oneplus/gallery/editor/CropEditorMode;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode$4;->this$0:Lcom/oneplus/gallery/editor/CropEditorMode;

    # invokes: Lcom/oneplus/gallery/editor/CropEditorMode;->onPaddingAnimationStart()V
    invoke-static {v0}, Lcom/oneplus/gallery/editor/CropEditorMode;->access$300(Lcom/oneplus/gallery/editor/CropEditorMode;)V

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode$4;->this$0:Lcom/oneplus/gallery/editor/CropEditorMode;

    # invokes: Lcom/oneplus/gallery/editor/CropEditorMode;->onPaddingAnimationEnd()V
    invoke-static {v0}, Lcom/oneplus/gallery/editor/CropEditorMode;->access$400(Lcom/oneplus/gallery/editor/CropEditorMode;)V

    goto :goto_0
.end method
